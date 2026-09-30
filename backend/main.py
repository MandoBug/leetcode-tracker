from contextlib import asynccontextmanager
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from backend.db import get_connection, ensure_schema
from backend.queue import get_cache, set_cache
from ml.recommender import get_recommendations
from ml.review import get_review_queue
from ml.goal import get_weekly_goal
from ml.topics import INTERVIEW_TOPICS

# lifespan runs the code before `yield` once when the server boots (and anything after it on shutdown).
# on boot we add any missing columns, see ensure_schema in db.py
@asynccontextmanager
async def lifespan(app):
    ensure_schema()
    yield

app = FastAPI(lifespan=lifespan) #this is our FastAPI app, which will handle the API requests from the frontend and interact with the database and queue

# this allows my React dashboard to talk to FastAPI
# without this the browser blocks requests from different origins
app.add_middleware(
    CORSMiddleware,
    allow_origins=[
        "http://localhost:5173",
        "https://leetcode-tracker-iota.vercel.app",
        "https://lcdashboard.live",
        "https://www.lcdashboard.live",
        
    ],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

@app.get("/") # this is just a test endpoint to make sure the API is running, it returns a simple message when we hit the root URL
def root():
    return {"message": "leetcode tracker API is running"} 

# this is the endpoint that the frontend will call to get the list of submissions, it queries the database 
# and returns the submissions as a list of dictionaries
@app.get("/submissions")
def get_submissions():
    #check the cache first
    cached = get_cache("submissions")
    if cached:
        print("cache hit")
        return cached #if we have cached data, we return it instead of hitting the database
    
    #here, we have a cache miss — query postgres now
    print("cache miss, querying database")
    conn = get_connection() #get a connection to the database
    cur = conn.cursor() #create a cursor to execute queries
    cur.execute("""
        SELECT id, title, difficulty, topics, submitted_at, status, language, title_slug
        FROM submissions
        ORDER BY submitted_at DESC
    """) #execute a query to get the submissions from the database, ordered by submission time
    rows = cur.fetchall() #fetch all the rows from the query result
    cur.close() #close the cursor
    conn.close() #close the database connection
    
    # format rows into a list of dicts, key is the column name, value is the value from the whole row
    submissions = [
        {
            "id": row[0],
            "title": row[1],
            "difficulty": row[2],
            "topics": row[3],
            # ISO format ("2026-03-26T21:19:40Z") instead of str() ("2026-03-26 21:19:40") — Safari can't parse the space version,
            # and the Z tells the browser it's UTC so it converts to my local time correctly
            "submitted_at": row[4].isoformat() + "Z",
            "status": row[5],
            "language": row[6],
            "title_slug": row[7] #so the dashboard can link each recent submission to its problem
        }
        for row in rows
    ]
    #now saving cache foor 6 minutes, the 6 minutes belongs in queue.py which is why we dont need to set anything here, we just call the set_cache function and it will handle the expiry time for us, and then when we call get_cache it will return None if the cache has expired, which will trigger a new database query and cache refresh.
    set_cache("submissions", submissions)
    return submissions #return the list of submissions as a JSON response to the frontend

@app.get("/topics")
def get_topics():
    #check the cache first again like before
    cached = get_cache("topics")
    if cached:
        print("cache hit")
        return cached #if we have cached data, we return it instead of hitting the database

    #cache miss, query database just like last time
    print("cache miss, querying database")
    conn = get_connection() #get a connection to the database
    cur = conn.cursor() #create a cursor to execute queries
    
    # unnest is a postgres function that takes an array and turns it into a set of rows, 
    # so we can group by the individual topics even though they are stored as an array in the database, 
    # this way we can get a count of how many submissions we have for each topic, 
    # and then we order by count desc to get the most popular topics first.
    # COUNT(DISTINCT title) counts unique problems, so re-solving Two Sum 5 times doesn't make Array look 5x stronger
    # (this is also why these numbers now line up with the "unique solved" stat instead of being bigger than it)
    cur.execute("""
        SELECT topic, COUNT(DISTINCT title) as count
        FROM submissions, unnest(topics) as topic
        GROUP BY topic
        ORDER BY count DESC
    """)
    rows = cur.fetchall() #fetch all the rows from the query result
    cur.close() #close the cursor
    conn.close() #close the database connection
    
    topics = [
        {
            "topic": row[0],
            "count": row[1],
            "interview": row[0] in INTERVIEW_TOPICS #lets the dashboard show just interview topics, same list the recommender uses
        }
        for row in rows 
    ]
    # interview topics I haven't touched yet have no rows, so add them with 0 so the dashboard can show the gaps
    touched = {t["topic"] for t in topics}
    topics += [{"topic": t, "count": 0, "interview": True} for t in INTERVIEW_TOPICS if t not in touched]
    set_cache("topics", topics) #cache the topics data for 6 minutes, just like we do with the submissions,
    return topics
#return the list of topics and their counts as a JSON response to the frontend, we don't need to cache this one 
# since it's just a simple query and it will be fast enough even without caching, but we could easily add caching 
# here if we wanted to by just calling set_cache like we do in the submissions endpoint.

@app.get("/recommendations")
def recommendations():
    #check cache first like before
    cached = get_cache("recommendations")
    if cached:
        print("cache hit")
        return cached #if we have cached data, we return it instead of hitting the database
    
    print("cache miss, generating recommendations")
    recs = get_recommendations() #if we have a cache miss, we call the get_recommendations function from our recommender module to generate the recommendations based on the data in the database
    
    set_cache("recommendations", recs, 660) #cache the recommendations for 6 minutes, since they are a bit more expensive to generate than just a simple query, we want to cache them to improve performance and reduce load on the database
    
    return recs #return the recommendations as a JSON response to the frontend

# the most overdue problems to re-solve, based on spaced repetition (see ml/review.py)
@app.get("/review")
def review_queue():
    cached = get_cache("review")
    if cached:
        return cached
    queue = get_review_queue()
    set_cache("review", queue)
    return queue

# this week's adaptive goal and progress (see ml/goal.py)
@app.get("/goal")
def weekly_goal():
    cached = get_cache("goal")
    if cached:
        return cached
    goal = get_weekly_goal()
    set_cache("goal", goal, 120) #short cache so a fresh solve shows up quickly
    return goal

@app.get("/recommendations/refresh")
def refresh_problem(topic: str, difficulty: str | None = None):
    # difficulty is optional: /recommendations/refresh?topic=Trie&difficulty=Easy
    conn = get_connection() #get a connection to the database
    cur = conn.cursor() #create a cursor to execute queries
    cur.execute("SELECT DISTINCT title FROM submissions") #execute a query to get the list of problems we've already submitted, so we can exclude them from the refresh recommendations
    solved_titles = [row[0] for row in cur.fetchall()]
    cur.close() #close the cursor
    conn.close() #close the database connection
    
    from ml.recommender import get_new_problem 
    new_problem = get_new_problem(topic, solved_titles, difficulty) #call get_new_problem from our recommender module to get a new problem for the given topic (and difficulty), we pass in the list
    # of solved titles so it can exclude those from the recommendations and give us a problem we haven't solved before
    return new_problem

@app.get("/activity")
def get_activity():
    cached = get_cache("activity") #we were already saving this to the cache below, just never reading it
    if cached:
        return cached

    conn = get_connection() #get a connection to the database
    cur = conn.cursor() #create a cursor to execute queries
    cur.execute("""
        SELECT DATE(submitted_at) as day, COUNT(*) as count
        FROM submissions
        GROUP BY day
        ORDER BY day ASC
    """) #execute a query to get the count of submissions per day, we group by the submission date and order by date asc so we can see the activity over time
    rows = cur.fetchall() #fetch all the rows from the query result
    cur.close() #close the cursor
    conn.close() #close the database connection
    
    data = [{"day": str(row[0]), "count": row[1]} for row in rows]
    set_cache("activity", data)
    return data #return the activity data as a JSON response to the frontend


# Big picture of this file:
# this is where we set up our FastAPI app and define the API endpoints that the frontend
# will call to get the data it needs, we have an endpoint to get the list of submissions and 
# an endpoint to get the list of topics and their counts, and we also have caching set up for 
# both endpoints to improve performance and reduce load on the database.
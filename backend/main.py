from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from backend.db import get_connection
from backend.queue import get_cache, set_cache
from ml.recommender import get_recommendations

app = FastAPI() #this is our FastAPI app, which will handle the API requests from the frontend and interact with the database and queue

# this allows my React dashboard to talk to FastAPI
# without this the browser blocks requests from different origins
app.add_middleware(
    CORSMiddleware,
    allow_origins=["http://localhost:5173"],
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
        SELECT id, title, difficulty, topics, submitted_at, status, language
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
            "submitted_at": str(row[4]), #convert the timestamp to a string so it's easier to work with in the frontend, we can convert it back to a date object in JS if we want to
            "status": row[5],
            "language": row[6]
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
    # and then we order by count desc to get the most popular topics first
    cur.execute("""
        SELECT unnest(topics) as topic, COUNT(*) as count
        FROM submissions
        GROUP BY topic
        ORDER BY count DESC
    """)
    rows = cur.fetchall() #fetch all the rows from the query result
    cur.close() #close the cursor
    conn.close() #close the database connection
    
    topics = [
        {
            "topic": row[0],
            "count": row[1]
        }
        for row in rows 
    ]
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

@app.get("/recommendations/refresh")
def refresh_problem(topic: str):
    conn = get_connection() #get a connection to the database
    cur = conn.cursor() #create a cursor to execute queries
    cur.execute("SELECT DISTINCT title FROM submissions") #execute a query to get the list of problems we've already submitted, so we can exclude them from the refresh recommendations
    solved_titles = [row[0] for row in cur.fetchall()]
    cur.close() #close the cursor
    conn.close() #close the database connection
    
    from ml.recommender import get_refresh_problem 
    new_problem = get_refresh_problem(topic, solved_titles) #call the get_refresh_problem function from our recommender module to get a new problem to refresh on for the given topic, we pass in the list
    # of solved titles so it can exclude those from the recommendations and give us a problem we haven't solved before to refresh on
    return new_problem




# Big picture of this file:
# this is where we set up our FastAPI app and define the API endpoints that the frontend
# will call to get the data it needs, we have an endpoint to get the list of submissions and 
# an endpoint to get the list of topics and their counts, and we also have caching set up for 
# both endpoints to improve performance and reduce load on the database.
import math
from datetime import datetime, timezone
from backend.db import get_connection

#first we need to pull the stats for each topic
def get_topic_stats():
    """pulls all the data we need from submissions to score each topic"""
    #establish a connection to the database & cursor to execute queries
    conn = get_connection()
    cur = conn.cursor()
    
    # get count, last seen, and difficulty breakdown per topic
    cur.execute(
        """
        SELECT 
            unnest(topics) as topic,
            COUNT(*) as count,
            MAX(submitted_at) as last_seen,
            SUM(CASE WHEN difficulty = 'Easy' THEN 1 ELSE 0 END) as easy_count,
            SUM(CASE WHEN difficulty = 'Medium' THEN 1 ELSE 0 END) as medium_count,
            SUM(CASE WHEN difficulty = 'Hard' THEN 1 ELSE 0 END) as hard_count
        FROM submissions
        GROUP BY topic
        ORDER BY count ASC
    """
    )
    #get all the data, and close the connection/cursor
    rows = cur.fetchall()
    cur.close()
    conn.close()
    
    # transform the data into a list of dicts for easier processing later, 
    # we have the topic name, count of submissions, last seen timestamp, 
    # and difficulty breakdown for each topic
    return [
        {
            "topic": row[0],
            "count": row[1],
            "last_seen": row[2],
            "easy_count": row[3],
            "medium_count": row[4],
            "hard_count": row[5]
        }
        for row in rows
    ]


# then we can calculate a weight for each topic based on those stats
def calculate_difficulty_weight(easy, medium, hard):
    """higher weight for problems in a topic that I've done that are easy, need to challenge myself more"""
    total = easy + medium + hard
    if total == 0:
        return 1.5
    easy_ratio = easy / total
    if easy_ratio > 0.7:
        return 1.5  # mostly easy, needs harder problems
    elif hard > 0:
        return 0.5  # already doing hard, lower priority
    else:
        return 1.0  # balanced

#now we need our recency weight, which gives higher weight to topics I haven't done in a while
def calculate_recency_weight(last_seen):
    """higher weight the longer its been since you touched a topic"""
    if last_seen is None:
        return 2.0  # never touched
    now = datetime.now(timezone.utc)
    if last_seen.tzinfo is None:
        last_seen = last_seen.replace(tzinfo=timezone.utc)
    days_since = (now - last_seen).days
    return math.log(days_since + 1) + 1 # logarithmic scaling to avoid huge weights for very old topics

#Here, we get a random unseen problem for a topic, we can optionally filter by difficulty as well
def get_refresh_problem(topic, exclude_titles, difficulty=None):
    """gets a random unseen problem for a topic"""
    conn = get_connection()
    cur = conn.cursor()
    
    if difficulty:
        cur.execute("""
            SELECT title, title_slug FROM problems
            WHERE %s = ANY(topics)
            AND difficulty = %s
            AND title NOT IN %s
            ORDER BY RANDOM()
            LIMIT 1
        """, (topic, difficulty, tuple(exclude_titles) if exclude_titles else ('',)))
    else:
        cur.execute("""
            SELECT title, title_slug FROM problems
            WHERE %s = ANY(topics)
            AND title NOT IN %s
            ORDER BY RANDOM()
            LIMIT 1
        """, (topic, tuple(exclude_titles) if exclude_titles else ('',)))
    
    row = cur.fetchone()
    cur.close()
    conn.close()
    return {"title": row[0], "slug": row[1]} if row else None

#Now we fetch oldest problems for a topic, which are the ones I should be refreshing on
def get_oldest_problem(topic):
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("""
        SELECT title, title_slug, submitted_at FROM submissions
        WHERE %s = ANY(topics)
        ORDER BY submitted_at ASC
        LIMIT 1
    """, (topic,))
    row = cur.fetchone()
    cur.close()
    conn.close()
    if row:
        days_ago = (datetime.now(timezone.utc) - row[2].replace(tzinfo=timezone.utc)).days
        return {"title": row[0], "slug": row[1], "days_ago": days_ago}
    return None

# finally we can put it all together in a function that gets the stats, calculates scores, 
# and returns tiered recommendations with problem suggestions
def get_recommendations():
    """main function — scores all topics and returns tiered recommendations"""
    stats = get_topic_stats()
    
    # get all titles I've already solved to exclude from suggestions
    conn = get_connection()
    cur = conn.cursor()
    cur.execute("SELECT DISTINCT title FROM submissions")
    solved_titles = [row[0] for row in cur.fetchall()]
    cur.close()
    conn.close()
    
    recommendations = []
    
    for stat in stats:
        topic = stat["topic"]
        count = stat["count"]
        last_seen = stat["last_seen"]
        
        # calculate priority score using our formula
        recency_weight = calculate_recency_weight(last_seen)
        difficulty_weight = calculate_difficulty_weight(
            stat["easy_count"], 
            stat["medium_count"], 
            stat["hard_count"]
        )
        #main formula: base it on how many times I've done it, but boost it if it's been a while or if I've mostly done easy problems
        priority_score = (1 / (count + 1)) * recency_weight * difficulty_weight
        
        # assign tier
        days_since = (datetime.now(timezone.utc) - last_seen.replace(tzinfo=timezone.utc)).days if last_seen else 999
        if days_since > 7:
            tier = "Been a while"
        elif count <= 2:
            tier = "Keep practicing"
        else:
            tier = "Developing"
        
        # get problem suggestions
        new_problem = get_refresh_problem(topic, solved_titles)
        oldest_problem = get_oldest_problem(topic)
        
        recommendations.append({
            "topic": topic,
            "count": count,
            "priority_score": round(priority_score, 4),
            "tier": tier,
            "days_since_last": days_since,
            "new_problem": new_problem,
            "refresh_problem": oldest_problem
        })
    
    # sort by priority score highest first
    recommendations.sort(key=lambda x: x["priority_score"], reverse=True)
    return recommendations[:10]  # top 10 recommendations

#main function to run if we execute this file directly, it will print out the recommendations in a readable format
if __name__ == "__main__":
    recs = get_recommendations()
    for r in recs:
        print(f"\n{r['topic']} | score: {r['priority_score']} | {r['tier']}")
        print(f"  done {r['count']} times | last: {r['days_since_last']} days ago")
        if r['refresh_problem']:
            print(f"  refresh: {r['refresh_problem']['title']} ({r['refresh_problem']['days_ago']} days ago)")
        if r['new_problem']:
            print(f"  try next: {r['new_problem']['title']}")

# Big picture of this file:
# this is where we generate the recommendations for which topics to focus on, we pull all the
# stats we need from the database, calculate a priority score for each topic based on how many times I've done it,
# how long it's been since I last did it, and the difficulty breakdown of the problems I've done in that topic,
# then we assign a tier based on how long it's been since I last did it and how
# many times I've done it, and we also get a new problem suggestion and an old problem suggestion for each topic,
# and finally we sort the topics by priority score and return the top 10 recommendations.
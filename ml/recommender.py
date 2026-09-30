import math
from datetime import datetime, timezone
from backend.db import get_connection
from ml.topics import INTERVIEW_TOPICS
from ml.review import get_review_items, pick_refresh

#first we need to pull the stats for each topic
def get_topic_stats():
    """pulls all the data we need from submissions to score each interview topic"""
    #establish a connection to the database & cursor to execute queries
    conn = get_connection()
    cur = conn.cursor()
    
    # get count, last seen, and difficulty breakdown per topic
    # - only for interview topics: `topic = ANY(%s)` checks if the tag is in our list (psycopg2 turns the python list into a postgres array)
    # - COUNT(DISTINCT title) so solving the same problem 3 times counts as 1 problem, not 3
    # - FILTER (WHERE ...) is postgres shorthand for "only count rows matching this", same idea as the old SUM(CASE ...)
    cur.execute(
        """
        SELECT 
            topic,
            COUNT(DISTINCT title) as count,
            MAX(submitted_at) as last_seen,
            COUNT(DISTINCT title) FILTER (WHERE difficulty = 'Easy') as easy_count,
            COUNT(DISTINCT title) FILTER (WHERE difficulty = 'Medium') as medium_count,
            COUNT(DISTINCT title) FILTER (WHERE difficulty = 'Hard') as hard_count
        FROM submissions, unnest(topics) as topic
        WHERE topic = ANY(%s)
        GROUP BY topic
    """, (INTERVIEW_TOPICS,)
    )
    #get all the data, and close the connection/cursor
    rows = cur.fetchall()
    cur.close()
    conn.close()
    
    # transform the data into a dict keyed by topic name for easier processing later, 
    # we have the topic name, count of problems, last seen timestamp, 
    # and difficulty breakdown for each topic
    stats = {
        row[0]: {
            "topic": row[0],
            "count": row[1],
            "last_seen": row[2],
            "easy_count": row[3],
            "medium_count": row[4],
            "hard_count": row[5]
        }
        for row in rows
    }
    
    # interview topics I've never touched don't show up in the query at all (there are no rows to group),
    # so we add them with zeros. These are exactly the gaps the recommender should surface
    for topic in INTERVIEW_TOPICS:
        if topic not in stats:
            stats[topic] = {
                "topic": topic,
                "count": 0,
                "last_seen": None,
                "easy_count": 0,
                "medium_count": 0,
                "hard_count": 0
            }
    return list(stats.values())


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
        # never touched: treat it like it's been a full year, the most stale a topic can reasonably be
        # (this used to be 2.0, which was actually LOWER than a topic I did a week ago: log(8) + 1 ≈ 3.1)
        return math.log(365 + 1) + 1
    now = datetime.now(timezone.utc)
    if last_seen.tzinfo is None:
        last_seen = last_seen.replace(tzinfo=timezone.utc)
    days_since = (now - last_seen).days
    return math.log(days_since + 1) + 1 # logarithmic scaling to avoid huge weights for very old topics

# the difficulties we suggest for every topic. Easy for days when my brain is fried, Medium for real interview practice
SUGGESTION_DIFFICULTIES = ["Easy", "Medium"]

#Here, we get a random unseen problem for a topic, optionally for one difficulty
def get_new_problem(topic, exclude_titles, difficulty=None):
    """gets a random unseen, non-premium problem for a topic"""
    conn = get_connection()
    cur = conn.cursor()
    # NOT (title = ANY(%s)) means "title isn't in this list". it works with an empty list too,
    # which the old `NOT IN %s` version needed a ('',) placeholder for
    # (%s IS NULL OR difficulty = %s) lets one query handle both "any difficulty" and "only this difficulty"
    cur.execute("""
        SELECT title, title_slug, difficulty FROM problems
        WHERE %s = ANY(topics)
        AND NOT paid_only
        AND NOT (title = ANY(%s))
        AND (%s IS NULL OR difficulty = %s)
        ORDER BY RANDOM()
        LIMIT 1
    """, (topic, list(exclude_titles), difficulty, difficulty))
    row = cur.fetchone()
    cur.close()
    conn.close()
    return {"title": row[0], "slug": row[1], "difficulty": row[2]} if row else None

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
        days_since = (datetime.now(timezone.utc) - last_seen.replace(tzinfo=timezone.utc)).days if last_seen else None
        if count == 0:
            tier = "Not started"
        elif days_since > 7:
            tier = "Been a while"
        elif count <= 2:
            tier = "Keep practicing"
        else:
            tier = "Developing"
        
        recommendations.append({
            "topic": topic,
            "count": count,
            "priority_score": round(priority_score, 4),
            "tier": tier,
            "days_since_last": days_since,
        })
    
    # sort by priority score highest first, and keep the top 10
    recommendations.sort(key=lambda x: x["priority_score"], reverse=True)
    recommendations = recommendations[:10]
    
    # get problem suggestions, only for the top 10 now.
    # before, we fetched problems for EVERY topic and then threw most of them away,
    # which was 2 database connections per topic (100+ for 50 topics) on every cache miss
    # spaced repetition state for every solved problem, fetched once and shared by all 10 topics (see ml/review.py)
    review_items = get_review_items()
    for rec in recommendations:
        # the most overdue problem in this topic, instead of just the oldest one
        rec["refresh_problem"] = pick_refresh(review_items, rec["topic"])
        # one pick per difficulty, e.g. {"Easy": {...}, "Medium": {...}}
        rec["new_problems"] = {
            d: get_new_problem(rec["topic"], solved_titles, d) for d in SUGGESTION_DIFFICULTIES
        }
    
    return recommendations

#main function to run if we execute this file directly, it will print out the recommendations in a readable format
if __name__ == "__main__":
    recs = get_recommendations()
    for r in recs:
        print(f"\n{r['topic']} | score: {r['priority_score']} | {r['tier']}")
        print(f"  solved {r['count']} problems | last: {r['days_since_last']} days ago")
        if r['refresh_problem']:
            rp = r['refresh_problem']
            print(f"  refresh: {rp['title']} (solved {rp['days_ago']} days ago, review every {rp['interval']}d)")
        for d, p in r['new_problems'].items():
            if p:
                print(f"  try ({d}): {p['title']}")

# Big picture of this file:
# this is where we generate the recommendations for which topics to focus on, we only look at
# interview topics (ml/topics.py) so niche tags like Randomized or Game Theory never show up, we pull all the
# stats we need from the database, calculate a priority score for each topic based on how many times I've done it,
# how long it's been since I last did it, and the difficulty breakdown of the problems I've done in that topic,
# then we assign a tier based on how long it's been since I last did it and how
# many times I've done it, then we sort the topics by priority score and keep the top 10,
# and finally we get an Easy and a Medium problem to try (never premium) and the most overdue problem to review
# (spaced repetition, see ml/review.py) for each of those 10.
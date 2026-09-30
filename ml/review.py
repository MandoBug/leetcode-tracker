from datetime import datetime, timezone
from backend.db import get_connection
from ml.topics import INTERVIEW_TOPICS

# spaced repetition: re-solve a problem 1 day after first solving it, then 7 days after that, then 30, then 90.
# each time I re-solve on schedule the gap gets longer, because the memory is sticking.
# after the last step it stays at 90 days so nothing is ever "done forever".
#
# example: I solve Two Sum on Jan 1 (1 solve day)       -> due Jan 2   (1 day later)
#          re-solve it on Jan 3   (2 solve days)          -> due Jan 10  (7 days later)
#          re-solve it on Jan 12  (3 solve days)          -> due Feb 11  (30 days later)
#          re-solve it on Feb 11  (4+ solve days)         -> due May 12  (90 days later)
INTERVALS = [1, 7, 30, 90]


def interval_for(solve_days):
    """how many days to wait before reviewing, based on how many different days I've solved it"""
    return INTERVALS[min(solve_days, len(INTERVALS)) - 1]


def get_review_items():
    """every problem I've solved, with its spaced repetition state, most urgent first"""
    conn = get_connection()
    cur = conn.cursor()
    # one row per problem:
    # - solve_days: on how many DIFFERENT days I solved it (3 submissions in one sitting = 1 review, not 3)
    # - last_solved: most recent solve
    # - topics: taken from any submission of it (they're the same for every submission of a problem)
    cur.execute("""
        SELECT title, title_slug, MAX(difficulty), MAX(topics),
               COUNT(DISTINCT DATE(submitted_at)) AS solve_days,
               MAX(submitted_at) AS last_solved
        FROM submissions
        GROUP BY title, title_slug
    """)
    rows = cur.fetchall()
    cur.close()
    conn.close()

    now = datetime.now(timezone.utc)
    items = []
    for title, slug, difficulty, topics, solve_days, last_solved in rows:
        days_ago = (now - last_solved.replace(tzinfo=timezone.utc)).days
        interval = interval_for(solve_days)
        items.append({
            "title": title,
            "slug": slug,
            "difficulty": difficulty,
            "topics": topics or [],
            "solve_days": solve_days,
            "days_ago": days_ago,
            "interval": interval,
            "overdue_days": days_ago - interval,  # negative = not due yet
            "due": days_ago >= interval,
            # urgency = how many intervals have passed. 2.0 means "twice as late as it should be".
            # dividing by the interval means a 90-day problem that's 10 days late is less urgent
            # than a 1-day problem that's 10 days late, which is how memory actually fades
            "urgency": round(days_ago / interval, 2),
        })
    items.sort(key=lambda x: x["urgency"], reverse=True)
    return items


def pick_refresh(items, topic):
    """the most urgent problem to review in one topic (items are already sorted by urgency)"""
    for item in items:
        if topic in item["topics"]:
            return item
    return None


def get_review_queue(limit=6):
    """the most overdue problems across all interview topics, for the dashboard's review queue"""
    queue = []
    for item in get_review_items():
        if not item["due"]:
            break  # sorted by urgency, so once one isn't due, none of the rest are either
        interview = [t for t in item["topics"] if t in INTERVIEW_TOPICS]
        if not interview:
            continue  # skip problems that are only niche tags
        # label it with its first interview topic, e.g. "Hash Table" instead of the full tag list
        queue.append({**item, "topic": interview[0]})
        if len(queue) == limit:
            break
    return queue

# Big picture of this file:
# spaced repetition for problems I've already solved. everything is worked out from the submissions table
# (no new tables), so re-solving a problem on LeetCode automatically moves it to the next, longer interval.
# the recommender uses pick_refresh() for each topic's "Refresh" problem, and /review uses get_review_queue().

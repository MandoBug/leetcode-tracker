#Script to fetch all the problems in leetcode. Safe to re-run: new problems get added and existing ones get updated.
#run it with: python -m ml.fetch_problems
import requests
import os
import sys
# add the parent directory to the path so we can import from backend
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from dotenv import load_dotenv
from backend.db import get_connection, ensure_schema

load_dotenv()

SESSION = os.getenv("LEETCODE_SESSION")
CSRF = os.getenv("LEETCODE_CSRF")

URL = "https://leetcode.com/graphql"

HEADERS = {
    "Content-Type": "application/json",
    "Cookie": f"LEETCODE_SESSION={SESSION}; csrftoken={CSRF}",
    "x-csrftoken": CSRF,
    "Referer": "https://leetcode.com",
}

PROBLEMS_QUERY = """
query problemsetQuestionList($skip: Int!, $limit: Int!) {
    problemsetQuestionList: questionList(
        categorySlug: ""
        limit: $limit
        skip: $skip
        filters: {}
    ) {
        totalNum
        questions: data {
            questionFrontendId
            title
            titleSlug
            difficulty
            isPaidOnly
            topicTags {
                name
            }
        }
    }
}
"""

def fetch_all_problems():
    all_problems = []
    skip = 0
    limit = 100
    
    while True:
        payload = {
            "query": PROBLEMS_QUERY,
            "variables": {"skip": skip, "limit": limit}
        }
        response = requests.post(URL, json=payload, headers=HEADERS)
        data = response.json()
        
        questions = data["data"]["problemsetQuestionList"]["questions"]
        total = data["data"]["problemsetQuestionList"]["totalNum"]
        
        all_problems.extend(questions)
        print(f"fetched {len(all_problems)}/{total} problems")
        
        if len(all_problems) >= total:
            break
            
        skip += limit
    
    return all_problems

def save_problems(problems):
    ensure_schema() #make sure the paid_only column exists before we write to it
    conn = get_connection()
    cur = conn.cursor()
    
    for p in problems:
        topics = [tag["name"] for tag in p["topicTags"]]
        # "upsert": insert new problems, and if the id already exists, update it instead of skipping it.
        # EXCLUDED is postgres's name for the row we tried to insert, so EXCLUDED.topics = the fresh value from LC.
        # this is how old rows pick up paid_only, plus any tag renames LC has done since the last sync
        cur.execute("""
            INSERT INTO problems (id, title, title_slug, difficulty, topics, paid_only)
            VALUES (%s, %s, %s, %s, %s, %s)
            ON CONFLICT (id) DO UPDATE SET
                title = EXCLUDED.title,
                title_slug = EXCLUDED.title_slug,
                difficulty = EXCLUDED.difficulty,
                topics = EXCLUDED.topics,
                paid_only = EXCLUDED.paid_only
        """, (
            p["questionFrontendId"],
            p["title"],
            p["titleSlug"],
            p["difficulty"],
            topics,
            bool(p.get("isPaidOnly"))
        ))
    
    conn.commit()
    cur.close()
    conn.close()
    print(f"saved {len(problems)} problems to database")

# fetch + save in one call, so the scheduler can run it weekly
def sync_problems():
    print("fetching all leetcode problems...")
    problems = fetch_all_problems()
    save_problems(problems)

if __name__ == "__main__":
    sync_problems()

# Big picture of this file:
# this is a script to fetch all the problems in leetcode (including which ones are premium) and save them to
# our database, we have a function that fetches all the problems by making paginated requests to the leetcode graphql API,
# and then we have another function that upserts those problems into our postgres database. sync_problems() calls both,
# and the scheduler runs it once a week so new problems and premium flags stay current.
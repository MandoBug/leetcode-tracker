import requests
import os
import sys
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from dotenv import load_dotenv
from backend.db import get_connection

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

SUBMISSION_LIST_QUERY = """
query submissionList($offset: Int!, $limit: Int!) {
    submissionList(offset: $offset, limit: $limit) {
        lastKey
        hasNext
        submissions {
            id
            title
            titleSlug
            timestamp
            statusDisplay
            lang
        }
    }
}
"""

PROBLEM_QUERY = """
query problemDetails($titleSlug: String!) {
    question(titleSlug: $titleSlug) {
        difficulty
        topicTags {
            name
        }
    }
}
"""

def fetch_all_submissions():
    all_submissions = []
    offset = 0
    limit = 20

    while True:
        payload = {
            "query": SUBMISSION_LIST_QUERY,
            "variables": {
                "offset": offset,
                "limit": limit
            }
        }
        response = requests.post(URL, json=payload, headers=HEADERS)
        data = response.json()
        result = data["data"]["submissionList"]
        submissions = result["submissions"]
        all_submissions.extend(submissions)
        print(f"fetched {len(all_submissions)} submissions so far...")

        if not result["hasNext"]:
            break
        offset += limit

    return all_submissions

def fetch_problem_details(title_slug):
    payload = {
        "query": PROBLEM_QUERY,
        "variables": {"titleSlug": title_slug}
    }
    response = requests.post(URL, json=payload, headers=HEADERS)
    data = response.json()
    return data["data"]["question"]

def save_submissions(submissions):
    conn = get_connection()
    cur = conn.cursor()
    saved = 0

    for s in submissions:
        if s["statusDisplay"] != "Accepted":
            continue
        try:
            details = fetch_problem_details(s["titleSlug"])
            topics = [tag["name"] for tag in details["topicTags"]]
            difficulty = details["difficulty"]

            cur.execute("""
                INSERT INTO submissions (id, title, title_slug, submitted_at, status, language, difficulty, topics)
                VALUES (%s, %s, %s, to_timestamp(%s), %s, %s, %s, %s)
                ON CONFLICT (id) DO NOTHING
            """, (
                s["id"],
                s["title"],
                s["titleSlug"],
                int(s["timestamp"]),
                s["statusDisplay"],
                s["lang"],
                difficulty,
                topics
            ))
            saved += 1
            if saved % 10 == 0:
                conn.commit()
                print(f"saved {saved} accepted submissions...")
        except Exception as e:
            print(f"skipped {s['title']}: {e}")
            continue

    conn.commit()
    cur.close()
    conn.close()
    print(f"done — saved {saved} total accepted submissions")

if __name__ == "__main__":
    print("fetching full submission history...")
    submissions = fetch_all_submissions()
    print(f"total fetched: {len(submissions)} — now enriching and saving accepted ones...")
    save_submissions(submissions)
    
# Big picture of this file:
# this is where we backfill the database with all the past submissions, we have a function
# that fetches all the submissions from the leetcode API, and then we have another function that takes those submissions,
# filters out the accepted ones, fetches the problem details for each accepted submission to get the difficulty and topics,
# and then saves them into the database, we also have some print statements to track the progress
#just needed this after I got the whole structure for the code working
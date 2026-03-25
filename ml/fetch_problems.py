#One time script to fetch all the problems in leetcode.
import requests
import os
import sys
# add the parent directory to the path so we can import from backend
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
    conn = get_connection()
    cur = conn.cursor()
    
    for p in problems:
        topics = [tag["name"] for tag in p["topicTags"]]
        cur.execute("""
            INSERT INTO problems (id, title, title_slug, difficulty, topics)
            VALUES (%s, %s, %s, %s, %s)
            ON CONFLICT (id) DO NOTHING
        """, (
            p["questionFrontendId"],
            p["title"],
            p["titleSlug"],
            p["difficulty"],
            topics
        ))
    
    conn.commit()
    cur.close()
    conn.close()
    print(f"saved {len(problems)} problems to database")

if __name__ == "__main__":
    print("fetching all leetcode problems...")
    problems = fetch_all_problems()
    save_problems(problems)

# Big picture of this file:
# this is a one time script to fetch all the problems in leetcode and save them to
# our database, we have a function that fetches all the problems by making paginated requests to the leetcode graphql API,
# and then we have another function that saves those problems to our postgres database, and in the main function we just 
# call those two functions in sequence.
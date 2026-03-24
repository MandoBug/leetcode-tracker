import requests
import os
from dotenv import load_dotenv
from backend.db import insert_submission
from backend.queue import push_to_queue

#loads environment variables from .env file so python can see the contents 
load_dotenv()

# This pulls my session cookie and CSRF token from my .env file, which I have set up to be ignored by git so that I don't accidentally share it with the world lol.  
# You can get these values from your browser's developer tools while logged into LeetCode, and then paste them into your own .env file if you want to use this script for yourself.  
# Just make sure not to share your .env file with anyone else, since it contains sensitive information that could be used to access your LeetCode account.
SESSION = os.getenv("LEETCODE_SESSION")
CSRF = os.getenv("LEETCODE_CSRF")

#this is the endpoint for LeetCode's GraphQL API, which is what we'll be sending our requests to in order to get information about our solved problems.
URL = "https://leetcode.com/graphql"

HEADERS = {
    "Content-Type": "application/json",
    "Cookie": f"LEETCODE_SESSION={SESSION}; csrftoken={CSRF}", #my login cookies
    "x-csrftoken": CSRF, #csrf prevents fake requests from other sites, so we need to include this so it knows the request is coming from us and not some random hacker
    "Referer": "https://leetcode.com", #tells LC the request is coming from their own site, which is another way to prove we're not some random hacker trying to access their API from a sketchy website
}

# this function sends the query to leetcode and returns the submissions
#payload is just the query + the username we're asking about
QUERY = """
query recentSubmissions($username: String!) {
    recentAcSubmissionList(username: $username, limit: 20) {
        id
        title
        titleSlug
        timestamp
        statusDisplay
        lang
    }
}
"""

def fetch_submissions(username):
    payload = {
        "query": QUERY,
        "variables": {"username": username} #my username will get passed in here when I call the function, and then it will be used in the query to get my submissions
    }
    response = requests.post(URL, json=payload, headers=HEADERS) #sends the request to leetcode with the query and headers we set up
    data = response.json() #parses the response from leetcode as json so we can work with it in python, converts it into a dictionary
    return data["data"]["recentAcSubmissionList"] #dives into the response to get just the submissions list nothing more

### Big Picture of this script:
#we send a POST request to LC with my cookies as proof of identity
#and a GraphQL query asking for my recent accepted submissions and what data to return
#it then just returns a JSON response and we pull the submissions list from it!

#--------------#
#need another query to get deeper info about each problem, like the difficulty and the topic tags, since that info isn't included in the recent submissions query.
#the first query just gives us the title and titleSlug, and here we will use the titleslug to get the problem details, which will include the difficulty and topic tags.

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
#now we just need to use a function to send this query to get the problem details for each problem we get from the query above
def fetch_problem_details(title_slug):
    payload = {
        "query": PROBLEM_QUERY,
        "variables": {"titleSlug": title_slug} #we pass in the title slug of the problem we want details for, which we got from the recent submissions query
    }
    response = requests.post(URL, json=payload, headers=HEADERS) #sends the request to leetcode with the query and headers we set up
    data = response.json() #parses the response from leetcode as json so we can work with it in python, converts it into a dictionary
    return data["data"]["question"] #dives into the response to get just the problem details, nothing more

### Big Picture of this part:
#we have a second query that takes in the title slug of a problem and returns the difficulty
#and topic tags for that problem, and then we have a function that sends that query to LC and returns the problem details as a dictionary.


if __name__ == "__main__":
    submissions = fetch_submissions("oRMwArKAWa") #calls the function with my username to get my submissions
    for submission in submissions:
        details = fetch_problem_details(submission["titleSlug"]) #for each submission, we call the function to get the problem details using the title slug from the submission
        submission["difficulty"] = details["difficulty"] #we add the difficulty to the submission dictionary
        submission["topics"] = [tag["name"] for tag in details["topicTags"]] #we add the topic tags to the submission dictionary, we have to pull out just the name of each tag since the API returns a list of dictionaries for the topic tags, and we just want a list of the tag names
        push_to_queue(submission) #instead of inserting directly into the database, we push the submission onto the queue, and then the backend will pull from the queue and insert into the database, this way we decouple the poller from the database and let FastAPI handle the queue and database interactions, which is more efficient and scalable.

# Big picture of this script:
# this script is responsible for pulling my recent accepted submissions from LeetCode using their GraphQL
# API, and then for each submission, it gets the problem details like difficulty and topic tags, and then it pushes the submission onto a Redis queue, 
# which the backend will read from and insert into the database.
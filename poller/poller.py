import requests
import os
from dotenv import load_dotenv

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

if __name__ == "__main__":
    submissions = fetch_submissions("oRMwArKAWa") #calls the function with my username to get my submissions
    for submission in submissions:
        print(submission) #prints each submission to the console, you can change this to do whatever you want with the submissions data, like save it to a file or something

### Big Picture of this script:
#we send a POST request to LC with my cookies as proof of identity
#and a GraphQL query asking for my recent accepted submissions and what data to return
#it then just returns a JSON response and we pull the submissions list from it!

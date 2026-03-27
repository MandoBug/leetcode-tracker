import sys
import os
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from apscheduler.schedulers.blocking import BlockingScheduler
from poller.poller import fetch_submissions, fetch_problem_details
from backend.queue import push_to_queue

# this is where we schedule the poller to run every hour, we use the apscheduler library to do this
scheduler = BlockingScheduler()

#def the run poller, it will fetch the latest submissions
def run_poller():
    print("running poller...")
    #try catch to make sure any errors in the poller don't crash the scheduler, we want it to keep running even if there's an error
    try:
        submissions = fetch_submissions("oRMwArKAWa")
        for submission in submissions:
            details = fetch_problem_details(submission["titleSlug"])
            submission["difficulty"] = details["difficulty"]
            submission["topics"] = [tag["name"] for tag in details["topicTags"]]
            push_to_queue(submission)
        print(f"queued {len(submissions)} submissions")
    except  Exception as e:
        print(f"poller error: {e}")

#schedule the poller to run every hour
scheduler.add_job(run_poller, 'interval', hours=1)

if __name__ == "__main__":
    print("scheduler started, polling every hour...")
    run_poller() #run it once immediately so we don't have to wait an hour for
    scheduler.start()

# Big picture of this file:
# this is where we schedule the poller to run every hour, so we don't have to run it manually anymore
# it essentially does what the poller does and pushes it to the redis queue
        
import sys
import os
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from apscheduler.schedulers.blocking import BlockingScheduler
from poller.poller import fetch_submissions, fetch_problem_details
from backend.queue import push_to_queue
from backend.db import get_existing_ids

# this is where we schedule the poller to run every hour, we use the apscheduler library to do this
scheduler = BlockingScheduler()

#def the run poller, it will fetch the latest submissions
def run_poller():
    print("running poller...")
    #try catch to make sure any errors in the poller don't crash the scheduler, we want it to keep running even if there's an error
    try:
        submissions = fetch_submissions("oRMwArKAWa")

        # LC always sends back my last 20 accepted submissions, most of which we already saved on an earlier poll.
        # skip those so we don't re-fetch their details (1 LC request each) and re-queue them for nothing
        try:
            existing = get_existing_ids([s["id"] for s in submissions])
        except Exception as e:
            print(f"couldn't check for existing submissions ({e}), queueing all of them")
            existing = set() #the worker's ON CONFLICT DO NOTHING still prevents duplicates
        new_submissions = [s for s in submissions if s["id"] not in existing]

        for submission in new_submissions:
            details = fetch_problem_details(submission["titleSlug"])
            submission["difficulty"] = details["difficulty"]
            submission["topics"] = [tag["name"] for tag in details["topicTags"]]
            push_to_queue(submission)
        print(f"queued {len(new_submissions)} new submissions ({len(existing)} already saved)")
    except  Exception as e:
        print(f"poller error: {e}")

#schedule the poller to run every 10 minutes, we can adjust this as needed, but I think every 10 minutes is a good balance between getting updates in a timely manner and not overwhelming the LC API or our database with too many requests
scheduler.add_job(run_poller, 'interval', minutes=10)

if __name__ == "__main__":
    print("scheduler started, polling every ten minutes...")
    run_poller() #run it once immediately so we don't have to wait an 10 minutes for it
    scheduler.start()

# Big picture of this file:
# this is where we schedule the poller to run every hour, so we don't have to run it manually anymore
# it essentially does what the poller does and pushes it to the redis queue
        
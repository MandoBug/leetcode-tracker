import time
import psycopg2
import redis
from backend.queue import pop_from_queue, requeue
from backend.db import insert_submission

# how long each BLPOP waits for a submission before coming back empty-handed (see queue.py)
POP_TIMEOUT = 30
# if redis or postgres is down, wait this long before retrying, doubling each time up to MAX_BACKOFF
# (1s, 2s, 4s, ... 60s) so we don't spam a service that's already struggling
MAX_BACKOFF = 60

# continuously pulls submissions off the queue and inserts them into postgres
# any connection error gets logged and retried instead of crashing the whole worker
def process_queue():
    print("worker running, waiting for submissions...")
    backoff = 1
    while True:
        try:
            submission = pop_from_queue(timeout=POP_TIMEOUT) #waits up to POP_TIMEOUT seconds for a submission
        except redis.RedisError as e:
            print(f"redis error: {e}, retrying in {backoff}s")
            time.sleep(backoff)
            backoff = min(backoff * 2, MAX_BACKOFF)
            continue

        if submission is None:
            backoff = 1 #redis answered, so it's healthy again
            continue #queue was empty for POP_TIMEOUT seconds, just wait again

        try:
            insert_submission(submission) #if it gets one, it inserts it into the database
            print(f"processed: {submission['title']}")
            backoff = 1
        except psycopg2.Error as e:
            print(f"database error on {submission['title']}: {e}, putting it back, retrying in {backoff}s")
            try:
                requeue(submission) #put it back so it isn't lost
            except redis.RedisError:
                # both services down at once: the scheduler will pick this submission up again on its next poll
                print(f"couldn't requeue {submission['title']}, the next poll will re-fetch it")
            time.sleep(backoff)
            backoff = min(backoff * 2, MAX_BACKOFF)

if __name__ == "__main__":
    process_queue()

# Big picture of this file:
# this is where we continuously pull submissions off the queue and insert them into the database,
# we have a function that runs an infinite loop, and in each iteration it waits (BLPOP) for
# a submission, and if it gets one, it inserts it into the database. if redis or postgres drops the
# connection, we log it, wait a bit longer each time (exponential backoff), and try again instead of crashing.

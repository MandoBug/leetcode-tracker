import time
from backend.queue import pop_from_queue
from backend.db import insert_submission

# continuously pulls submissions off the queue and inserts them into postgres
# sleeps briefly between checks so it's not running at 100% cpu for no reason
def process_queue():
    print("worker running, waiting for submissions...")
    while True:
        submission = pop_from_queue() #tries to get a submission from the queue
        if submission:
            insert_submission(submission) #if it gets one, it inserts it into the database
            print(f"processed: {submission['title']}")
        else:
            time.sleep(5) #if the queue is empty, it waits for a second before checking again to avoid using too much CPU

if __name__ == "__main__":
    process_queue()

# Big picture of this file:
# this is where we continuously pull submissions off the queue and insert them into the database,
# we have a function that runs an infinite loop, and in each iteration it tries to pop
# a submission off the queue, and if it gets one, it inserts it into the database, and if the queue is empty, 
# it just waits for a few seconds before checking again.
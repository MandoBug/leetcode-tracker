import redis
import json
import os
from dotenv import load_dotenv
#this script is responsible for managing the poller sending the data to the backend(FastAPI)
#we will use redis as a message queue to send the data from the poller to the backend(FastAPI), 
#and then the backend(FastAPI) will read from the queue and insert the data into the database
#this will ensure that the poller and the backend(FastAPI) are decoupled and can run independently,
#without causing any issues with the database and allow FastAPI to handle the queue without being overwhelmed
#we can also scale this to multiple pollers if we want to, and they can all send data to the same queue without any issues

load_dotenv() #loads the environment variables from the .env file, which is where I have my redis credentials stored so that I don't accidentally share them with the world lol.
# Set up Redis connection
# connects to our local redis instance
redis_url = os.getenv("REDIS_URL", "redis://localhost:6379") #gets the redis URL from the environment variable, or defaults to localhost if not set
# connection settings that keep us alive when the network is flaky (Railway's public proxy likes to reset idle connections):
# - health_check_interval: if a connection has been idle 30s+, PING it before using it, and reconnect if it's dead
# - socket_keepalive: lets the OS notice dead connections instead of us finding out mid-command
# - socket_connect_timeout / socket_timeout: give up on a hung connection instead of waiting forever.
#   socket_timeout has to be longer than the BLPOP wait below, or every empty wait would look like a timeout
r = redis.from_url(
    redis_url, #connects to redis using the URL from the .env file, which is where we have our redis credentials stored so that we don't accidentally share them with the world lol.
    health_check_interval=30,
    socket_keepalive=True,
    socket_connect_timeout=10,
    socket_timeout=60,
)

# poller calls this to drop a submission onto the queue
# we convert the submission dict to a JSON string because redis only stores strings
def push_to_queue(submission):
    r.rpush("submission_queue",json.dumps(submission)) #pushes to end of queue(left), and turns the submission dictionary into a JSON string so we can store it in redis
    print(f"queued: {submission['title']}")

# the worker calls this to pull submissions off the queue one at a time
# BLPOP = "blocking" LPOP: instead of asking redis "anything yet?" every 5 seconds, we ask once and redis
# holds the request open until something arrives OR `timeout` seconds pass. so the worker wakes up
# instantly when a submission shows up, but only talks to redis about once every `timeout` seconds when idle.
# returns None if nothing arrived before the timeout
def pop_from_queue(timeout=30):
    item = r.blpop("submission_queue", timeout=timeout) #pops from the front of the queue(left), returns (queue_name, value) or None
    if item:
        return json.loads(item[1]) #turns the JSON string back into a dictionary so we can work with it in python
    return None

# if the worker popped a submission but couldn't save it (database down), it puts it back
# at the FRONT of the queue so it's the next thing we try, instead of losing it
def requeue(submission):
    r.lpush("submission_queue", json.dumps(submission))

# caching functions
# saves data to redis with an expiry time so it auto refreshes
# the cache is just a speed-up, so if redis is having a moment we skip it instead of crashing the API request
def set_cache(key, value, expiry=360):
    try:
        r.setex(key, expiry, json.dumps(value)) #sets a key in redis with an expiry time, and turns the value into a JSON string so we can store it in redis
    except redis.RedisError as e:
        print(f"cache write failed for {key}: {e}")

# retrieves cached data, returns None if not found or expired (or if redis is unreachable, in which case we just hit postgres)
def get_cache(key):
    try:
        item = r.get(key) #gets the value for a key from redis
    except redis.RedisError as e:
        print(f"cache read failed for {key}: {e}")
        return None
    if item:
        return json.loads(item) #turns the JSON string back into a dictionary so we can work with it in python
    return None

# Big picture of this file:
# this is where we manage the queue that the poller uses to send data to the backend
# we have a function to push a submission onto the queue, and a function to pop a submission off the queue,
# and then we also have some caching functions that we can use to cache data in redis with an expiry time, 
# which can be useful for caching problem details so we don't have to hit the LC API every time for the same problem.
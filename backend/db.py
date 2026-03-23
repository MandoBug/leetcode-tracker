import psycopg2
import os
from dotenv import load_dotenv

load_dotenv() #loads the environment variables from the .env file, which is where I have my database credentials stored so that I don't accidentally share them with the world lol.

# connects to our postgresql database using the credentials from .env
def get_connection():
    conn = psycopg2.connect(
        host=os.getenv("DB_HOST"), #my hostname 
        user=os.getenv("DB_USER"), #my database username
        password=os.getenv("DB_PASSWORD"), #my database password
        dbname=os.getenv("DB_NAME") #my database name
    )
    return conn 

# inserts a single submission into the database
# if the submission already exists (same id) it just skips it — no duplicates
def insert_submission(submission):
    conn = get_connection()
    cur = conn.cursor()
    # %s = safe placeholder, filled in order, one per value. This prevents SQL injection attacks by ensuring that the values are properly escaped and treated as data rather than executable code.
    cur.execute("""
        INSERT INTO submissions (id, title, title_slug, submitted_at, status, language, difficulty, topics)
        VALUES (%s, %s, %s, to_timestamp(%s), %s, %s, %s, %s)
        ON CONFLICT (id) DO NOTHING
    """, (
        submission["id"],
        submission["title"],
        submission["titleSlug"],
        int(submission["timestamp"]),
        submission["statusDisplay"],
        submission["lang"],
        submission["difficulty"],
        submission["topics"]
    ))
    conn.commit()
    cur.close()
    conn.close()
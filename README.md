# LC Tracker

I've been grinding LeetCode every day trying to get better at interviews, and at some point 
I realized I had no real visibility into what I was actually improving at. I could see my 
submission count go up but I had no idea if I was actually getting stronger or just doing 
easy array problems on repeat. So I built this.

LC Tracker is a personal analytics dashboard that pulls my LeetCode activity in real time, 
stores it, and uses a weighted scoring model to tell me exactly what I should be practicing 
next — with direct links to problems and a reroll button if I don't like the suggestion.

## Live Demo

*(gif coming soon)*

**[lcdashboard.dev](https://www.lcdashboard.live/)** — live at your own domain once connected

---

## How It Works

Every 10 minutes a poller hits LeetCode's GraphQL API using my session credentials and 
fetches my latest submissions. It enriches each one with topic tags and difficulty from 
a second query, then drops them into a Redis queue. A background worker pulls from the 
queue one at a time and writes to PostgreSQL. The FastAPI backend serves everything to 
the React dashboard via cached endpoints, with Redis handling both the queue and the 
read cache so the database never gets hammered.

The ML recommendation engine sits on top of PostgreSQL and scores every topic I've 
practiced using three weighted factors:
```
priority_score = (1 / (count + 1)) * recency_weight * difficulty_weight
```

- **Count** — how many problems I've done in this topic (Laplace smoothed so zero-count 
  topics don't divide by zero and naturally float to the top)
- **Recency** — how long since I last touched the topic, on a log scale so a 100-day gap 
  doesn't completely dominate a 30-day gap
- **Difficulty** — if I've only done easy problems in a topic, the weight goes up

Each recommendation comes with a problem to refresh on (oldest one I've solved in that 
topic) and a new unseen problem suggestion pulled from a local table of all 3,800+ 
LeetCode problems, with a reroll button if I don't like what it gives me.

---

## Architecture
```
LeetCode → Poller → Redis (queue) → Worker → PostgreSQL
                                        ↑
                                   Redis (cache)
                                        ↓
                          FastAPI → React Dashboard
                               ↑
                          ML Recommender
```

---

## Stack

**Backend**
- Python · FastAPI · APScheduler
- PostgreSQL · Redis
- psycopg2 · python-dotenv

**Frontend**
- React · Vite
- Recharts (bar chart, radar chart, line chart)
- Custom activity heatmap

**Infrastructure**
- Railway — FastAPI, worker, scheduler, PostgreSQL, Redis
- Vercel — React frontend

---

## Features

- Real-time submission tracking via LeetCode GraphQL API
- Redis message queue decoupling poller from database writes
- ML-powered topic recommendations with three-tier prioritization
- GitHub-style activity heatmap for the last 6 months
- Topic radar chart showing strength across core interview topics
- Cumulative progress line chart
- Reroll button for new problem suggestions
- Redis read cache on all endpoints for fast dashboard loads
- Auto-polling every 10 minutes via APScheduler

---

## Running Locally
```bash
# clone and install
git clone https://github.com/MandoBug/leetcode-tracker
cd leetcode-tracker
pip install -r requirements.txt

# set up .env
cp .env.example .env
# fill in LEETCODE_SESSION, LEETCODE_CSRF, DB_*, REDIS_URL

# start postgres and redis locally, then run
python -m backend.worker        # terminal 1
python -m poller.scheduler      # terminal 2
cd dashboard && npm install && npm run dev  # terminal 3
```

---

## Why I Built This

I bought a binary star for my girlfriend and I for our anniversary and ended up building 
a physics simulation to visualize it. That project reminded me that the best way to learn 
something is to build something personal around it. I was already grinding LeetCode every 
day — building a tool that actively tells me what's weak and what to do next just made 
sense. Now the dashboard tells me what to work on and I can actually see myself getting 
better over time.
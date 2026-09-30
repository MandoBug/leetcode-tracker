from datetime import datetime, timedelta
from zoneinfo import ZoneInfo
from backend.db import get_connection

# weeks run Monday to Sunday in my timezone, so a late-night Sunday solve counts for the right week
TIMEZONE = ZoneInfo("America/Los_Angeles")

DEFAULT_GOAL = 7   # used until there's enough history to learn from
MIN_GOAL = 5
MAX_GOAL = 20
LOOKBACK_WEEKS = 4  # how many recent active weeks the goal is based on
STRETCH = 1.1       # aim 10% above my recent average so the goal nudges me up
BREAK_WEEKS = 3     # this many weeks with nothing solved counts as a break


def get_weekly_goal():
    """this week's goal (unique problems), how far along I am, and which days I practiced"""
    conn = get_connection()
    cur = conn.cursor()
    # submitted_at is stored in UTC. AT TIME ZONE converts it: first tag it as UTC, then shift it to Pacific.
    # the grouping into Monday-to-Sunday weeks happens in python below
    cur.execute("""
        SELECT title,
               (submitted_at AT TIME ZONE 'UTC' AT TIME ZONE %s) AS local_time
        FROM submissions
    """, (str(TIMEZONE),))
    rows = cur.fetchall()
    cur.close()
    conn.close()

    now = datetime.now(TIMEZONE)
    week_start = (now - timedelta(days=now.weekday())).date()  # this Monday

    # group titles by week (Monday date) -> set of unique problems solved that week
    weeks = {}
    days_active = [False] * 7  # Mon..Sun of this week
    this_week = set()
    for title, local_time in rows:
        day = local_time.date()
        monday = day - timedelta(days=day.weekday())
        weeks.setdefault(monday, set()).add(title)
        if monday == week_start:
            this_week.add(title)
            days_active[day.weekday()] = True

    # goal = average of my last few ACTIVE weeks (skipping weeks with 0, so a vacation doesn't tank it),
    # plus a 10% stretch, kept between MIN_GOAL and MAX_GOAL
    past = sorted((m for m in weeks if m < week_start), reverse=True)[:LOOKBACK_WEEKS]
    if len(past) >= 2:
        average = sum(len(weeks[m]) for m in past) / len(past)
        weeks_off = (week_start - past[0]).days // 7 - 1  # full weeks since my last active week
        if weeks_off >= BREAK_WEEKS:
            # coming back from a break: start at half my old pace instead of jumping straight back in
            goal = round(average / 2)
            basis = f"{weeks_off} weeks off, so half your old pace ({average:.1f}/week) to ease back in"
        else:
            goal = round(average * STRETCH)
            basis = f"avg {average:.1f}/week over your last {len(past)} active weeks, +10%"
        goal = max(MIN_GOAL, min(MAX_GOAL, goal))
    else:
        goal = DEFAULT_GOAL
        basis = "default until there's more history"

    return {
        "goal": goal,
        "done": len(this_week),
        "days_active": days_active,
        "days_left": 7 - now.weekday(),  # including today
        "week_start": str(week_start),
        "basis": basis,
    }

# Big picture of this file:
# a weekly goal that adapts to me. it looks at how many unique problems I solved in my last 4 active weeks,
# aims 10% higher (or half, if I'm coming back from a break), and reports this week's progress plus which
# days I practiced (no streaks, just this week).

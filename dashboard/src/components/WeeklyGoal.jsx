const DAYS = ["M", "T", "W", "T", "F", "S", "S"]

// circular progress ring. the trick: a circle's stroke is drawn as a dash, and strokeDashoffset
// hides the part of the dash we haven't "earned" yet. offset = full length -> empty, 0 -> full
function Ring({ value, max, size = 92, stroke = 8 }) {
    const r = (size - stroke) / 2
    const length = 2 * Math.PI * r
    const pct = Math.min(value / max, 1)
    return (
        <svg width={size} height={size} viewBox={`0 0 ${size} ${size}`} className="ring" aria-hidden="true">
            <circle cx={size / 2} cy={size / 2} r={r} fill="none" stroke="var(--surface-2)" strokeWidth={stroke} />
            <circle
                cx={size / 2} cy={size / 2} r={r} fill="none"
                stroke="var(--accent)" strokeWidth={stroke} strokeLinecap="round"
                strokeDasharray={length}
                strokeDashoffset={length * (1 - pct)}
                transform={`rotate(-90 ${size / 2} ${size / 2})`}  // start at 12 o'clock instead of 3
            />
        </svg>
    )
}

function WeeklyGoal({ goal, focus }) {
    if (!goal) return null
    const left = Math.max(goal.goal - goal.done, 0)
    const todayIndex = 7 - goal.days_left // 0 = Monday
    const perDay = left ? Math.ceil(left / goal.days_left) : 0

    return (
        <div className="card goal-card">
            <div className="card-head">
                <div>
                    <h3 className="card-title">Weekly goal</h3>
                    <p className="card-sub">{goal.basis}</p>
                </div>
            </div>

            <div className="goal-body">
                <div className="ring-wrap">
                    <Ring value={goal.done} max={goal.goal} />
                    <div className="ring-label">
                        <strong>{goal.done}</strong>
                        <span>of {goal.goal}</span>
                    </div>
                </div>
                <div className="goal-text">
                    <p className="goal-headline">
                        {left === 0 ? "Goal hit. Anything extra is a bonus." : `${left} to go, about ${perDay} a day`}
                    </p>
                    <div className="goal-days" aria-label="days practiced this week">
                        {DAYS.map((d, i) => (
                            <span
                                key={i}
                                className={`goal-day${goal.days_active[i] ? " on" : ""}${i === todayIndex ? " today" : ""}`}
                                title={goal.days_active[i] ? "practiced" : i > todayIndex ? "coming up" : "no practice"}
                            >
                                {d}
                            </span>
                        ))}
                    </div>
                </div>
            </div>

            {focus.length > 0 && (
                <div className="goal-focus">
                    <span className="rec-label">Focus</span>
                    <div className="chips">
                        {focus.map(t => <span key={t} className="chip">{t}</span>)}
                    </div>
                </div>
            )}
        </div>
    )
}

export default WeeklyGoal

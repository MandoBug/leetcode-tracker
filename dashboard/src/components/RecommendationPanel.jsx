import { useState } from "react"
import { getJSON } from "../api"
import { to } from "../router"
import { noteForTopic } from "../notes/catalog"

const lc = slug => `https://leetcode.com/problems/${slug}`

// the two difficulties the backend suggests for every topic (see SUGGESTION_DIFFICULTIES in ml/recommender.py)
const TRY_DIFFICULTIES = ["Easy", "Medium"]

function RerollIcon() {
    return (
        <svg viewBox="0 0 16 16" fill="none" stroke="currentColor" strokeWidth="1.6" strokeLinecap="round" strokeLinejoin="round" aria-hidden="true">
            <path d="M13.5 8a5.5 5.5 0 1 1-1.6-3.9" />
            <path d="M13.5 2.5v3h-3" />
        </svg>
    )
}

// "12d overdue" / "due today" / "in 5d", from the spaced repetition fields in ml/review.py
function reviewStatus(p) {
    if (p.overdue_days > 0) return { text: `${p.overdue_days}d overdue`, due: true }
    if (p.overdue_days === 0) return { text: "due today", due: true }
    return { text: `in ${-p.overdue_days}d`, due: false }
}

function RecommendationCard({ rec, rank, rerolling, onReroll }) {
    const meta = rec.count === 0
        ? "never solved"
        : `${rec.count} solved · last ${rec.days_since_last}d ago`
    const refresh = rec.refresh_problem
    const note = noteForTopic(rec.topic)
    const status = refresh && reviewStatus(refresh)

    return (
        <article className="rec-card" data-tier={rec.tier}>
            <div className="rec-top">
                <div>
                    <div className="rec-rank">{String(rank).padStart(2, "0")}</div>
                    <h3 className="rec-topic">{rec.topic}</h3>
                    <p className="rec-meta">
                        {meta}
                        {note && <> · <a className="rec-notes" href={to("notes", note.slug)}>read notes</a></>}
                    </p>
                </div>
                <span className="pill">{rec.tier}</span>
            </div>

            <div className="rec-rows">
                <div className="rec-row">
                    <span className="rec-label">Review</span>
                    {refresh ? (
                        <a
                            className="rec-link refresh"
                            href={lc(refresh.slug)}
                            target="_blank"
                            rel="noreferrer"
                            title={`solved on ${refresh.solve_days} different day${refresh.solve_days === 1 ? "" : "s"}, review every ${refresh.interval}d`}
                        >
                            {refresh.title}
                        </a>
                    ) : (
                        <span className="rec-empty">nothing to review yet</span>
                    )}
                    {status && <span className={`rec-aux${status.due ? " due" : ""}`}>{status.text}</span>}
                </div>

                {TRY_DIFFICULTIES.map(d => {
                    const problem = rec.new_problems?.[d]
                    const key = `${rec.topic}:${d}`
                    return (
                        <div className="rec-row" key={d}>
                            <span className={`rec-label diff-${d.toLowerCase()}`}>{d}</span>
                            {problem ? (
                                <a className="rec-link try" href={lc(problem.slug)} target="_blank" rel="noreferrer">
                                    {problem.title}
                                </a>
                            ) : (
                                <span className="rec-empty">none left in this topic</span>
                            )}
                            <button
                                className={`icon-btn${rerolling.has(key) ? " spinning" : ""}`}
                                onClick={() => onReroll(rec.topic, d)}
                                disabled={rerolling.has(key)}
                                aria-label={`Suggest a different ${d} ${rec.topic} problem`}
                                title="Reroll"
                            >
                                <RerollIcon />
                            </button>
                        </div>
                    )
                })}
            </div>
        </article>
    )
}

function RecommendationPanel({ recommendations, setRecommendations }) {
    // which "topic:difficulty" rows are rerolling right now, so only that button spins
    const [rerolling, setRerolling] = useState(new Set())

    const handleReroll = async (topic, difficulty) => {
        const key = `${topic}:${difficulty}`
        setRerolling(prev => new Set(prev).add(key))
        try {
            const data = await getJSON(
                `/recommendations/refresh?topic=${encodeURIComponent(topic)}&difficulty=${difficulty}`
            )
            setRecommendations(prev =>
                prev.map(r => r.topic === topic
                    ? { ...r, new_problems: { ...r.new_problems, [difficulty]: data } }
                    : r)
            )
        } catch (err) {
            console.error("reroll failed", err)
        }
        setRerolling(prev => {
            const next = new Set(prev)
            next.delete(key)
            return next
        })
    }

    return (
        <div className="rec-grid">
            {recommendations.map((rec, i) => (
                <RecommendationCard
                    key={rec.topic}
                    rec={rec}
                    rank={i + 1}
                    rerolling={rerolling}
                    onReroll={handleReroll}
                />
            ))}
        </div>
    )
}

export default RecommendationPanel

import { useState } from "react"
import { getJSON } from "../api"

const lc = slug => `https://leetcode.com/problems/${slug}`

function RerollIcon() {
    return (
        <svg viewBox="0 0 16 16" fill="none" stroke="currentColor" strokeWidth="1.6" strokeLinecap="round" strokeLinejoin="round" aria-hidden="true">
            <path d="M13.5 8a5.5 5.5 0 1 1-1.6-3.9" />
            <path d="M13.5 2.5v3h-3" />
        </svg>
    )
}

function RecommendationCard({ rec, rank, rerolling, onReroll }) {
    const meta = rec.count === 0
        ? "never solved"
        : `${rec.count} solved · last ${rec.days_since_last}d ago`

    return (
        <article className="rec-card" data-tier={rec.tier}>
            <div className="rec-top">
                <div>
                    <div className="rec-rank">{String(rank).padStart(2, "0")}</div>
                    <h3 className="rec-topic">{rec.topic}</h3>
                    <p className="rec-meta">{meta}</p>
                </div>
                <span className="pill">{rec.tier}</span>
            </div>

            <div className="rec-rows">
                <div className="rec-row">
                    <span className="rec-label">Refresh</span>
                    {rec.refresh_problem ? (
                        <a className="rec-link refresh" href={lc(rec.refresh_problem.slug)} target="_blank" rel="noreferrer">
                            {rec.refresh_problem.title}
                        </a>
                    ) : (
                        <span className="rec-empty">nothing to refresh yet</span>
                    )}
                    {rec.refresh_problem && <span className="rec-aux">{rec.refresh_problem.days_ago}d</span>}
                </div>

                <div className="rec-row">
                    <span className="rec-label">Try</span>
                    {rec.new_problem ? (
                        <a className="rec-link try" href={lc(rec.new_problem.slug)} target="_blank" rel="noreferrer">
                            {rec.new_problem.title}
                        </a>
                    ) : (
                        <span className="rec-empty">no unseen problems left</span>
                    )}
                    <button
                        className={`icon-btn${rerolling ? " spinning" : ""}`}
                        onClick={() => onReroll(rec.topic)}
                        disabled={rerolling}
                        aria-label={`Suggest a different ${rec.topic} problem`}
                        title="Reroll"
                    >
                        <RerollIcon />
                    </button>
                </div>
            </div>
        </article>
    )
}

function RecommendationPanel({ recommendations, setRecommendations }) {
    // which topics are currently rerolling, so only that card's button spins
    const [rerolling, setRerolling] = useState(new Set())

    const handleReroll = async (topic) => {
        setRerolling(prev => new Set(prev).add(topic))
        try {
            const data = await getJSON(`/recommendations/refresh?topic=${encodeURIComponent(topic)}`)
            setRecommendations(prev =>
                prev.map(r => r.topic === topic ? { ...r, new_problem: data } : r)
            )
        } catch (err) {
            console.error("reroll failed", err)
        }
        setRerolling(prev => {
            const next = new Set(prev)
            next.delete(topic)
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
                    rerolling={rerolling.has(rec.topic)}
                    onReroll={handleReroll}
                />
            ))}
        </div>
    )
}

export default RecommendationPanel

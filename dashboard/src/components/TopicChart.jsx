import { useState } from "react"

// strength thresholds, in unique problems solved per topic
const STRONG = 15
const DEVELOPING = 5

const LEVELS = [
    { label: `strong (${STRONG}+)`, color: "var(--easy)" },
    { label: `developing (${DEVELOPING}–${STRONG - 1})`, color: "var(--medium)" },
    { label: `weak (<${DEVELOPING})`, color: "var(--hard)" },
]

const levelFor = count => count >= STRONG ? LEVELS[0] : count >= DEVELOPING ? LEVELS[1] : LEVELS[2]

// horizontal bars instead of the old vertical bar chart: topic names stay readable
// without rotating them 45°, and the list reads top-to-bottom like a ranking
function TopicChart({ topics }) {
    const [showAll, setShowAll] = useState(false)

    const shown = (showAll ? topics.filter(t => t.count > 0) : topics.filter(t => t.interview))
        .slice()
        .sort((a, b) => b.count - a.count || a.topic.localeCompare(b.topic))
    const max = Math.max(1, ...shown.map(t => t.count))
    const hiddenCount = topics.filter(t => !t.interview && t.count > 0).length

    return (
        <div className="card">
            <div className="card-head">
                <div>
                    <h3 className="card-title">Problems per topic</h3>
                    <p className="card-sub">
                        {showAll
                            ? "every tag I've touched"
                            : `interview topics only · ${hiddenCount} niche tags hidden`}
                    </p>
                </div>
                <div className="toggle" role="group" aria-label="Which topics to show">
                    <button aria-pressed={!showAll} onClick={() => setShowAll(false)}>Interview</button>
                    <button aria-pressed={showAll} onClick={() => setShowAll(true)}>All</button>
                </div>
            </div>

            {/* two columns that fill top-to-bottom, so the ranking still reads in order */}
            <div className="bars" style={{ gridTemplateRows: `repeat(${Math.ceil(shown.length / 2)}, auto)` }}>
                {shown.map(t => {
                    const level = levelFor(t.count)
                    return (
                        <div
                            key={t.topic}
                            className={`bar-row${t.count === 0 ? " zero" : ""}`}
                            title={`${t.topic}: ${t.count} problem${t.count === 1 ? "" : "s"} · ${level.label}`}
                        >
                            <span className="bar-label">{t.topic}</span>
                            <div className="bar-track">
                                <div className="bar-fill" style={{ width: `${(t.count / max) * 100}%`, background: level.color }} />
                            </div>
                            <span className="bar-value">{t.count}</span>
                        </div>
                    )
                })}
            </div>

            <div className="legend">
                {LEVELS.map(l => (
                    <span key={l.label}><i className="dot" style={{ background: l.color }} />{l.label}</span>
                ))}
            </div>
        </div>
    )
}

export default TopicChart

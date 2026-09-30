const lc = slug => `https://leetcode.com/problems/${slug}`

const difficultyColor = {
    Easy: "var(--easy)",
    Medium: "var(--medium)",
    Hard: "var(--hard)"
}

// problems whose spaced repetition review is due, most overdue first (from /review, see ml/review.py)
function ReviewQueue({ queue }) {
    return (
        <div className="card">
            <div className="card-head">
                <div>
                    <h3 className="card-title">Review queue</h3>
                    <p className="card-sub">re-solve 1, 7, 30, then 90 days after solving so it sticks</p>
                </div>
                {queue.length > 0 && <span className="count-badge">{queue.length} due</span>}
            </div>

            {queue.length === 0 ? (
                <p className="empty">Nothing due right now. Everything you've solved is fresh.</p>
            ) : (
                <ul className="queue">
                    {queue.map(p => (
                        <li key={p.slug} className="queue-item">
                            <i className="dot" style={{ background: difficultyColor[p.difficulty] }} title={p.difficulty} />
                            <div className="queue-main">
                                <a className="queue-title" href={lc(p.slug)} target="_blank" rel="noreferrer">{p.title}</a>
                                <div className="queue-meta">
                                    {p.topic} · solved on {p.solve_days} day{p.solve_days === 1 ? "" : "s"} · last {p.days_ago}d ago
                                </div>
                            </div>
                            <span className="queue-overdue">
                                {p.overdue_days > 0 ? `${p.overdue_days}d late` : "due today"}
                            </span>
                        </li>
                    ))}
                </ul>
            )}
        </div>
    )
}

export default ReviewQueue

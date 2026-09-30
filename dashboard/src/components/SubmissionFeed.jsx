const difficultyColor = {
    Easy: "var(--easy)",
    Medium: "var(--medium)",
    Hard: "var(--hard)"
}

function SubmissionFeed({ submissions }) {
    // one row per problem — if I re-solved something, only show the most recent solve
    const seen = new Set()
    const recent = []
    for (const s of submissions) {
        if (recent.length === 12) break
        if (seen.has(s.title)) continue
        seen.add(s.title)
        recent.push(s)
    }

    return (
        <ul className="feed">
            {recent.map(s => (
                <li key={s.id} className="feed-item">
                    <div className="feed-main">
                        <a
                            className="feed-title"
                            href={s.title_slug ? `https://leetcode.com/problems/${s.title_slug}` : undefined}
                            target="_blank"
                            rel="noreferrer"
                        >
                            {s.title}
                        </a>
                        <div className="feed-topics">{s.topics.slice(0, 2).join(" · ")}</div>
                    </div>
                    <div className="feed-side">
                        <div style={{ color: difficultyColor[s.difficulty] }}>{s.difficulty}</div>
                        <div className="feed-date">
                            {new Date(s.submitted_at).toLocaleDateString("en-US", { month: "short", day: "numeric" })}
                        </div>
                    </div>
                </li>
            ))}
        </ul>
    )
}

export default SubmissionFeed

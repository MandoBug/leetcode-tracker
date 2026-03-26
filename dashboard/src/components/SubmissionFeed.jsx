const difficultyColor = {
    Easy: "#22c55e",
    Medium: "#eab308",
    Hard: "#ef4444"
}

function SubmissionFeed({ submissions }) {
    return (
        <div style={{ display: "flex", flexDirection: "column", gap: "0.5rem" }}>
            {submissions.slice(0, 15).map(s => (
                <div key={s.id} style={{
                    display: "flex",
                    justifyContent: "space-between",
                    alignItems: "center",
                    padding: "0.5rem 0",
                    borderBottom: "1px solid #141414",
                }}>
                    <div style={{ flex: 1, minWidth: 0 }}>
                        <div style={{
                            fontSize: "13px",
                            color: "#d0d0d0",
                            whiteSpace: "nowrap",
                            overflow: "hidden",
                            textOverflow: "ellipsis",
                            marginBottom: "2px"
                        }}>
                            {s.title}
                        </div>
                        <div style={{
                            fontSize: "11px",
                            color: "#3a3a3a",
                            fontFamily: "'DM Mono', monospace",
                            whiteSpace: "nowrap",
                            overflow: "hidden",
                            textOverflow: "ellipsis"
                        }}>
                            {s.topics.slice(0, 2).join(" · ")}
                        </div>
                    </div>
                    <div style={{ display: "flex", flexDirection: "column", alignItems: "flex-end", gap: "2px", marginLeft: "0.75rem" }}>
                        <span style={{
                            fontSize: "11px",
                            color: difficultyColor[s.difficulty],
                            fontFamily: "'DM Mono', monospace",
                        }}>
                            {s.difficulty}
                        </span>
                        <span style={{ fontSize: "10px", color: "#333", fontFamily: "'DM Mono', monospace" }}>
                            {new Date(s.submitted_at).toLocaleDateString("en-US", { month: "short", day: "numeric" })}
                        </span>
                    </div>
                </div>
            ))}
        </div>
    )
}

export default SubmissionFeed
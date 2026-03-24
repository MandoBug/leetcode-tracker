function SubmissionFeed({ submissions }) {
    const difficultyColor = {
        Easy: "#22c55e",
        Medium: "#eab308",
        Hard: "#ef4444"
    }

    return (
        <div>
            <h2>Recent Submissions</h2>
            <div style={{ display: "flex", flexDirection: "column", gap: "0.5rem" }}>
                {submissions.map(s => (
                    <div key={s.id} style={{
                        background: "#1a1a1a",
                        padding: "0.75rem 1rem",
                        borderRadius: "8px",
                        display: "flex",
                        justifyContent: "space-between",
                        alignItems: "center"
                    }}>
                        <div>
                            <span style={{ fontWeight: "bold" }}>{s.title}</span>
                            <span style={{ marginLeft: "1rem", color: "#666", fontSize: "12px" }}>
                                {s.topics.join(", ")}
                            </span>
                        </div>
                        <div style={{ display: "flex", gap: "1rem", alignItems: "center" }}>
                            <span style={{ color: difficultyColor[s.difficulty], fontWeight: "bold" }}>
                                {s.difficulty}
                            </span>
                            <span style={{ color: "#666", fontSize: "12px" }}>
                                {new Date(s.submitted_at).toLocaleDateString()}
                            </span>
                        </div>
                    </div>
                ))}
            </div>
        </div>
    )
}

export default SubmissionFeed
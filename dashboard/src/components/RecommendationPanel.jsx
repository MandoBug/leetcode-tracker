import { useState } from "react"

const tierColors = {
    "Been a while": "#ef4444",
    "Keep practicing": "#eab308",
    "Developing": "#22c55e"
}

function RecommendationCard({ rec, onRefresh }) {
    return (
        <div style={{
            background: "#1a1a1a",
            borderRadius: "10px",
            padding: "1rem 1.25rem",
            marginBottom: "0.75rem",
            borderLeft: `4px solid ${tierColors[rec.tier] || "#666"}`
        }}>
            <div style={{ display: "flex", justifyContent: "space-between", alignItems: "center" }}>
                <div>
                    <span style={{ fontWeight: "bold", fontSize: "16px" }}>{rec.topic}</span>
                    <span style={{
                        marginLeft: "0.75rem",
                        color: tierColors[rec.tier],
                        fontSize: "12px",
                        fontWeight: "bold"
                    }}>
                        {rec.tier}
                    </span>
                </div>
                <span style={{ color: "#666", fontSize: "12px" }}>
                    {rec.count} solved · {rec.days_since_last}d ago · score: {rec.priority_score}
                </span>
            </div>

            <div style={{ marginTop: "0.75rem", display: "flex", gap: "1rem", flexWrap: "wrap" }}>
                {rec.refresh_problem && (
                    <div style={{
                        background: "#111",
                        borderRadius: "6px",
                        padding: "0.5rem 0.75rem",
                        fontSize: "13px"
                    }}>
                        {"🔁 "}
                        <span style={{ color: "#aaa" }}>Refresh: </span>
                        <a
                            href={`https://leetcode.com/problems/${rec.refresh_problem.slug || rec.topic.toLowerCase().replace(/ /g, "-")}`}
                            target="_blank"
                            rel="noreferrer"
                            style={{ color: "#60a5fa" }}
                        >
                            {rec.refresh_problem.title}
                        </a>
                        <span style={{ color: "#555", marginLeft: "0.5rem" }}>
                            ({rec.refresh_problem.days_ago}d ago)
                        </span>
                    </div>
                )}

                {rec.new_problem && (
                    <div style={{
                        background: "#111",
                        borderRadius: "6px",
                        padding: "0.5rem 0.75rem",
                        fontSize: "13px",
                        display: "flex",
                        alignItems: "center",
                        gap: "0.5rem"
                    }}>
                        {"🆕 "}
                        <span style={{ color: "#aaa" }}>Try: </span>
                        <a
                            href={`https://leetcode.com/problems/${rec.new_problem.slug}`}
                            target="_blank"
                            rel="noreferrer"
                            style={{ color: "#34d399" }}
                        >
                            {rec.new_problem.title}
                        </a>
                        <button
                            onClick={() => onRefresh(rec.topic)}
                            style={{
                                background: "#222",
                                border: "1px solid #333",
                                borderRadius: "4px",
                                color: "#aaa",
                                cursor: "pointer",
                                fontSize: "11px",
                                padding: "2px 8px"
                            }}
                        >
                            reroll
                        </button>
                    </div>
                )}
            </div>
        </div>
    )
}

function RecommendationPanel({ recommendations, setRecommendations }) {
    const [loading, setLoading] = useState(false)

    const handleRefresh = async (topic) => {
        setLoading(true)
        try {
            const res = await fetch(`http://localhost:8000/recommendations/refresh?topic=${encodeURIComponent(topic)}`)
            const data = await res.json()
            setRecommendations(prev =>
                prev.map(r => r.topic === topic ? { ...r, new_problem: data } : r)
            )
        } catch (err) {
            console.error("refresh failed", err)
        }
        setLoading(false)
    }

    return (
        <div style={{ marginBottom: "2rem" }}>
            <h2>{"🎯 What to Study Next"}</h2>
            {loading && <p style={{ color: "#666" }}>finding new problem...</p>}
            {recommendations.map(rec => (
                <RecommendationCard
                    key={rec.topic}
                    rec={rec}
                    onRefresh={handleRefresh}
                />
            ))}
        </div>
    )
}

export default RecommendationPanel
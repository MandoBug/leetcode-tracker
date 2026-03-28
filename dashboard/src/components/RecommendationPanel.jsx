import { useState } from "react"

const tierColors = {
    "Been a while": "#ef4444",
    "Keep practicing": "#eab308",
    "Developing": "#22c55e"
}

function RecommendationCard({ rec, onRefresh }) {
    return (
        <div style={{
            borderLeft: `2px solid ${tierColors[rec.tier] || "#222"}`,
            paddingLeft: "1rem",
            marginBottom: "1.25rem",
        }}>
            <div style={{ display: "flex", justifyContent: "space-between", alignItems: "flex-start", marginBottom: "0.5rem" }}>
                <div>
                    <span style={{
                        fontSize: "14px",
                        fontWeight: "600",
                        color: "#e8e8e8",
                        marginRight: "0.5rem"
                    }}>
                        {rec.topic}
                    </span>
                    <span style={{
                        fontSize: "12px",
                        color: tierColors[rec.tier],
                        fontFamily: "'DM Mono', monospace",
                        letterSpacing: "0.06em",
                        textTransform: "uppercase"
                    }}>
                        {rec.tier}
                    </span>
                </div>
                <span style={{
                    fontSize: "12px",
                    color: "#333",
                    fontFamily: "'DM Mono', monospace"
                }}>
                    {rec.count} solved · {rec.days_since_last}d ago
                </span>
            </div>

            <div style={{ display: "flex", flexDirection: "column", gap: "0.35rem" }}>
                {rec.refresh_problem && (
                    <div style={{ fontSize: "12px", color: "#555" }}>
                        <span style={{ color: "#333", marginRight: "0.4rem", fontFamily: "'DM Mono', monospace", fontSize: "12px" }}>REFRESH</span>
                        <a
                            href={`https://leetcode.com/problems/${rec.refresh_problem.slug}`}
                            target="_blank"
                            rel="noreferrer"
                            style={{ color: "#60a5fa", textDecoration: "none" }}
                        >
                            {rec.refresh_problem.title}
                        </a>
                        <span style={{ color: "#2a2a2a", marginLeft: "0.4rem", fontFamily: "'DM Mono', monospace", fontSize: "12px" }}>
                            {rec.refresh_problem.days_ago}d ago
                        </span>
                    </div>
                )}

                {rec.new_problem && (
                    <div style={{ fontSize: "12px", display: "flex", alignItems: "center", gap: "0.5rem" }}>
                        <span style={{ color: "#333", fontFamily: "'DM Mono', monospace", fontSize: "12px" }}>TRY</span>
                        <a
                            href={`https://leetcode.com/problems/${rec.new_problem.slug}`}
                            target="_blank"
                            rel="noreferrer"
                            style={{ color: "#34d399", textDecoration: "none" }}
                        >
                            {rec.new_problem.title}
                        </a>
                        <button
                            onClick={() => onRefresh(rec.topic)}
                            style={{
                                background: "transparent",
                                border: "1px solid #1f1f1f",
                                borderRadius: "4px",
                                color: "#444",
                                cursor: "pointer",
                                fontSize: "10px",
                                padding: "2px 7px",
                                fontFamily: "'DM Mono', monospace",
                                letterSpacing: "0.04em"
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
            const res = await fetch(`https://web-production-804c4.up.railway.app/recommendations/refresh?topic=${encodeURIComponent(topic)}`)
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
        <div>
            {loading && (
                <p style={{
                    fontSize: "11px",
                    color: "#444",
                    fontFamily: "'DM Mono', monospace",
                    marginBottom: "1rem"
                }}>
                    finding problem...
                </p>
            )}
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
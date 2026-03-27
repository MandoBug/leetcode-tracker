import { BarChart, Bar, XAxis, YAxis, Tooltip, ResponsiveContainer, Cell } from "recharts"

function TopicChart({ topics }) {
    return (
        <div style={{ marginBottom: "2rem" }}>
            <h2>Topic Breakdown</h2>
            <ResponsiveContainer width="100%" height={350}>
                <BarChart data={topics} margin={{ top: 10, right: 30, left: 0, bottom: 100 }}>
                    <XAxis dataKey="topic" angle={-45} textAnchor="end" tick={{ fill: "white", fontSize: 12 }} />
                    <YAxis tick={{ fill: "white" }} />
                    <Tooltip contentStyle={{ background: "#1a1a1a", border: "none", color: "white" }} />
                    <Bar dataKey="count" radius={[4, 4, 0, 0]}>
                        {topics.map((entry, index) => (
                            <Cell key={index} fill={entry.count >= 50 ? "#22c55e" : entry.count >= 30 ? "#eab308" : "#ef4444"} />
                        ))}
                    </Bar>
                </BarChart>
            </ResponsiveContainer>
            <p style={{ color: "#666", fontSize: "12px" }}>🟢 strong (50+) &nbsp; 🟡 developing (30-49) &nbsp; 🔴 weak (0-29)</p>
        </div>
    )
}

export default TopicChart
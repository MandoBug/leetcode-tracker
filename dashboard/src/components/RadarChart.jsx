import {
    Radar,
    RadarChart,
    PolarGrid,
    PolarAngleAxis,
    ResponsiveContainer,
    Tooltip
} from "recharts"

const CORE_TOPICS = [
    "Array", "Hash Table", "String", "Dynamic Programming",
    "Tree", "Binary Search", "Stack", "Two Pointers",
    "Recursion", "Graph", "Sliding Window", "Greedy"
]

function TopicRadar({ topics }) {
    const topicMap = {}
    topics.forEach(t => { topicMap[t.topic] = t.count })

    const data = CORE_TOPICS.map(topic => ({
        topic,
        count: topicMap[topic] || 0
    }))

    return (
        <div>
            <ResponsiveContainer width="100%" height={300}>
                <RadarChart data={data}>
                    <PolarGrid stroke="#1f1f1f" />
                    <PolarAngleAxis
                        dataKey="topic"
                        tick={{ fill: "#555", fontSize: 11, fontFamily: "'DM Mono', monospace" }}
                    />
                    <Radar
                        dataKey="count"
                        stroke="#22c55e"
                        fill="#22c55e"
                        fillOpacity={0.15}
                        strokeWidth={1.5}
                    />
                    <Tooltip
                        contentStyle={{
                            background: "#0e0e0e",
                            border: "1px solid #1f1f1f",
                            borderRadius: "6px",
                            fontSize: "12px",
                            fontFamily: "'DM Mono', monospace",
                            color: "#e8e8e8"
                        }}
                    />
                </RadarChart>
            </ResponsiveContainer>
        </div>
    )
}

export default TopicRadar
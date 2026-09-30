import {
    Radar,
    RadarChart,
    PolarGrid,
    PolarAngleAxis,
    PolarRadiusAxis,
    ResponsiveContainer,
    Tooltip
} from "recharts"

// the 12 axes on the radar (short labels so they fit around the circle).
// keys are LeetCode's tag names — LC renamed "Graph" to "Graph Theory", which is why the old Graph axis sat at ~0
const CORE_TOPICS = [
    ["Array", "Array"],
    ["Hash Table", "Hash Table"],
    ["String", "String"],
    ["Dynamic Programming", "DP"],
    ["Tree", "Tree"],
    ["Binary Search", "Binary Search"],
    ["Stack", "Stack"],
    ["Two Pointers", "Two Pointers"],
    ["Recursion", "Recursion"],
    ["Graph Theory", "Graph"],
    ["Sliding Window", "Sliding Window"],
    ["Greedy", "Greedy"],
]

// how many unique problems in a topic counts as "interview ready" (same as "strong" in TopicChart).
// each axis shows progress toward this target instead of the raw count — with raw counts, Array (60+)
// squashes every other axis into the middle and the shape tells you nothing
const TARGET = 15

function RadarTooltip({ active, payload }) {
    if (!active || !payload?.length) return null
    const d = payload[0].payload
    return (
        <div className="chart-tooltip">
            <strong>{d.topic}</strong>
            {d.count} / {TARGET} problems · {Math.round(d.readiness * 100)}%
        </div>
    )
}

function TopicRadar({ topics }) {
    const topicMap = {}
    topics.forEach(t => { topicMap[t.topic] = t.count })

    const data = CORE_TOPICS.map(([topic, label]) => {
        const count = topicMap[topic] || 0
        return { topic, label, count, readiness: Math.min(count / TARGET, 1) }
    })
    const ready = data.filter(d => d.readiness >= 1).length

    return (
        <div className="card">
            <div className="card-head">
                <div>
                    <h3 className="card-title">Interview readiness</h3>
                    <p className="card-sub">progress toward {TARGET} problems per core topic · {ready}/{data.length} there</p>
                </div>
            </div>
            <ResponsiveContainer width="100%" height={320}>
                <RadarChart data={data} outerRadius="72%">
                    <PolarGrid stroke="#26262b" />
                    <PolarRadiusAxis domain={[0, 1]} tick={false} axisLine={false} tickCount={5} />
                    <PolarAngleAxis
                        dataKey="label"
                        tick={{ fill: "#a8a8b0", fontSize: 11, fontFamily: "'DM Sans', sans-serif" }}
                    />
                    <Radar
                        dataKey="readiness"
                        stroke="#22c55e"
                        fill="#22c55e"
                        fillOpacity={0.18}
                        strokeWidth={2}
                        dot={{ r: 3, fill: "#22c55e", strokeWidth: 0 }}
                        isAnimationActive={false}
                    />
                    <Tooltip content={<RadarTooltip />} />
                </RadarChart>
            </ResponsiveContainer>
        </div>
    )
}

export default TopicRadar

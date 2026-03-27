import { LineChart, Line, XAxis, YAxis, Tooltip, ResponsiveContainer, CartesianGrid } from "recharts"

function ProgressChart({ activity }) {
    // build cumulative progress over time
    let cumulative = 0
    const data = activity.map(a => {
        cumulative += a.count
        return {
            day: a.day.slice(5), // show MM-DD
            total: cumulative,
            daily: a.count
        }
    })

    return (
        <ResponsiveContainer width="100%" height={200}>
            <LineChart data={data} margin={{ top: 5, right: 10, left: 0, bottom: 5 }}>
                <CartesianGrid stroke="#111" vertical={false} />
                <XAxis
                    dataKey="day"
                    tick={{ fill: "#444", fontSize: 10, fontFamily: "'DM Mono', monospace" }}
                    interval={Math.floor(data.length / 6)}
                />
                <YAxis
                    tick={{ fill: "#444", fontSize: 10, fontFamily: "'DM Mono', monospace" }}
                    width={30}
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
                <Line
                    type="monotone"
                    dataKey="total"
                    stroke="#22c55e"
                    strokeWidth={1.5}
                    dot={false}
                />
            </LineChart>
        </ResponsiveContainer>
    )
}

export default ProgressChart
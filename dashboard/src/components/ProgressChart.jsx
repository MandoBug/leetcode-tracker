import { AreaChart, Area, XAxis, YAxis, Tooltip, ResponsiveContainer, CartesianGrid } from "recharts"

const monthTick = t => new Date(t).toLocaleDateString("en-US", { month: "short", year: "2-digit" })

function ProgressTooltip({ active, payload }) {
    if (!active || !payload?.length) return null
    const d = payload[0].payload
    return (
        <div className="chart-tooltip">
            <strong>{d.total} problems</strong>
            {new Date(d.t).toLocaleDateString("en-US", { month: "short", day: "numeric", year: "numeric" })}
            {d.added > 0 && ` · +${d.added} new`}
        </div>
    )
}

// cumulative UNIQUE problems over time (the old version added up every submission,
// so re-solving a problem made the line go up too)
function ProgressChart({ submissions, now }) {
    const sorted = submissions
        .map(s => ({ title: s.title, day: s.submitted_at.slice(0, 10) }))
        .sort((a, b) => a.day.localeCompare(b.day))

    const seen = new Set()
    const byDay = new Map() // day -> how many new problems I solved that day
    sorted.forEach(s => {
        if (seen.has(s.title)) return
        seen.add(s.title)
        byDay.set(s.day, (byDay.get(s.day) || 0) + 1)
    })

    let total = 0
    const data = [...byDay.entries()].map(([day, added]) => {
        total += added
        // noon so the timestamp lands on the right calendar day in any US timezone
        return { t: new Date(`${day}T12:00:00`).getTime(), total, added }
    })
    // extend the line to today so a quiet stretch shows up as a flat line instead of just ending
    if (data.length) data.push({ t: now, total, added: 0 })

    return (
        <div className="card">
            <div className="card-head">
                <div>
                    <h3 className="card-title">Unique problems solved</h3>
                    <p className="card-sub">cumulative, all time</p>
                </div>
            </div>
            <ResponsiveContainer width="100%" height={176}>
                <AreaChart data={data} margin={{ top: 6, right: 8, left: -12, bottom: 0 }}>
                    <defs>
                        <linearGradient id="progressFill" x1="0" y1="0" x2="0" y2="1">
                            <stop offset="0%" stopColor="#22c55e" stopOpacity={0.3} />
                            <stop offset="100%" stopColor="#22c55e" stopOpacity={0} />
                        </linearGradient>
                    </defs>
                    <CartesianGrid stroke="#1f1f23" vertical={false} />
                    <XAxis
                        dataKey="t"
                        type="number"
                        scale="time"
                        domain={["dataMin", "dataMax"]}
                        tickFormatter={monthTick}
                        tick={{ fill: "#7d7d86", fontSize: 11 }}
                        tickLine={false}
                        axisLine={{ stroke: "#26262b" }}
                        minTickGap={32}
                    />
                    <YAxis
                        tick={{ fill: "#7d7d86", fontSize: 11 }}
                        tickLine={false}
                        axisLine={false}
                        width={40}
                        allowDecimals={false}
                    />
                    <Tooltip content={<ProgressTooltip />} cursor={{ stroke: "#3a3a40" }} />
                    <Area
                        type="monotone"
                        dataKey="total"
                        stroke="#22c55e"
                        strokeWidth={2}
                        fill="url(#progressFill)"
                        isAnimationActive={false}
                    />
                </AreaChart>
            </ResponsiveContainer>
        </div>
    )
}

export default ProgressChart

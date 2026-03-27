function ActivityHeatmap({ activity }) {
    const activityMap = {}
    activity.forEach(a => { activityMap[a.day] = a.count })

    const max = Math.max(...activity.map(a => a.count))

    // build last 26 weeks (6 months) of days
    const weeks = []
    const today = new Date()
    const start = new Date(today)
    start.setDate(start.getDate() - 26 * 7)

    let current = new Date(start)
    // align to Sunday
    current.setDate(current.getDate() - current.getDay())

    for (let w = 0; w < 26; w++) {
        const week = []
        for (let d = 0; d < 7; d++) {
            const dateStr = current.toISOString().slice(0, 10)
            const count = activityMap[dateStr] || 0
            week.push({ date: dateStr, count })
            current.setDate(current.getDate() + 1)
        }
        weeks.push(week)
    }

    const getColor = (count) => {
        if (count === 0) return "#2f2f2f"
        const intensity = Math.min(count / max, 1)
        if (intensity < 0.25) return "#22ff00"
        if (intensity < 0.5) return "#f7ff01"
        if (intensity < 0.75) return "#ff6f00"
        return "#ff0000"
    }

    return (
        <div style={{ overflowX: "auto" }}>
            <div style={{ display: "flex", gap: "3px" }}>
                {weeks.map((week, wi) => (
                    <div key={wi} style={{ display: "flex", flexDirection: "column", gap: "3px" }}>
                        {week.map((day, di) => (
                            <div
                                key={di}
                                title={`${day.date}: ${day.count} solved`}
                                style={{
                                    width: "12px",
                                    height: "12px",
                                    borderRadius: "2px",
                                    background: getColor(day.count),
                                    cursor: "default"
                                }}
                            />
                        ))}
                    </div>
                ))}
            </div>
            <div style={{
                display: "flex",
                alignItems: "center",
                gap: "4px",
                marginTop: "0.75rem",
                fontFamily: "'DM Mono', monospace",
                fontSize: "10px",
                color: "#444"
            }}>
                <span>less</span>
                {["#2f2f2f", "#22ff00", "#f7ff01", "#ff6f00", "#ff0000"].map((c, i) => (
                    <div key={i} style={{ width: "10px", height: "10px", borderRadius: "2px", background: c }} />
                ))}
                <span>more</span>
            </div>
        </div>
    )
}

export default ActivityHeatmap
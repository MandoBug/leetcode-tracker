import { useState, useRef, useEffect } from "react"

const WEEKS = 26 // ~6 months
const DAY_LABELS = ["", "Mon", "", "Wed", "", "Fri", ""]

// YYYY-MM-DD in local time (toISOString converts to UTC, which can shift the day by one in the evening)
const dayKey = d =>
    `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, "0")}-${String(d.getDate()).padStart(2, "0")}`

const fmt = d => d.toLocaleDateString("en-US", { month: "short", day: "numeric", year: "numeric" })

function ActivityHeatmap({ activity, now }) {
    const [hovered, setHovered] = useState(null)
    const scrollRef = useRef(null)

    // on narrow screens the grid scrolls sideways, so start scrolled to the right so the most recent weeks are visible
    useEffect(() => {
        const el = scrollRef.current
        if (el) el.scrollLeft = el.scrollWidth
    }, [])

    const counts = {}
    activity.forEach(a => { counts[a.day] = a.count })

    // the grid ends on the Saturday of this week, so today is always in the last column
    const today = new Date(now)
    today.setHours(0, 0, 0, 0)
    const end = new Date(today)
    end.setDate(end.getDate() + (6 - end.getDay()))
    const start = new Date(end)
    start.setDate(start.getDate() - (WEEKS * 7 - 1))

    const days = []
    const months = [] // [{ week, label }]: a label wherever a new month starts
    for (let i = 0; i < WEEKS * 7; i++) {
        const d = new Date(start)
        d.setDate(start.getDate() + i)
        const key = dayKey(d)
        days.push({ date: d, key, count: counts[key] || 0, future: d > today })
        // (skip labels in the last 2 columns, there's no room for the text there)
        if (d.getDate() === 1 && i < (WEEKS - 2) * 7) months.push({ week: Math.floor(i / 7), label: d.toLocaleDateString("en-US", { month: "short" }) })
    }
    // label the first column too, unless a real month boundary is right next to it
    if (!months.length || months[0].week > 2) {
        months.unshift({ week: 0, label: start.toLocaleDateString("en-US", { month: "short" }) })
    }

    const inRange = days.filter(d => !d.future)
    const max = Math.max(1, ...inRange.map(d => d.count))
    const total = inRange.reduce((sum, d) => sum + d.count, 0)
    const activeDays = inRange.filter(d => d.count > 0).length
    // 4 intensity levels relative to my busiest day
    const level = count => count === 0 ? 0 : Math.ceil((count / max) * 4)

    return (
        <div className="card heatmap-card">
            <div className="card-head">
                <div>
                    <h3 className="card-title">Last 6 months</h3>
                    <p className="card-sub">{total} submissions across {activeDays} days</p>
                </div>
            </div>

            <div className="heat-scroll" ref={scrollRef}>
            <div className="heatmap" style={{ "--weeks": WEEKS }}>
                <div className="heat-months">
                    {months.map(m => (
                        <span key={m.week} style={{ gridColumn: m.week + 1 }}>{m.label}</span>
                    ))}
                </div>
                <div className="heat-days">
                    {DAY_LABELS.map((l, i) => <span key={i}>{l}</span>)}
                </div>
                <div className="heat-grid" onMouseLeave={() => setHovered(null)}>
                    {days.map(d => (
                        <div
                            key={d.key}
                            className={`heat-cell${d.future ? " future" : ""}`}
                            data-level={d.future ? undefined : level(d.count)}
                            title={d.future ? undefined : `${fmt(d.date)}: ${d.count} submission${d.count === 1 ? "" : "s"}`}
                            onMouseEnter={() => !d.future && setHovered(d)}
                        />
                    ))}
                </div>
            </div>
            </div>

            <div className="heat-foot">
                <span className="heat-readout">
                    {hovered
                        ? `${fmt(hovered.date)} · ${hovered.count} submission${hovered.count === 1 ? "" : "s"}`
                        : "hover or tap a day for details"}
                </span>
                <span className="heat-scale" aria-hidden="true">
                    less
                    {[0, 1, 2, 3, 4].map(l => <i key={l} style={{ background: `var(--heat-${l})` }} />)}
                    more
                </span>
            </div>
        </div>
    )
}

export default ActivityHeatmap

import { useState, useEffect, useCallback } from "react"
import { getJSON } from "./api"
import TopicChart from "./components/TopicChart"
import SubmissionFeed from "./components/SubmissionFeed"
import RecommendationPanel from "./components/RecommendationPanel"
import TopicRadar from "./components/RadarChart"
import ActivityHeatmap from "./components/ActivityHeatmap"
import ProgressChart from "./components/ProgressChart"

const DIFFICULTIES = [
  { key: "Easy", color: "var(--easy)" },
  { key: "Medium", color: "var(--medium)" },
  { key: "Hard", color: "var(--hard)" },
]

function Section({ title, sub, children }) {
  return (
    <section>
      <div className="section-head">
        <div>
          <h2 className="section-title">{title}</h2>
          {sub && <p className="section-sub">{sub}</p>}
        </div>
      </div>
      {children}
    </section>
  )
}

function Stat({ value, total, label }) {
  return (
    <div className="stat">
      <div className="stat-value">
        {value}
        {total !== undefined && <small> / {total}</small>}
      </div>
      <div className="stat-label">{label}</div>
    </div>
  )
}

// thin stacked bar showing how my unique solves split across easy / medium / hard
function DifficultySplit({ counts, total }) {
  if (!total) return null
  return (
    <div className="split">
      <div className="split-bar">
        {DIFFICULTIES.map(d => (
          <div key={d.key} style={{ width: `${(counts[d.key] / total) * 100}%`, background: d.color }} />
        ))}
      </div>
      <div className="split-legend">
        {DIFFICULTIES.map(d => (
          <span key={d.key}>
            <i className="dot" style={{ background: d.color }} />
            {d.key} <b>{counts[d.key]}</b>
          </span>
        ))}
      </div>
    </div>
  )
}

function App() {
  const [data, setData] = useState(null)
  const [error, setError] = useState(null)

  const load = useCallback(() => {
    Promise.all([
      getJSON("/submissions"),
      getJSON("/topics"),
      getJSON("/recommendations"),
      getJSON("/activity"),
    ])
      .then(([submissions, topics, recommendations, activity]) =>
        // loadedAt = "now" for the charts, captured once here instead of calling Date.now() while rendering
        setData({ submissions, topics, recommendations, activity, loadedAt: Date.now() }))
      .catch(err => setError(err))
  }, [])

  useEffect(() => { load() }, [load])

  // recommendations get their own setter so the reroll button can swap out one card's problem
  const setRecommendations = useCallback(update => {
    setData(prev => ({ ...prev, recommendations: update(prev.recommendations) }))
  }, [])

  if (error) return (
    <div className="state">
      <div>
        <p>couldn't reach the tracker api</p>
        <button className="btn" style={{ marginTop: 16 }} onClick={() => { setError(null); load() }}>try again</button>
      </div>
    </div>
  )

  if (!data) return (
    <div className="state loading"><span>loading tracker…</span></div>
  )

  const { submissions, topics, recommendations, activity, loadedAt } = data

  // unique problems by title, so re-solving the same problem doesn't inflate anything
  const uniqueProblems = new Map()
  submissions.forEach(s => uniqueProblems.set(s.title, s.difficulty))
  const difficultyCounts = { Easy: 0, Medium: 0, Hard: 0 }
  uniqueProblems.forEach(d => { if (d in difficultyCounts) difficultyCounts[d]++ })

  const totalSolved = uniqueProblems.size
  const activeDays = new Set(submissions.map(s => s.submitted_at?.slice(0, 10))).size
  const interviewTopics = topics.filter(t => t.interview)
  const interviewCovered = interviewTopics.filter(t => t.count > 0).length
  const lastSolved = submissions[0] && new Date(submissions[0].submitted_at)

  return (
    <div className="app">
      <header className="topbar">
        <span className="wordmark">LC <span>·</span> Tracker</span>
        {lastSolved && (
          <span className="sync">
            last solve {lastSolved.toLocaleDateString("en-US", { month: "short", day: "numeric" })}
          </span>
        )}
      </header>

      <div className="shell">
        <aside className="sidebar">
          <div className="profile">
            <div className="avatar-wrap">
              <img src="https://github.com/MandoBug.png" alt="Armando Tamayo" className="avatar" />
              <span className="avatar-dot" />
            </div>
            <div className="profile-name">Armando Tamayo</div>
            <div className="profile-title">Computer Engineering · Applied Math<br />UC Santa Cruz</div>
            <p className="profile-bio">
              Aspiring engineer who builds things to learn things. Open to opportunities — let's connect!
            </p>
            <div className="profile-links">
              <a className="btn" href="https://github.com/MandoBug" target="_blank" rel="noreferrer">GitHub</a>
              <a className="btn" href="https://www.linkedin.com/in/armando-tamayo-518519335/" target="_blank" rel="noreferrer">LinkedIn</a>
              <a className="btn" href="mailto:mandoschool1@gmail.com">Email</a>
            </div>
          </div>

          <div>
            <div className="block-label">Stats</div>
            <div className="stat-grid">
              <Stat value={totalSolved} label="unique solved" />
              <Stat value={activeDays} label="active days" />
              <Stat value={difficultyCounts.Medium + difficultyCounts.Hard} label="medium / hard" />
              <Stat value={interviewCovered} total={interviewTopics.length} label="interview topics" />
            </div>
            <DifficultySplit counts={difficultyCounts} total={totalSolved} />
          </div>

          <div>
            <div className="block-label">Recent</div>
            <SubmissionFeed submissions={submissions} />
          </div>
        </aside>

        <main className="content">
          <Section
            title="What to study next"
            sub="Interview topics ranked by how few problems I've done, how long it's been, and how easy they were."
          >
            <RecommendationPanel
              recommendations={recommendations}
              setRecommendations={setRecommendations}
            />
          </Section>

          <Section title="Topic coverage">
            <div className="grid-topics">
              <TopicRadar topics={topics} />
              <TopicChart topics={topics} />
            </div>
          </Section>

          <Section title="Activity">
            <div className="grid-activity">
              <ActivityHeatmap activity={activity} now={loadedAt} />
              <ProgressChart submissions={submissions} now={loadedAt} />
            </div>
          </Section>
        </main>
      </div>
    </div>
  )
}

export default App

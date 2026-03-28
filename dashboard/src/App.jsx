import { useState, useEffect } from "react"
import TopicChart from "./components/TopicChart"
import SubmissionFeed from "./components/SubmissionFeed"
import RecommendationPanel from "./components/RecommendationPanel"
import TopicRadar from "./components/RadarChart"
import ActivityHeatmap from "./components/ActivityHeatmap"
import ProgressChart from "./components/ProgressChart"

const styles = `
  @import url('https://fonts.googleapis.com/css2?family=DM+Mono:wght@300;400;500&family=DM+Sans:ital,wght@0,300;0,400;0,500;0,600;1,300&display=swap');

  *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

  html, body, #root {
    width: 100%;
    min-height: 100vh;
  }

  body {
    background: #060606;
    color: #e0e0e0;
    font-family: 'DM Sans', sans-serif;
    -webkit-font-smoothing: antialiased;
    overflow-x: hidden;
  }

  .app {
    width: 100%;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
  }

  /* TOP BAR */
  .top-bar {
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 1.25rem 2.5rem;
    border-bottom: 1px solid #111;
    position: sticky;
    top: 0;
    background: rgba(6,6,6,0.95);
    backdrop-filter: blur(16px);
    z-index: 100;
  }

  .wordmark {
    font-family: 'DM Mono', monospace;
    font-size: 12px;
    color: #333;
    letter-spacing: 0.18em;
    text-transform: uppercase;
  }

  .live-badge {
    display: flex;
    align-items: center;
    gap: 7px;
    font-family: 'DM Mono', monospace;
    font-size: 11px;
    color: #2a2a2a;
    letter-spacing: 0.1em;
  }

  .live-badge::before {
    content: '';
    width: 7px;
    height: 7px;
    border-radius: 50%;
    background: #22c55e;
    box-shadow: 0 0 8px #22c55e88;
    animation: pulse 2.5s ease-in-out infinite;
  }

  @keyframes pulse {
    0%, 100% { opacity: 1; transform: scale(1); }
    50% { opacity: 0.5; transform: scale(0.85); }
  }

  /* MAIN GRID — true full width, two columns */
  .main {
    display: grid;
    grid-template-columns: 320px 1fr;
    flex: 1;
    width: 100%;
  }

  /* LEFT SIDEBAR */
  .sidebar {
    border-right: 1px solid #111;
    padding: 2rem 1.75rem;
    display: flex;
    flex-direction: column;
    gap: 2.5rem;
    position: sticky;
    top: 53px;
    height: calc(100vh - 53px);
    overflow-y: auto;
    width: 100%;
  }

  .sidebar::-webkit-scrollbar { display: none; }

  .avatar-wrap {
    position: relative;
    margin-bottom: 1rem;
    display: inline-block;
  }

  .avatar {
    width: 64px;
    height: 64px;
    border-radius: 50%;
    border: 1px solid #1a1a1a;
    display: block;
  }

  .online-ring {
    position: absolute;
    bottom: 1px;
    right: 1px;
    width: 11px;
    height: 11px;
    border-radius: 50%;
    background: #22c55e;
    border: 2px solid #060606;
    box-shadow: 0 0 6px #22c55e66;
  }

  .profile-name {
    font-size: 20px;
    font-weight: 600;
    color: #f5f5f5;
    letter-spacing: -0.03em;
    margin-bottom: 3px;
  }

  .profile-title {
    font-family: 'DM Mono', monospace;
    font-size: 12px;
    color: #333;
    letter-spacing: 0.04em;
    line-height: 1.9;
    margin-bottom: 0.9rem;
  }

  .profile-bio {
    font-size: 13px;
    color: #444;
    line-height: 1.75;
    margin-bottom: 1.1rem;
    font-style: italic;
    font-weight: 300;
  }

  .profile-links {
    display: flex;
    gap: 0.5rem;
  }

  .profile-link {
    padding: 5px 12px;
    border-radius: 5px;
    border: 1px solid #181818;
    background: transparent;
    color: #444;
    text-decoration: none;
    font-size: 11px;
    font-family: 'DM Mono', monospace;
    letter-spacing: 0.05em;
    transition: all 0.12s ease;
  }

  .profile-link:hover { border-color: #2a2a2a; color: #bbb; }

  .section-label {
    font-family: 'DM Mono', monospace;
    font-size: 12px;
    color: #272727;
    letter-spacing: 0.22em;
    text-transform: uppercase;
    margin-bottom: 0.9rem;
  }

  .stat-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 1px;
    background: #111;
    border: 1px solid #111;
    border-radius: 10px;
    overflow: hidden;
  }

  .stat-box {
    background: #090909;
    padding: 1rem 0.9rem;
  }

  .stat-value {
    font-family: 'DM Mono', monospace;
    font-size: 26px;
    font-weight: 400;
    color: #f0f0f0;
    line-height: 1;
    margin-bottom: 4px;
    letter-spacing: -0.02em;
  }

  .stat-label {
    font-size: 12px;
    color: #2e2e2e;
  }

  /* RIGHT CONTENT */
  .content {
    width: 100%;
    padding: 2rem 2.5rem;
    display: flex;
    flex-direction: column;
    gap: 3rem;
  }

  .section {
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
    width: 100%;
  }

  .section-header {
    display: flex;
    align-items: center;
    gap: 1rem;
    width: 100%;
  }

  .section-title {
    font-family: 'DM Mono', monospace;
    font-size: 14px;
    color: #272727;
    letter-spacing: 0.22em;
    text-transform: uppercase;
    white-space: nowrap;
  }

  .section-line {
    flex: 1;
    height: 1px;
    background: #111;
  }

  .chart-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 2.5rem;
    width: 100%;
    align-items: center;
  }

  .loading {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
    width: 100%;
    font-family: 'DM Mono', monospace;
    font-size: 12px;
    color: #1f1f1f;
    letter-spacing: 0.15em;
  }
`

function SectionHeader({ label }) {
  return (
    <div className="section-header">
      <span className="section-title">{label}</span>
      <div className="section-line" />
    </div>
  )
}

function App() {
  const [submissions, setSubmissions] = useState([])
  const [topics, setTopics] = useState([])
  const [recommendations, setRecommendations] = useState([])
  const [activity, setActivity] = useState([])
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    Promise.all([
      fetch("https://web-production-804c4.up.railway.app/submissions").then(res => res.json()),
      fetch("https://web-production-804c4.up.railway.app/topics").then(res => res.json()),
      fetch("https://web-production-804c4.up.railway.app/recommendations").then(res => res.json()),
      fetch("https://web-production-804c4.up.railway.app/activity").then(res => res.json()),
    ]).then(([submissionsData, topicsData, recommendationsData, activityData]) => {
      setSubmissions(submissionsData)
      setTopics(topicsData)
      setRecommendations(recommendationsData)
      setActivity(activityData)
      setLoading(false)
    })
  }, [])

  if (loading) return (
    <>
      <style>{styles}</style>
      <div className="loading">initializing tracker</div>
    </>
  )

  const totalSolved = new Set(submissions.map(s => s.title)).size
  const medHard = new Set(submissions.filter(s => s.difficulty === "Medium" || s.difficulty === "Hard").map(s => s.title)).size
  const streak = [...new Set(submissions.map(s => s.submitted_at?.slice(0, 10)))].length

  return (
    <>
      <style>{styles}</style>
      <div className="app">

        <div className="top-bar">
          <span className="wordmark">LC · Tracker</span>
          <span className="live-badge">live</span>
        </div>

        <div className="main">

          {/* SIDEBAR */}
          
          <div className="sidebar">

            <div style={{ textAlign: "center"}}>
              <div className="avatar-wrap">
                <img src="https://github.com/MandoBug.png" alt="Armando" className="avatar" />
                <div className="online-ring" />
              </div>
              <div className="profile-name">Armando Tamayo</div>
              <div className="profile-title">
                Computer Engineering · Applied Mathematics<br />
                UC Santa Cruz
              </div>
              <div className="profile-bio">
                Building things that actually work — from low-level systems to full-stack apps to ML pipelines. Currently grinding LeetCode daily.
              </div>
              <div className="profile-links">
                <a href="https://github.com/MandoBug" target="_blank" rel="noreferrer" className="profile-link">GitHub</a>
                <a href="https://www.linkedin.com/in/armando-tamayo-518519335/" target="_blank" rel="noreferrer" className="profile-link">LinkedIn</a>
                <a href="mailto:mandoschool1@gmail.com" className="profile-link">Email</a>
              </div>
            </div>

            <div>
              <div className="section-label">Stats</div>
              <div className="stat-grid">
                <div className="stat-box">
                  <div className="stat-value">{totalSolved}</div>
                  <div className="stat-label">unique solved</div>
                </div>
                <div className="stat-box">
                  <div className="stat-value">{streak}</div>
                  <div className="stat-label">active days</div>
                </div>
                <div className="stat-box">
                  <div className="stat-value">{medHard}</div>
                  <div className="stat-label">med / hard</div>
                </div>
                <div className="stat-box">
                  <div className="stat-value">{topics.length}</div>
                  <div className="stat-label">topics touched</div>
                </div>
              </div>
            </div>

            <div>
              <div className="section-label">Recent</div>
              <SubmissionFeed submissions={submissions} />
            </div>

          </div>

          {/* CONTENT */}
          <div className="content">

            <div className="section">
              <SectionHeader label="Topic analysis" />
              <div className="chart-grid">
                <TopicChart topics={topics} />
                <TopicRadar topics={topics} />
              </div>
            </div>
            <div style={{ display: "flex", justifyContent: "center" }}>
            <div className="section">
              <SectionHeader label="Activity — last 6 months" />
              <ActivityHeatmap activity={activity} />
            </div>
            </div>
            <div className="section">
              <SectionHeader label="Progress over time" />
              <ProgressChart activity={activity} />
            </div>

            <div className="section">
              <SectionHeader label="What to study next" />
              <RecommendationPanel
                recommendations={recommendations}
                setRecommendations={setRecommendations}
              />
            </div>

          </div>
        </div>
      </div>
    </>
  )
}

export default App
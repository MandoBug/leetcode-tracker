import { useState, useEffect } from "react"
import TopicChart from "./components/TopicChart"
import SubmissionFeed from "./components/SubmissionFeed"
import RecommendationPanel from "./components/RecommendationPanel"

const styles = `
  @import url('https://fonts.googleapis.com/css2?family=DM+Mono:wght@300;400;500&family=DM+Sans:wght@300;400;500;600&display=swap');

  * { box-sizing: border-box; margin: 0; padding: 0; }

  body {
    background: #080808;
    color: #e8e8e8;
    font-family: 'DM Sans', sans-serif;
    min-height: 100vh;
  }

  .app {
    max-width: 2000px;
    margin: 0 auto;
    padding:  2.5rem 1.25rem;
  }

  .top-bar {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-bottom: 2.5rem;
    padding-bottom: 1.5rem;
    border-bottom: 1px solid #1a1a1a;
  }

  .wordmark {
    font-family: 'DM Mono', monospace;
    font-size: 13px;
    font-weight: 400;
    color: #444;
    letter-spacing: 0.12em;
    text-transform: uppercase;
  }

  .live-dot {
    display: flex;
    align-items: center;
    gap: 6px;
    font-family: 'DM Mono', monospace;
    font-size: 11px;
    color: #444;
    letter-spacing: 0.08em;
  }

  .live-dot::before {
    content: '';
    width: 6px;
    height: 6px;
    border-radius: 50%;
    background: #22c55e;
    box-shadow: 0 0 6px #22c55e;
    animation: pulse 2s infinite;
  }

  @keyframes pulse {
    0%, 100% { opacity: 1; }
    50% { opacity: 0.4; }
  }

  .main-grid {
    display: grid;
    grid-template-columns: 400px 1fr;
    gap: 1.5rem;
    align-items: start;
  }

  .left-col {
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
    position: sticky;
    top: 2rem;
  }

  .right-col {
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
  }

  .card {
    background: #0e0e0e;
    border: 1px solid #1a1a1a;
    border-radius: 18px;
    padding: 1.5rem;
  }

  .profile-card {
    text-align: center;
  }

  .avatar-wrap {
    position: relative;
    display: inline-block;
    margin-bottom: 1rem;
  }

  .avatar {
    width: 100px;
    height: 100px;
    border-radius: 60%;
    border: 2px solid #1f1f1f;
    display: block;
  }

  .avatar-ring {
    position: absolute;
    inset: -4px;
    border-radius: 50%;
    border: 1px solid #2a2a2a;
  }

  .profile-name {
    font-size: 18px;
    font-weight: 600;
    color: #f0f0f0;
    margin-bottom: 4px;
    letter-spacing: -0.02em;
  }

  .profile-title {
    font-family: 'DM Mono', monospace;
    font-size: 11px;
    color: #555;
    letter-spacing: 0.06em;
    text-transform: uppercase;
    margin-bottom: 1rem;
    line-height: 1.6;
  }

  .profile-bio {
    font-size: 13px;
    color: #666;
    line-height: 1.7;
    margin-bottom: 1.25rem;
  }

  .profile-links {
    display: flex;
    gap: 0.5rem;
    justify-content: center;
  }

  .profile-link {
    display: flex;
    align-items: center;
    gap: 6px;
    padding: 6px 14px;
    border-radius: 6px;
    border: 1px solid #1f1f1f;
    background: #111;
    color: #aaa;
    text-decoration: none;
    font-size: 12px;
    font-family: 'DM Mono', monospace;
    transition: all 0.15s ease;
  }

  .profile-link:hover {
    border-color: #333;
    color: #e8e8e8;
    background: #161616;
  }

  .stat-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 0.75rem;
  }

  .stat-box {
    background: #111;
    border: 1px solid #1a1a1a;
    border-radius: 8px;
    padding: 0.875rem;
  }

  .stat-value {
    font-family: 'DM Mono', monospace;
    font-size: 22px;
    font-weight: 500;
    color: #f0f0f0;
    line-height: 1;
    margin-bottom: 4px;
  }

  .stat-label {
    font-size: 11px;
    color: #555;
    letter-spacing: 0.04em;
  }

  .section-label {
    font-family: 'DM Mono', monospace;
    font-size: 10px;
    color: #444;
    letter-spacing: 0.12em;
    text-transform: uppercase;
    margin-bottom: 1rem;
  }

  .loading {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
    font-family: 'DM Mono', monospace;
    font-size: 13px;
    color: #333;
    letter-spacing: 0.1em;
  }

  .loading::after {
    content: '...';
    animation: dots 1.5s infinite;
  }

  @keyframes dots {
    0%, 100% { opacity: 0.2; }
    50% { opacity: 1; }
  }
`

function App() {
  const [submissions, setSubmissions] = useState([])
  const [topics, setTopics] = useState([])
  const [recommendations, setRecommendations] = useState([])
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    Promise.all([
      fetch("http://localhost:8000/submissions").then(res => res.json()),
      fetch("http://localhost:8000/topics").then(res => res.json()),
      fetch("http://localhost:8000/recommendations").then(res => res.json()),
    ]).then(([submissionsData, topicsData, recommendationsData]) => {
      setSubmissions(submissionsData)
      setTopics(topicsData)
      setRecommendations(recommendationsData)
      setLoading(false)
    })
  }, [])

  if (loading) return (
    <>
      <style>{styles}</style>
      <div className="loading">initializing tracker</div>
    </>
  )

  const totalSolved = submissions.length
  const medHard = submissions.filter(s => s.difficulty === "Medium" || s.difficulty === "Hard").length
  const topTopics = topics.slice(0, 2).map(t => t.topic).join(", ")
  const streak = [...new Set(submissions.map(s => s.submitted_at?.slice(0, 10)))].length

  return (
    <>
      <style>{styles}</style>
      <div className="app">

        <div className="top-bar">
          <span className="wordmark">LC Tracker</span>
          <span className="live-dot">live</span>
        </div>

        <div className="main-grid">

          {/* LEFT COLUMN */}
          <div className="left-col">

            {/* Profile Card */}
            <div className="card profile-card">
              <div className="avatar-wrap">
                <img
                  src="https://github.com/MandoBug.png"
                  alt="Armando"
                  className="avatar"
                />
                <div className="avatar-ring" />
              </div>
              <div className="profile-name">Armando Tamayo</div>
              <div className="profile-title">
                Computer Engineering<br />
                {"&"} Applied Mathematics<br />
                UC Santa Cruz
              </div>
              <div className="profile-bio">
                Building things that actually work — from low-level systems to full-stack apps to ML pipelines. Currently grinding LeetCode daily.
              </div>
              <div className="profile-links">
                <a
                  href="https://github.com/MandoBug"
                  target="_blank"
                  rel="noreferrer"
                  className="profile-link"
                >
                  GitHub
                </a>
                <a
                  href="https://www.linkedin.com/in/armando-tamayo-518519335/"
                  target="_blank"
                  rel="noreferrer"
                  className="profile-link"
                >
                  LinkedIn
                </a>
              </div>
            </div>

            {/* Stats Card */}
            <div className="card">
              <div className="section-label">Stats</div>
              <div className="stat-grid">
                <div className="stat-box">
                  <div className="stat-value">{totalSolved}</div>
                  <div className="stat-label">problems solved</div>
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

            {/* Submission Feed */}
            <div className="card">
              <div className="section-label">Recent</div>
              <SubmissionFeed submissions={submissions} />
            </div>

          </div>

          {/* RIGHT COLUMN */}
          <div className="right-col">
            <div className="card">
              <div className="section-label">What to study next</div>
              <RecommendationPanel
                recommendations={recommendations}
                setRecommendations={setRecommendations}
              />
            </div>

            <div className="card">
              <div className="section-label">Topic breakdown</div>
              <TopicChart topics={topics} />
            </div>
          </div>

        </div>
      </div>
    </>
  )
}

export default App
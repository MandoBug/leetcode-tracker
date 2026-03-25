import { useState, useEffect } from "react"
import TopicChart from "./components/TopicChart"
import SubmissionFeed from "./components/SubmissionFeed"

function App() {
  const [submissions, setSubmissions] = useState([])
  const [topics, setTopics] = useState([])
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    Promise.all([
      fetch("http://localhost:8000/submissions").then(res => res.json()),
      fetch("http://localhost:8000/topics").then(res => res.json()),
    ]).then(([submissionsData, topicsData]) => {
      setSubmissions(submissionsData)
      setTopics(topicsData)
      setLoading(false)
    })
  }, [])

  if (loading) return <p>loading...</p>

  return (
    <div style={{ padding: "2rem", fontFamily: "montserrat", background: "#0f0f0f", minHeight: "100vh", color: "white" }}>
      <h1>LeetCode Tracker</h1>
      <TopicChart topics={topics} />
      <SubmissionFeed submissions={submissions} />
    </div>
  )
}

export default App
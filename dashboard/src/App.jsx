import { useState, useEffect, useCallback } from "react"
import { getJSON } from "./api"
import { useRoute, to } from "./router"
import Dashboard from "./pages/Dashboard"
import NotesPage from "./pages/NotesPage"

// top-level: loads the data once, draws the top bar, and picks the page from the url (see router.js)
function App() {
  const route = useRoute()
  const [data, setData] = useState(null)
  const [error, setError] = useState(null)

  const load = useCallback(() => {
    Promise.all([
      getJSON("/submissions"),
      getJSON("/topics"),
      getJSON("/recommendations"),
      getJSON("/activity"),
      getJSON("/goal"),
      getJSON("/review"),
    ])
      .then(([submissions, topics, recommendations, activity, goal, review]) =>
        // loadedAt = "now" for the charts, captured once here instead of calling Date.now() while rendering
        setData({ submissions, topics, recommendations, activity, goal, review, loadedAt: Date.now() }))
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

  const lastSolved = data.submissions[0] && new Date(data.submissions[0].submitted_at)

  return (
    <div className="app">
      <header className="topbar">
        <div className="topbar-left">
          <a className="wordmark" href={to()}>LC <span>·</span> Tracker</a>
          <nav className="tabs">
            <a href={to()} className={route.page !== "notes" ? "on" : ""}>Dashboard</a>
            <a href={to("notes")} className={route.page === "notes" ? "on" : ""}>Notes</a>
          </nav>
        </div>
        {lastSolved && (
          <span className="sync">
            last solve {lastSolved.toLocaleDateString("en-US", { month: "short", day: "numeric" })}
          </span>
        )}
      </header>

      {route.page === "notes" && <NotesPage slug={route.param} submissions={data.submissions} now={data.loadedAt} />}
      {/* any unknown url falls back to the dashboard */}
      {route.page !== "notes" && <Dashboard data={data} setRecommendations={setRecommendations} />}
    </div>
  )
}

export default App

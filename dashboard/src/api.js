// one place for the API url, so switching between local and production is a one-line change.
// set VITE_API_URL in dashboard/.env (e.g. VITE_API_URL=http://localhost:8000) to point at a local backend
export const API_URL = import.meta.env.VITE_API_URL || "https://web-production-804c4.up.railway.app"

export async function getJSON(path) {
    const res = await fetch(`${API_URL}${path}`)
    if (!res.ok) throw new Error(`${path} returned ${res.status}`)
    return res.json()
}

# Product Context

Captures what the product does, who it serves, and what problem it solves.
Agents read this when they need customer context, use case clarity, or competitive framing.
Update when your audience or product scope changes.

---

## Description (1–2 sentences)
CourtIQ is a mobile app for youth basketball players (ages 10–18) to watch drill videos, log completions, and track improvement over time. Coaches can assign drills to their players and monitor completion between training sessions.

## Target customer segment(s)
- Youth players (ages 10–18): primary users, self-directed training between sessions
- Parents: economic buyers, pay for premium subscriptions, care about visible progress
- Youth coaches: power users and growth channel, assign drills, track their players

## Core user problem
Players have no structured way to improve between coaching sessions. They can find basketball videos on YouTube, but there's no system that tells them what to work on, tracks whether they did it, or shows them they're improving. They show up to the next session having done whatever felt fun — not what would make them better.

## Product Structure (live app)
- **3 skill categories**: Ball Handling, Shooting, Finishing
- **3 levels per skill**: Foundation → Control → Game Speed (gated progression — must complete current level to unlock next)
- **5 drills per level = 45 drills total** in the current library
- **Completion tracking**: Each drill is logged in a `completedDrills[]` array per user
- **Streak tracking**: `streakDays` counter — increments each day a user completes ≥1 drill. Resets on missed days.
- **Video format**: YouTube embeds (currently long-form, 8–12 min average — short-form conversion in progress via INI-001)
- See full catalog: [[drill-catalog]]

## Business model
- Freemium: free tier gives access to 20 drills (Ball Handling Foundation + partial Shooting Foundation) and basic logging
- Premium subscription: ₪29/month or ₪240/year — unlocks all 45 drills, progress analytics, and parent dashboard
- Coach accounts: free during beta; monetisation model to be determined in Q3 2026

## Competitive positioning
- vs. YouTube: CourtIQ has structure, progression, and tracking — YouTube is a library with no memory
- vs. generic fitness apps (Nike Training, etc.): Basketball-specific content and skill tracking, not generic fitness
- vs. coaching apps (TeamSnap, Hudl): We serve the between-session space, not team management or game film

> **© Yaniv Yaakubovich**
> Product Management & AI Consulting: [www.verve-pm.com](www.verve-pm.com)

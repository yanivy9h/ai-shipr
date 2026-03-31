# Learning Log

What we have learned across sessions. Updated after every session where something new was validated.

---

## Format

Each entry: date, what was learned, source (initiative / experiment / observation), and implication.

---

## Log

### 2026-01-28 — Notification opt-in drop is an iOS permission problem, not a messaging problem

**Source:** Post-mortem analysis of Q4 2025 push opt-in decline (from 60% to 54%)

**What happened:** Opt-in rate dropped 6 points after Apple changed the iOS push permission prompt timing in the iOS 18.2 update. The prompt now appears earlier in onboarding — before users have experienced a lesson they care about protecting. Users declining the prompt before they feel attached to the app.

**Implication:** Rewriting notification copy won't fix this. The problem is when the ask happens, not how it's worded. Two options: (1) delay the permission prompt until after day-3 or a streak has formed, (2) use in-app messaging before the system prompt to pre-warm users on why notifications matter. Option 1 is simpler and higher confidence — brief engineering on effort.

---

### 2026-02-14 — Users who lose a streak don't re-engage because of motivation — they re-engage because of sunk cost

**Source:** Qualitative study — 12 user interviews with churned users who had streaks of 3–10 days

**What happened:** When asked why they didn't return after losing their streak, 9 of 12 said some version of: "I'd have to start over." Three said the broken flame made them feel like they'd "failed." None mentioned the language goal — they mentioned the streak. Zero mentioned Duolingo's reminder notifications as something that would have brought them back.

**Implication:** The sunk cost frame is more powerful than the motivation frame for streak recovery. The message that might work is not "don't give up on Spanish" — it's "your 8 days of work is still there. You're not starting over." The streak repair screen should lead with what's preserved, not what was lost.

---

> **© Yaniv Yaakubovich**
> Product Management & AI Consulting: [www.verve-pm.com](www.verve-pm.com)

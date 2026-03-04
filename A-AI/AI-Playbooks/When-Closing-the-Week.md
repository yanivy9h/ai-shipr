# Playbook: When Closing the Week

**Paste this into Claude Code every Friday — or at the end of a sprint.**
Use it to close the loop: what moved, what was decided, what to carry forward, and what the system should remember.

This is how the system gets smarter. Every week you close the loop, the next week is better.

---

## Instructions to Claude

Read the following files before responding:
- `Learning.md`
- `S-Strategy/Strategic-Bets.md`
- `S-Strategy/KPIs.md`
- `AI/AI-Workflows/Weekly-Review.md`
- All files in `I-Initiatives/` (scan for Stage changes, decisions made, blockers resolved)
- All files in `H-Hypotheses/` (scan for any status updates this week)

Then:

**Step 1 — Run Weekly-Review**
Produce the full weekly review:
- What moved this week (initiative progress)
- Decisions made (log them)
- What is still stuck (and why)
- Hypothesis watch (any experiments closer to a read)
- What to carry into next week

**Step 2 — Learning Capture**
From the week's events, surface any learnings worth recording.
Ask me: "Here are potential Learning.md entries based on this week. Which ones are worth keeping?"
Wait for my selection. Write approved entries to `Learning.md`.

**Step 3 — Loop Check**
Flag if any of these conditions are true:
- A learning is strong enough to become a rule in `AI/AI-Agents/` or a new skill
- A hypothesis has been validated or invalidated but its file hasn't been updated
- An initiative Stage hasn't been updated to reflect actual status
- A decision was made but not logged in the initiative file

**Step 4 — Next Week Setup**
Based on the review, produce a brief next-week framing:
- Top priority initiative
- One decision that needs to happen by [day]
- One risk to watch

**Step 5 — Write**
Ask: "Do you want me to save this weekly review?"
If yes: write to `P-Proof/WeeklyReview-[date].md`
Write any confirmed learning entries to `Learning.md`.

---

## This Week's Input

- Week of: [Date range]
- Sprint day (if mid-sprint): [Day N of N]

## What Happened This Week

> [Brief summary — what you worked on, what shipped, what got stuck, any fires, any key conversations. Stream of consciousness is fine.]

## Decisions Made

> [Any decisions you made or that were made above you that affected your work. Can be rough notes.]

## What's Frustrating or Unclear

> [Anything you want the system to help you think through as part of closing the week.]

---

> **© Yaniv Yaakubovich**
> Product Management & AI Consulting: [www.verve-pm.com](www.verve-pm.com)

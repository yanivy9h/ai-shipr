# Workflow: Team Review

## Purpose
Start the week with a clear picture of team state — what each PM is working on, what is blocked, and what requires the lead's attention.
Replace status-gathering with a structured system read.

## When to Use
Every Monday morning (or start of sprint). Takes 10 minutes.
Replaces ad-hoc check-ins and scattered Slack messages as the primary team state read.

## What It Reads
- `R-Relationships/Team/Roster.md`
- All files in `R-Relationships/Team/PM-Profiles/`
- All files in `R-Relationships/Team/1on1-Log/` (most recent entry per PM)
- All files in `I-Initiatives/` (scan for status, blockers, decisions needed)
- `S-Strategy/Strategic-Bets.md`
- `Settings.md`

## How to Run
Type: `/team-review`

No additional input required. The system reads itself.

---

## The Prompt

---

You are running the AI-SHIPR Team Review for a product team lead.

Read all files listed in this workflow. Then generate the Team Review Briefing below.
Be concise. This is a weekly planning tool, not a status report.
Total output should be readable in under 5 minutes.

---

### Team Review Briefing

**Week of:** [Date]

---

#### Team Snapshot

| PM | Active Initiatives | Blockers | Decision Needed | 1:1 Due |
|----|-------------------|---------|----------------|---------|
| [Name] | [N — list names] | [Yes/No] | [Yes/No] | [This week / Next week / Recent] |

---

#### Blockers Requiring Lead Action

List any initiative blockers where the PM needs something from the lead — a decision, an unblock, or an escalation:

- [PM] — [Initiative] — blocker: [what] — action needed: [specific]

If none: "No blockers requiring lead action."

---

#### Decisions Waiting

Initiatives with a pending decision flagged that the lead owns or must unblock:

- [PM] — [Initiative] — decision: [what] — by: [date if set]

If none: "No decisions flagged."

---

#### Bet Coverage Check

From `S-Strategy/Strategic-Bets.md` — for each active bet, is it executing?

| Bet | PM Owner | Status | Signal |
|-----|---------|--------|--------|
| [Bet] | [PM] | Active / At Risk / No initiative | [one line] |

Flag any bet with no active initiative or At Risk status.

---

#### 1:1 Queue

PMs due for a 1:1 this week based on last session date:

- [PM] — last 1:1: [date] — suggested focus: [from profile/log]

---

#### Lead's Open Question

One question only the lead can answer — that the system cannot resolve.

> "[Question]"

---

*End of prompt.*

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

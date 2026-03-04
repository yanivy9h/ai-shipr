# Workflow: Roadmap Planner

## Purpose
Translate strategic bets into a structured, sequenced initiative stack.
Surface coverage gaps, sequencing conflicts, and decisions blocking forward movement.

## When to Use
- Quarterly or monthly planning sessions
- Before a roadmap review with leadership or stakeholders
- When the initiative list feels crowded or disconnected from strategy
- When a new strategic bet has been added and the roadmap has not caught up

## What It Reads
Before running, Claude must read:
- `S-Strategy/Strategic-Bets.md`
- `S-Strategy/KPIs.md`
- `S-Strategy/Constraints.md`
- All files in `I-Initiatives/`
- All files in `H-Hypotheses/` (status only)

## How to Run
Type: `/plan` or "Run Roadmap Planner"

Optional input: time horizon (default is current quarter)

---

## The Prompt

---

You are running the AI-SHIPR Roadmap Planner for a product manager.

Read the following files before proceeding:
- `S-Strategy/Strategic-Bets.md`
- `S-Strategy/KPIs.md`
- `S-Strategy/Constraints.md`
- All initiative files in `I-Initiatives/`
- Status fields from all hypothesis files in `H-Hypotheses/`

Then generate the Roadmap Planning Report below.

---

### Roadmap Planning Report

#### Strategic Coverage Map

For each Strategic Bet, list:
- Bet name and time horizon
- Initiatives currently linked to it (from I-Initiatives)
- Coverage status:
  - **Covered** — at least one Active initiative with a measurable outcome
  - **Thin** — initiative exists but outcome is vague or no hypothesis is linked
  - **Gap** — no initiative linked to this bet

| Bet | Linked Initiatives | Coverage |
|-----|--------------------|----------|
| ... | ...                | ...      |

Flag any bet with Gap or Thin coverage. This is a planning risk.

---

#### Initiative Stack

List all initiatives with:
- Name
- Linked bet
- Status (Active / At Risk / Paused / Completed)
- Outcome metric (if defined)
- Decision pending (Yes/No)
- Last updated (if provided)

Flag:
- Initiatives with no linked bet
- Initiatives with no measurable outcome
- Initiatives with a pending decision and no decision criteria
- Initiatives not updated in more than 7 days (if dates are available)
- More than 3 simultaneous Active initiatives (capacity risk)

---

#### Sequencing View

Based on the initiative list and constraints:

**Should start now:**
- [Initiative] — reason

**Should start after [X] is resolved or completed:**
- [Initiative] — dependency or blocker

**Should be paused or killed:**
- [Initiative] — reason (redundant, blocked, disconnected from strategy)

---

#### Hypothesis Coverage

For each Active initiative:
- Is at least one hypothesis linked? (Yes / No)
- If Yes: what is the current hypothesis status? (Untested / Testing / Validated / Invalidated)
- If No: flag as structural gap — initiatives without hypotheses are executing on assumptions

---

#### Planning Flags

List all structural issues detected, ordered by severity:

## ⚠ Planning Gaps
- [Gap 1: specific — e.g., "Bet 2 has no linked initiative"]
- [Gap 2: ...]

## ⚠ Capacity Risks
- [e.g., "5 Active initiatives — exceeds recommended max of 3"]

## ⚠ Blocked Decisions
- [e.g., "Initiative X has a decision required by [date] with no criteria defined"]

---

#### Recommended Next Actions

3 actions maximum. Prioritized by impact on planning clarity.

1. [Action — specific and ownable]
2. [Action]
3. [Action]

---

*End of prompt.*

---

> **© Yaniv Yaakubovich**
> Product Management & AI Consulting: [www.verve-pm.com](www.verve-pm.com)

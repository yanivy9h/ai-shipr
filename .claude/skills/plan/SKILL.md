---
name: plan
description: Run the AI-SHIPR Roadmap Planner. Translate strategic bets into a sequenced initiative stack. Use for quarterly/monthly planning or before any roadmap review.
---

You are running the AI-SHIPR Roadmap Planner for a product manager.

Read these files before proceeding:
- `S-Strategy/Strategic-Bets.md`
- `S-Strategy/KPIs.md`
- `S-Strategy/Constraints.md`
- All files in `I-Initiatives/`
- Status fields from all files in `H-Hypotheses/`

Optional: ask for the planning time horizon if not specified (default: current quarter).

Then generate the Roadmap Planning Report below.

---

### Roadmap Planning Report

#### Strategic Coverage Map

For each Strategic Bet, list:
- Bet name and time horizon
- Initiatives currently linked to it
- Coverage status: **Covered** / **Thin** / **Gap**

| Bet | Linked Initiatives | Coverage |
|-----|--------------------|----------|
| ... | ...                | ...      |

Flag any bet with Gap or Thin coverage — this is a planning risk.

---

#### Initiative Stack

List all initiatives with: Name, Linked bet, Status, Outcome metric, Decision pending, Last updated.

Flag:
- Initiatives with no linked bet
- Initiatives with no measurable outcome
- Initiatives with a pending decision and no decision criteria
- Initiatives not updated in more than 7 days
- More than 3 simultaneous Active initiatives (capacity risk)

---

#### Sequencing View

**Should start now:**
- [Initiative] — reason

**Should start after [X] is resolved or completed:**
- [Initiative] — dependency or blocker

**Should be paused or killed:**
- [Initiative] — reason

---

#### Hypothesis Coverage

For each Active initiative:
- Is at least one hypothesis linked? (Yes / No)
- If Yes: current hypothesis status (Untested / Testing / Validated / Invalidated)
- If No: flag — initiatives without hypotheses are executing on assumptions

---

#### Planning Flags

List all structural issues detected, ordered by severity:

**Planning Gaps:**
- [e.g., "Bet 2 has no linked initiative"]

**Capacity Risks:**
- [e.g., "5 Active initiatives — exceeds recommended max of 3"]

**Blocked Decisions:**
- [e.g., "Initiative X has a decision required by [date] with no criteria defined"]

---

#### Recommended Next Actions

3 actions maximum, prioritized by impact on planning clarity:

1. [Action — specific and ownable]
2. [Action]
3. [Action]

# Workflow: Initiative Review

## Purpose
Run a structured weekly review of all active initiatives.
Surface what is moving, what is stuck, what needs a decision, and what should be killed.

## When to Use
Once per week. Friday afternoon or Monday morning.
Before any roadmap conversation with stakeholders or leadership.

## What It Reads
- All files in `I-Initiatives/`
- All files in `H-Hypotheses/` linked to active initiatives
- `S-Strategy/Strategic-Bets.md`
- `S-Strategy/Constraints.md`

## How to Run
Type: `/review-initiative` or "Run Initiative Review"

Optional: name a specific initiative to review in isolation.

---

## The Prompt

---

You are running the AI-SHIPR Initiative Review for a product manager.

Read all initiative files in `I-Initiatives/`, their linked hypotheses in `H-Hypotheses/`, and the Strategic Bets in `S-Strategy/Strategic-Bets.md`.

Generate the Initiative Review Report below.

---

### Initiative Review Report

#### Initiative Status Summary

| Initiative | Bet | Status | Outcome Metric | Hypothesis | Decision Needed |
|-----------|-----|--------|---------------|-----------|----------------|
| ...       | ... | ...    | ...           | ...       | Yes / No       |

---

#### Per-Initiative Assessment

For each Active or At Risk initiative, provide:

**[Initiative Name]**
- Strategic link: [Bet # — confirmed / missing]
- Outcome: [metric + current state, or "undefined"]
- Hypothesis status: [Untested / Testing / Validated / Invalidated / Missing]
- Momentum: [Moving / Stalled / Blocked]
- Blocker (if any): [decision, dependency, or resource]
- Recommended action: [Continue / Escalate / Pause / Kill]

---

#### Decisions Required This Week

List all initiatives where a decision is flagged as needed:

| Initiative | Decision | Criteria Defined | Due Date |
|-----------|----------|-----------------|----------|
| ...       | ...      | Yes / No        | ...      |

If criteria are undefined, flag: "Decision cannot be made cleanly — run Decision-Architect first."

---

#### Kill / Pause Candidates

Initiatives that show one or more of:
- No progress in 2+ weeks
- Hypothesis invalidated with no pivot defined
- No longer linked to an active bet
- Blocked with no resolution path

List with reason and recommendation.

---

## ⚠ Initiative Review Flags

- [Flag 1: specific]
- [Flag 2: ...]

If no flags: "All initiatives are structurally sound."

---

#### Weekly Momentum Score

A simple read of the initiative portfolio health:

- Initiatives on track: [N]
- Initiatives at risk: [N]
- Initiatives blocked: [N]
- Decisions overdue: [N]

Overall: **[Healthy / Needs Attention / At Risk]**

---

*End of prompt.*

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

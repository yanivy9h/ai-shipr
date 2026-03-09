# Workflow: Sprint Planner

**Command:** `/sprint`
**Reads:** Active initiatives (I-Initiatives/), Strategic Bets (S-Strategy/Strategic-Bets.md), PM-Profile (R-Relationships/Me/PM-Profile.md), Learning.md

---

## Purpose

Read active initiatives, map them to sprint capacity, and output a sprint goal with committed items.
This is the Plan phase of the Agile loop — it connects strategy to the next two weeks.

A sprint without a planning structure is a to-do list with deadlines.
A sprint with this workflow is a focused bet on what matters most right now.

---

## When to Run

- At the start of each sprint
- After Initiative-Review surfaces new priorities
- After Fire-Responder resolves an incident that displaced a previous sprint commitment
- When entering a new development cycle after a launch

---

## Pre-Run Checklist

Before running Sprint-Planner, confirm:
- [ ] All active initiatives have a current Stage assigned
- [ ] Capacity for this sprint is known (team size, planned absences, ceremonies)
- [ ] Priority-Stack has been run recently — or initiative priorities are current
- [ ] Any fires from the previous sprint have been resolved or formally deferred

---

## Sprint Capacity Input

Provide or confirm:
- Sprint duration: [2 weeks / other]
- Engineering capacity: [N story points / N developer-days]
- Design capacity: [N days]
- PM focus allocation: [% on delivery vs discovery vs stakeholder]
- Planned absences or reductions: [Yes — describe / No]

---

## Sprint Goal

> **Sprint [N] Goal:**
> [One sentence — what success looks like at the end of this sprint]
> [Tied to a Strategic Bet or a defined initiative outcome — not a feature list]

The sprint goal is the commitment. Everything below supports it.

---

## Committed Items

### Primary Commitment
*What we must ship to achieve the sprint goal*

| Initiative | Item | Owner | Estimate | Acceptance Criteria |
|-----------|------|-------|----------|---------------------|
| [Initiative name] | [Story / feature / milestone] | [Engineering / Design] | [Points / days] | [What "done" looks like] |

**Capacity used:** [N] of [N] points / days

---

### Secondary Items
*What we will work on if primary commitment is completed early — not the sprint goal*

| Initiative | Item | Owner | Estimate |
|-----------|------|-------|----------|
| [Item] | [Description] | [Owner] | [Estimate] |

---

### Explicitly Out of Scope
*Items raised but deferred — naming them protects the sprint from scope creep*

| Item | Raised by | Deferred to | Reason |
|------|----------|-------------|--------|
| [Item] | [Team / stakeholder] | [Next sprint / backlog] | [Why not now] |

---

## Hypothesis Coverage

Initiatives in this sprint that are testing a hypothesis:

| Initiative | Linked Hypothesis | What this sprint enables | Measurement window starts |
|-----------|------------------|--------------------------|--------------------------|
| [Name] | [HYP-XXX] | [What the sprint ships that enables the test] | [After this sprint / After next sprint] |

If no hypotheses are covered: flag — the sprint is purely operational.

---

## Cross-Team Dependencies This Sprint

| Dependency | Team | Due by | Owner | Status |
|-----------|------|--------|-------|--------|
| [What is needed] | [Team] | [Date within sprint] | [Owner] | Confirmed / Pending |

---

## Sprint Risks

| Risk | Likelihood | Impact | Mitigation |
|------|-----------|--------|-----------|
| [What could derail this sprint] | High / Med / Low | High / Med / Low | [What to do proactively] |

---

## Sprint Kickoff Notes

> Share with the team at sprint kickoff:
>
> **Goal:** [Sprint goal — one sentence]
> **Primary commitment:** [Top 1-2 items]
> **What we are not doing:** [Top deferred items — so the team knows what to protect against]
> **Metric we are watching:** [What signal tells us the sprint is on track]

---

## Actions Required

- [ ] Confirm sprint goal with team lead and manager
- [ ] Load committed items into sprint board
- [ ] Confirm cross-team dependencies with owners
- [ ] Update initiative Stages to `In Sprint`
- [ ] Schedule mid-sprint check-in for day 5 (or midpoint)

---

> **© Yaniv Yaakubovich**
> Product Management & AI Consulting: [www.verve-pm.com](www.verve-pm.com)

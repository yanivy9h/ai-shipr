---
name: sprint
description: Run the AI-SHIPR Sprint Planner. Maps active initiatives to sprint capacity and outputs a sprint goal with committed items.
---

You are running the AI-SHIPR Sprint Planner for a product manager.

Read these files before proceeding:
- `S-Strategy/Strategic-Bets.md`
- All files in `I-Initiatives/`
- `R-Relationships/Me/PM-Profile.md`
- `Learning.md`

Then ask for sprint capacity if not already provided:
- Sprint duration
- Engineering capacity (story points or developer-days)
- Design capacity
- PM focus allocation
- Planned absences

Then generate the Sprint Plan below.

---

### Sprint Plan

**Sprint [N] Goal:**
> [One sentence — what success looks like at the end of this sprint, tied to a Strategic Bet or initiative outcome]

---

#### Committed Items

**Primary Commitment** — what we must ship to achieve the sprint goal

| Initiative | Item | Owner | Estimate | Acceptance Criteria |
|-----------|------|-------|----------|---------------------|
| [Initiative name] | [Story / feature / milestone] | [Engineering / Design] | [Points / days] | [What "done" looks like] |

**Capacity used:** [N] of [N] points / days

---

**Secondary Items** — work on if primary is completed early

| Initiative | Item | Owner | Estimate |
|-----------|------|-------|----------|
| [Item] | [Description] | [Owner] | [Estimate] |

---

**Explicitly Out of Scope** — named to protect the sprint from scope creep

| Item | Raised by | Deferred to | Reason |
|------|----------|-------------|--------|
| [Item] | [Team / stakeholder] | [Next sprint / backlog] | [Why not now] |

---

#### Hypothesis Coverage

| Initiative | Linked Hypothesis | What this sprint enables | Measurement window starts |
|-----------|------------------|--------------------------|--------------------------|
| [Name] | [HYP-XXX] | [What the sprint ships] | [After this sprint / After next sprint] |

If no hypotheses are covered: flag — the sprint is purely operational.

---

#### Cross-Team Dependencies

| Dependency | Team | Due by | Owner | Status |
|-----------|------|--------|-------|--------|
| [What is needed] | [Team] | [Date within sprint] | [Owner] | Confirmed / Pending |

---

#### Sprint Risks

| Risk | Likelihood | Impact | Mitigation |
|------|-----------|--------|-----------|
| [What could derail this sprint] | High / Med / Low | High / Med / Low | [What to do proactively] |

---

#### Sprint Kickoff Notes

> **Goal:** [Sprint goal — one sentence]
> **Primary commitment:** [Top 1-2 items]
> **What we are not doing:** [Top deferred items]
> **Metric we are watching:** [What signal tells us the sprint is on track]

---

#### Actions Required

- [ ] Confirm sprint goal with team lead and manager
- [ ] Load committed items into sprint board
- [ ] Confirm cross-team dependencies with owners
- [ ] Update initiative Stages to `In Sprint`
- [ ] Schedule mid-sprint check-in

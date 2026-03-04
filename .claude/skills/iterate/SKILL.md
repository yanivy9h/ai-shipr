---
name: iterate
description: Run the AI-SHIPR Iteration Planner. Close one cycle and open the next. Run after a measurement window completes or hypothesis is validated/invalidated.
---

You are running the AI-SHIPR Iteration Planner for a product manager.

Read these files before proceeding:
- All files in `P-Proof/` (Performance-Tracker output)
- `Learning.md`
- All files in `H-Hypotheses/` (active ones)
- All files in `I-Initiatives/` (backlog items)
- `S-Strategy/Strategic-Bets.md`

Ask for the initiative name if not provided. Then generate the Iteration Plan below.

---

### Iteration Plan

**Initiative:** [Name]
**Cycle:** [Sprint / Quarter / Date range]
**Hypothesis status:** Validated / Partially Validated / Invalidated / Inconclusive

---

#### Cycle Close Summary

**What Shipped:**
- [Feature / change 1]
- [Feature / change 2]

**What the Data Said:**
> [Honest summary of Performance-Tracker findings]
> Confidence: [High / Medium / Low]

**What We Learned:**
> [What this cycle taught us about the user, the problem, or the product]
> Source: Learning.md entry from [date]

---

#### Next Cycle Decision

Based on proof and learning, assess these directions:

| Option | Description | Basis | Recommended? |
|--------|-------------|-------|-------------|
| **Double down** | Expand on what was validated | [Evidence] | Yes / No |
| **Pivot** | Change approach — same problem, different solution | [What the data revealed] | Yes / No |
| **Iterate** | Refine the shipped solution | [What partially worked] | Yes / No |
| **Kill** | Stop investing — hypothesis invalidated | [Evidence] | Yes / No |
| **Explore** | Validated result opened a new question | [Signal] | Yes / No |

**Recommended Direction:** [Double Down / Pivot / Iterate / Kill / Explore]

**Rationale:**
> [Why this direction — tied to the data, the learning, and the strategic bet]

**What changes:**
- [What is different in the next cycle]
- [What we are dropping]
- [What we are adding]

---

#### Next Cycle Initiative Candidates

| Initiative | Source | Strategic Bet | Priority Signal | Hypothesis Ready? |
|-----------|--------|---------------|----------------|------------------|
| [Name] | Backlog / New signal / Partial from this cycle | [Bet #] | High / Med / Low | Yes / No |

---

#### Next Hypothesis Candidate

If the recommended direction requires a new hypothesis:

> We believe [target user] will [behavior] because [reason].
> We will measure [metric] over [time window].
> Success: [threshold]. Failure: [threshold].
>
> → Run `Hypothesis-Builder` to formalize this into an HYP file.

---

#### Learning.md Entry to Write

> **[Date] — Iteration close: [Initiative name]**
> Outcome: [Validated / Invalidated / Partial]
> Key learning: [What this cycle taught us]
> Next direction: [Double down / Pivot / Iterate / Kill / Explore]
> Next hypothesis: [One sentence — or "TBD — discovery needed"]

---

#### Actions Required

- [ ] Update initiative Stage to: `Iterating` or `Defined`
- [ ] Update H-Hypotheses file status: `Validated` / `Invalidated` / `Archived`
- [ ] Create new initiative file if direction is "Double Down" or "Pivot"
- [ ] Run `Hypothesis-Builder` if next cycle requires a new testable hypothesis
- [ ] Run `Sprint-Planner` to load next cycle into sprint structure
- [ ] Add learning entry to `Learning.md`

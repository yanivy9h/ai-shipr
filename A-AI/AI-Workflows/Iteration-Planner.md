# Workflow: Iteration Planner

**Command:** `/iterate`
**Reads:** Performance-Tracker output (P-Proof/), Learning.md, active H-Hypotheses/, backlog items from I-Initiatives/, Strategic Bets (S-Strategy/Strategic-Bets.md)

---

## Purpose

Close one cycle and open the next.
Read what the proof says. Read what was learned. Surface what was not shipped.
Decide what the next bet is — and why.

This is the loop re-entry mechanism.
Without it, the system does not compound. Every cycle starts from scratch.
With it, each cycle is smarter than the last.

---

## When to Run

- After Performance-Tracker completes a full measurement window
- At the end of a product cycle when the team is deciding what to work on next
- When a hypothesis has been validated or invalidated and findings need to be translated into action
- Before beginning Sprint-Planner for the next cycle

---

## Pre-Run Requirements

- [ ] Performance-Tracker has been run — hypothesis status is known
- [ ] Retro-Facilitator has been run — process learnings are captured
- [ ] Learning.md has been updated with findings from this cycle
- [ ] Backlog items from I-Initiatives/ are current

---

## Cycle Close Summary

**Initiative:** [Name]
**Cycle:** [Sprint / Quarter / Date range]
**Hypothesis status:** Validated / Partially Validated / Invalidated / Inconclusive

### What Shipped
- [Feature / change 1]
- [Feature / change 2]

### What the Data Said
> [One paragraph — honest summary of Performance-Tracker findings]
> Confidence: [High / Medium / Low]

### What We Learned
> [One paragraph — what this cycle taught us about the user, the problem, or the product]
> Source: Learning.md entry from [date]

---

## Next Cycle Decision

### Option Assessment

Based on proof and learning, the following directions are available:

| Option | Description | Basis | Strategic Bet | Recommended? |
|--------|-------------|-------|---------------|-------------|
| **Double down** | Expand on what was validated — more users, deeper feature, adjacent use case | [Evidence from Performance-Tracker] | [Bet #] | Yes / No |
| **Pivot** | Change approach based on what was invalidated — same problem, different solution | [What the data revealed] | [Bet #] | Yes / No |
| **Iterate** | Refine the shipped solution based on partial validation signals | [What partially worked and why] | [Bet #] | Yes / No |
| **Kill** | Stop investing — hypothesis invalidated, no adjacent bet worth pursuing here | [Evidence] | — | Yes / No |
| **Explore** | Validated result opened a new question — run discovery before next build | [Signal that triggered this] | [Bet #] | Yes / No |

---

### Recommended Direction

**Direction:** [Double Down / Pivot / Iterate / Kill / Explore]

**Rationale:**
> [Why this direction — tied to the data, the learning, and the strategic bet]

**What changes:**
- [What is different in the next cycle versus this one]
- [What we are dropping]
- [What we are adding]

---

## Next Cycle Initiative Candidates

Surfaced from: unshipped backlog, Performance-Tracker signals, Learning.md

| Initiative | Source | Strategic Bet | Priority Signal | Hypothesis Ready? |
|-----------|--------|---------------|----------------|------------------|
| [Name] | Backlog / New signal / Partial from this cycle | [Bet #] | High / Med / Low | Yes / No — needs Hypothesis-Builder |

---

## Hypothesis Setup for Next Cycle

If the recommended direction requires a new hypothesis:

> **Next hypothesis candidate:**
> We believe [target user] will [behavior] because [reason].
> We will measure [metric] over [time window].
> Success: [threshold]. Failure: [threshold].
>
> → Run `Hypothesis-Builder` to formalize this into an HYP file.

---

## Learning.md Entry

Write this entry before closing the iteration:

> **[Date] — Iteration close: [Initiative name]**
> Outcome: [Validated / Invalidated / Partial]
> Key learning: [What this cycle taught us]
> Next direction: [Double down / Pivot / Iterate / Kill / Explore]
> Next hypothesis: [One sentence — or "TBD — discovery needed"]

---

## Actions Required

- [ ] Update initiative Stage to: `Iterating` or `Defined` (if next cycle is starting)
- [ ] Update H-Hypotheses file status: `Validated` / `Invalidated` / `Archived`
- [ ] Create new initiative file if direction is "Double Down" or "Pivot"
- [ ] Run `Hypothesis-Builder` if next cycle requires a new testable hypothesis
- [ ] Run `Sprint-Planner` to load next cycle into sprint structure
- [ ] Add learning to `Learning.md` (entry above)

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

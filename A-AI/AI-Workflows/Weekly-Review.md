# Workflow: Weekly Review

## Purpose
Close the week with a structured review of what moved, what was decided, and what was learned.
Update Learning.md. Set up the following week clearly.

## When to Use
Every Friday. Takes 15 minutes.
This is how the system compounds — every week that closes the loop makes the next week sharper.

## What It Reads
- All files in `I-Initiatives/`
- All files in `H-Hypotheses/`
- All files in `P-Proof/`
- `R-Relationships/Stakeholders/Meeting-Log.md`
- `Learning.md`
- `S-Strategy/Strategic-Bets.md`

## How to Run
Type: `/weekly-review` or "Run Weekly Review"

Before running: add any meeting notes from the week to `R-Relationships/Stakeholders/Meeting-Log.md`.
The review is only as good as what was captured during the week.

---

## The Prompt

---

You are running the AI-SHIPR Weekly Review for a product manager.

Read all files listed in this workflow. Then generate the Weekly Review Report.

Be concise. This is a closing ritual, not an audit. Save deep structural flags for Initiative Review and Structural-Integrity-Auditor.

---

### Weekly Review Report

**Week of:** [Date range]

---

#### What Moved

List initiatives or hypotheses that had meaningful progress this week:
- [Item] — what changed — why it matters

List initiatives or hypotheses that did not move when they should have:
- [Item] — what was expected — what blocked it

---

#### Decisions Made

List decisions that were made this week (from Meeting-Log or initiative updates):
- [Decision] — rationale (if captured) — owner

List decisions that were surfaced but not resolved:
- [Decision] — what is blocking resolution — when it must be made

---

#### Meetings: Signal vs Noise

From Meeting-Log (if populated):
- Which meetings produced a decision or clear next action?
- Which meetings produced no actionable output?

Note: meetings with no output are a system cost. Flag them if recurring.

---

#### What Was Learned

Pull 2-3 insights from the week that are worth persisting into Learning.md:

> Learning 1: [Specific — what happened, what it suggests]
> Learning 2: [...]
> Learning 3: [...] (if applicable)

These should be added to `Learning.md` after reviewing this output.

---

#### Setup for Next Week

Based on this week's review:

**Top 3 priorities for next week:**
1. [Priority] — why
2. [Priority] — why
3. [Priority] — why

**Decision that must be made next week:**
- [Decision] — deadline — what information is needed to make it

**One thing to stop doing or simplify:**
- [Item] — reason

---

#### Loop Close Checklist

- [ ] Learning.md updated with this week's insights
- [ ] Initiative files updated with current status
- [ ] Meeting-Log reflects this week's key conversations
- [ ] Any completed experiments have an interpretation recorded
- [ ] Next week's top priorities are clear

---

*End of prompt.*

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

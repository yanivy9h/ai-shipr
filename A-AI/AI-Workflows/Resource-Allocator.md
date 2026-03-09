# Workflow: Resource Allocator

## Purpose
Map PM headcount and capacity to strategic bets for the upcoming cycle.
Produce a concrete allocation recommendation with tradeoffs stated — not a wish list.

## When to Use
- Start of quarter or planning cycle
- When headcount changes (hire, departure, leave)
- When a new bet is added mid-cycle
- When leadership asks "who is working on what and is that right?"

## What It Reads
- `S-Strategy/Strategic-Bets.md`
- `R-Relationships/Team/Roster.md`
- All files in `R-Relationships/Team/PM-Profiles/` (for current load and constraints)
- All files in `I-Initiatives/` (for what is already committed)

## How to Run
Type: `/allocate`

Optionally provide:
- Planning horizon (default: current quarter)
- Known capacity changes (e.g., "Sarah is on leave in April", "new PM starting March 15")
- Bet priority changes for this cycle

---

## The Prompt

---

You are running the AI-SHIPR Resource Allocator for a product team lead.

Read all files listed in this workflow. Then generate the Allocation Plan below.
Every recommendation must include the tradeoff. An allocation without a stated cost is not a plan.

---

### Resource Allocation Plan

**Cycle:** [Quarter / Sprint / Period]
**Team size:** [N PMs]

---

#### Current State

What each PM is currently allocated to — before any changes:

| PM | Current Bets | Load Assessment |
|----|-------------|----------------|
| [Name] | [Bet names] | Overloaded / Balanced / Underallocated |

---

#### Bet Priority vs. Current Coverage

| Bet | Priority | Currently Assigned | Coverage Gap |
|-----|----------|--------------------|-------------|
| [Bet] | High | [PM — %] | Adequate / Understaffed / Not covered |

---

#### Recommended Allocation for [Cycle]

| PM | Bet(s) | Allocation | Rationale |
|----|--------|-----------|-----------|
| [Name] | [Bet X] | 80% | Primary owner — high priority bet with no backup |
| [Name] | [Bet Y] | 60%, [Bet Z] 40% | Split justified because Bet Z is near completion |

---

#### Tradeoffs

For every reallocation or gap, state what is gained and what is lost:

- Allocating [PM] to [Bet X]: [Bet Y] reduces from [N]% to [N]% — acceptable if [condition]
- [Bet Z] has no owner this cycle: deferred to [next cycle] — risk: [specific consequence]

---

#### Decisions Required

Allocations that cannot be made without a decision:

- [Decision] — options: [A / B] — impact of delaying: [specific]

---

#### 90-Day Headcount View

If current allocation is unsustainable or a new hire is needed:

- **Gap:** [Bet X] requires a dedicated PM — current team cannot cover it without tradeoff
- **Recommendation:** [Hire / Promote / Restructure scope] — by [when] to avoid [consequence]

---

*End of prompt.*

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

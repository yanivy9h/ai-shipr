# Skill: Resource Allocation Mapper

## Purpose
Map PM headcount and capacity to strategic bets for a given planning cycle.
Surface coverage gaps, overload risks, and misalignments before they become execution problems.

## When to Use
- Start of a quarter or planning cycle
- When a new bet is added mid-cycle
- When a PM leaves, goes on leave, or is added to the team
- When leadership asks "who is working on what?"

## Behavior Rules
- Capacity is finite — every allocation to one bet is a withdrawal from another. State tradeoffs explicitly.
- A PM split across more than 2 bets is a risk, not a plan. Flag it.
- Do not produce an allocation without stating what loses coverage as a result.
- Bet priority must come from `S-Strategy/Strategic-Bets.md` — do not infer priority from initiative count.

## Input Expectations
Provide:
- Planning horizon (sprint / quarter / half-year)
- Available PMs and any capacity constraints (part-time, leave, ramp-up)
- Any commitments already locked in

The skill reads `R-Relationships/Team/Roster.md`, `S-Strategy/Strategic-Bets.md`, and `I-Initiatives/` automatically.

## Output Structure

### Capacity Overview

| PM | Available Capacity | Current Allocation | Remaining |
|----|-------------------|-------------------|-----------|
| [Name] | 100% | [Bet X: 60%, Bet Y: 40%] | 0% |

### Bet Coverage Map

| Bet | Priority | PM Owner | Allocation | Coverage Status |
|-----|----------|---------|------------|----------------|
| [Bet] | High | [PM] | 60% | Adequate |
| [Bet] | High | None | 0% | Not covered |
| [Bet] | Medium | [PM] | 20% | Understaffed |

### Allocation Flags

- **Uncovered bet:** Bet [X] (High priority) has no PM owner — requires immediate assignment or escalation
- **Overloaded PM:** [PM] is allocated across [N] bets — concentration on [Bet Y] recommended
- **Misaligned capacity:** [PM] is spending most capacity on a Medium-priority bet while a High-priority bet is uncovered
- **Headcount gap:** Team is [N] PMs below what full bet coverage requires

### Recommended Reallocation

| Change | From | To | Tradeoff |
|--------|------|----|----------|
| Move [PM] | Bet X (reduce to 20%) | Bet Y (increase to 60%) | Bet X slows — acceptable if Bet Y is higher priority |

### Decision Required
List any allocation decisions that cannot be made with current information:
- [Decision] — what is needed to resolve it — who owns it

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

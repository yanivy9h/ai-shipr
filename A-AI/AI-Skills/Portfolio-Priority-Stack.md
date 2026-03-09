# Skill: Portfolio Priority Stack

## Purpose
Rank initiatives across multiple PMs and product areas against each other.
Produce a portfolio-level stack that reflects strategic bet coverage and team capacity — not just individual PM priorities.

## When to Use
- Before a quarterly planning session where cross-team sequencing will be debated
- When capacity is constrained and something must be cut or paused
- When a new bet is added and existing work needs to be resequenced
- When leadership asks "what are we focused on?" and the answer is unclear

## Behavior Rules
- Require at least one initiative per active bet before running — otherwise flag missing coverage first
- Score every initiative on the same criteria — no exceptions for legacy work or political pressure
- Initiatives with no bet link cannot be ranked against ones that have one — flag them separately
- Do not recommend more than 5 initiatives for active execution across the team
- If two top-ranked initiatives belong to the same PM, flag the concentration risk
- Conditional ranking is valid — state what changes the order

## Input Expectations
Provide:
- A list of all active and planned initiatives across the team (or run against `I-Initiatives/` folder)
- Team capacity: how many PMs, any constraints this cycle

Optional:
- Bet priorities if they have changed this cycle
- Initiatives already committed (these cannot be deprioritized without escalation)

## Scoring Framework

Each initiative is scored 1-3 on five dimensions:

| Dimension | 1 | 2 | 3 |
|-----------|---|---|---|
| Bet Alignment | No direct link | Supports a bet indirectly | Directly advances a primary bet |
| Strategic Urgency | Can wait | Time-sensitive | Blocking another bet or critical metric |
| User Impact | Affects few users, low pain | Moderate reach or pain | High reach + high pain |
| Confidence | High uncertainty | Some signals | Validated assumption or prior evidence |
| Effort | High effort, long time to value | Medium | Low effort, fast to value |

**Default weights:** Bet Alignment × 2, Strategic Urgency × 1.5, User Impact × 1, Confidence × 1, Effort × 1

Score = (Bet Alignment × 2) + (Strategic Urgency × 1.5) + (Impact × 1) + (Confidence × 1) + (Effort × 1)

Maximum score: 19.5

## Output Structure

### Portfolio Stack

| Rank | Initiative | PM Owner | Bet | Alignment | Urgency | Impact | Confidence | Effort | Score | Flag |
|------|-----------|---------|-----|-----------|---------|--------|-----------|--------|-------|------|
| 1 | ... | ... | ... | ... | ... | ... | ... | ... | ... | ... |

### Unlinked Initiatives
Initiatives with no bet link — not ranked, requires a decision:
- [Initiative] — PM: [Name] — Recommendation: Link to bet / pause / cut

### Flags
- **Concentration risk:** [PM] owns [N] of top 5 — reallocation worth considering
- **Bet gap:** Bet [X] has no initiative in top 5 — under-executing on strategy
- **Cut candidates:** Initiatives scoring below 8 — consider pausing to free capacity

### Conditional Reranking
If [condition — e.g., a bet is deprioritized / PM capacity changes]:
- [Initiative] moves from rank N to rank M — because [reason]

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

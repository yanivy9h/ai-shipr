# Skill: Priority Stack

## Purpose
Apply structured prioritization to a list of initiatives, features, or opportunities.
Produce a ranked stack with explicit scoring rationale — not a gut-feel list.

## When to Use
- When the backlog feels too long to sequence clearly
- Before a planning session where prioritization will be debated
- When stakeholders disagree on what to build next
- When resources are constrained and trade-offs must be made explicit

## Behavior Rules
- Require at least 3 items to prioritize — single-item prioritization is not prioritization
- Score every item on the same criteria — no exceptions for "obvious" choices
- Make scoring rationale explicit — a number without reasoning is useless
- Flag items that score well on impact but low on strategic alignment — they are traps
- Flag items that score low across the board — candidates for removal, not delay
- Do not recommend more than 3 items for immediate action
- Conditional ranking is valid — state the condition that changes the order

## Input Expectations
Provide:
- A list of 3-10 items to prioritize (initiatives, features, opportunities, or a mix)
- Context: what constraint is driving prioritization (capacity, time, strategic focus)

Optional:
- Scoring weights you want to adjust (default weights shown below)
- Items you already know are off the table

## Scoring Framework

Each item is scored 1-3 on four dimensions:

| Dimension | 1 | 2 | 3 |
|-----------|---|---|---|
| Strategic Alignment | Weak link to any bet | Supports a bet indirectly | Directly advances a bet |
| User Impact | Affects few users, low pain | Moderate reach or pain | High reach + high pain |
| Confidence | High uncertainty, no validation | Some signals | Validated assumption or prior evidence |
| Effort | High effort, long time to value | Medium | Low effort, fast to value |

**Default weights:** Strategic Alignment × 2, User Impact × 1.5, Confidence × 1, Effort × 1

Score = (Strategic × 2) + (Impact × 1.5) + (Confidence × 1) + (Effort × 1)

Maximum score: 16.5

## Output Structure

### Priority Stack

| Rank | Item | Strategic | Impact | Confidence | Effort | Score | Flag |
|------|------|-----------|--------|-----------|--------|-------|------|
| 1    | ...  | ...       | ...    | ...       | ...    | ...   | ...  |
| 2    | ...  | ...       | ...    | ...       | ...    | ...   | ...  |

### Scoring Rationale
For each item in the top 3:
- Why it scored this way: [1-2 sentences]
- Key assumption being made: [what must be true for this score to hold]

### Flags
- **Strategic trap:** [Item] scores high on impact but low on strategic alignment — builds the wrong thing well
- **Confidence gap:** [Item] scores high but is built on unvalidated assumptions — run Hypothesis-Builder before committing
- **Cut candidates:** [Items scoring below 7] — consider removing from backlog entirely

### Conditional Reranking
If [condition changes — e.g., engineering capacity increases / a bet is deprioritized]:
- [Item] moves from rank N to rank M
- Because: [reason]

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

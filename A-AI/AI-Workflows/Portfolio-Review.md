# Workflow: Portfolio Review

## Purpose
Generate a cross-product view of initiative health, bet coverage, and team allocation.
Designed for planning cycles, exec prep, or any moment when the lead needs to see the whole board — not just one PM's work.

## When to Use
- Start of each quarter or planning cycle
- Before an exec or board conversation about product
- When something feels misaligned but it's hard to pinpoint where
- Monthly — as a rhythm for staying ahead of portfolio drift

## What It Reads
- `S-Strategy/Strategic-Bets.md`
- `S-Strategy/KPIs.md`
- All files in `I-Initiatives/`
- `R-Relationships/Team/Roster.md`
- All files in `R-Relationships/Team/PM-Profiles/`
- `Learning.md`

## How to Run
Type: `/portfolio`

No additional input required. Optionally add: "Focus on [bet name]" or "Prep for exec update" to adjust the output.

---

## The Prompt

---

You are running the AI-SHIPR Portfolio Review for a product team lead.

Read all files listed in this workflow. Then generate the Portfolio Review Report below.
Flag gaps and misalignments explicitly. This is a strategic read, not a status list.

---

### Portfolio Review Report

**Date:** [Today's date]

---

#### Bet Coverage Map

| Bet | Priority | PM Owner | Active Initiatives | Stage | Health |
|-----|----------|---------|-------------------|-------|--------|
| [Bet] | High/Med/Low | [PM] | [Names] | [Stage] | On Track / At Risk / No Coverage |

**Coverage summary:**
- Bets fully covered: [N]
- Bets partially covered: [N] — [what's missing]
- Bets with no active initiative: [N] — [implication]

---

#### Initiative Health Across Team

For each active initiative across all PMs:

| Initiative | PM | Bet | Stage | Status | Last Updated | Flag |
|-----------|----|----|-------|--------|-------------|------|
| [Name] | [PM] | [Bet #] | [Stage] | Active/At Risk | [Date] | [If stale or blocked] |

Stale = not updated in more than 7 days while Active.

---

#### Portfolio Flags

Issues requiring the lead's attention:

- **Bet gap:** [Bet X] — High priority, no active initiative in flight
- **Stale initiative:** [Initiative] — last updated [date] — action: follow up with [PM]
- **At Risk cluster:** [PM] has [N] At Risk initiatives — may indicate systemic block or overload
- **Unlinked work:** [Initiative] has no bet link — requires a decision: link / pause / cut

If no flags: "Portfolio is clean."

---

#### Capacity vs. Bet Priority

Quick read on whether team effort is aligned with bet importance:

| Bet Priority | PMs Allocated | Capacity Invested | Alignment |
|-------------|--------------|------------------|-----------|
| High | [PM names] | [N initiatives] | Aligned / Under-invested / Over-invested |

---

#### What to Decide This Week

Based on the portfolio state, list the top decisions the lead must make:

1. [Decision] — why it's blocking — options: [A / B] — recommended: [X]
2. [Decision] — ...

---

#### One Pattern Worth Naming

From the portfolio read — one structural signal that keeps appearing:

> "[Pattern — e.g., 'Three initiatives are stuck at In Development with no hypothesis linked — experiment discipline has slipped']"

---

*End of prompt.*

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

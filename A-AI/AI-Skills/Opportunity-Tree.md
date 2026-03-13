# Skill: Opportunity Tree

## Purpose

Build an Opportunity Solution Tree (OST) — a structured map from a desired business outcome down to ranked customer opportunities, candidate solutions, and the next experiment to run.

Based on Teresa Torres' Continuous Discovery framework.
Output is a paste-ready OST file for `S-Strategy/Opportunity-Tree.md` that directly feeds `H-Hypotheses/`, `I-Initiatives/`, and `P-Proof/`.

---

## When to Use

- After `JTBD-Mapper` — you know the job, now map the opportunity landscape
- When the team has more ideas than focus — use to rank and select
- When multiple customer problems exist but no clear prioritization
- Before writing new initiatives — confirms you are solving the right opportunity
- During quarterly strategy work — to validate that active initiatives map to real opportunities
- When the initiative list has grown but the strategy has not been updated

---

## Behavior Rules

- The desired outcome must come from `S-Strategy/KPIs.md` or be explicitly agreed upon. A tree built on a vague outcome produces a plausible-looking map that leads nowhere.
- Opportunities are customer needs, pains, or desires — not solutions or features. "Users need a dashboard" is a solution. "Users cannot tell if their work is on track without asking someone" is an opportunity.
- Every opportunity must have at least one candidate solution. An opportunity with no solution path is an observation, not a bet.
- Every candidate solution must have a named riskiest assumption. Solutions without identified risks have not been thought through.
- Rank opportunities by Impact × Confidence — not by volume of ideas or team enthusiasm.
- The recommended focus is one opportunity. If you cannot choose one, surface the decision criteria and flag it for `Decision-Architect`.

---

## Input Expectations

Provide one of:

- `JTBD-Mapper` output — the most complete input
- A desired outcome statement + customer research notes
- An existing initiative list to reverse-map into an opportunity tree (audit mode)

Required:
- Desired outcome (measurable business goal — preferably from `S-Strategy/KPIs.md`)

Optional:
- `R-Relationships/Users/Personas/` — for grounding opportunities in real user context
- Active initiatives from `I-Initiatives/` — to check existing work against opportunity map

---

## Output Structure

### Opportunity Solution Tree (paste-ready for `S-Strategy/Opportunity-Tree.md`)

```
# OST — [Desired Outcome Statement]

## Desired Outcome
[Measurable business goal — source: S-Strategy/KPIs.md or session input]
Format: Who does what by how much by when

## Opportunity Map

---

### Opportunity 1: [Customer need / pain / desire — solution-agnostic]

**Evidence:** [What research or data supports this opportunity?]
**Impact:** High / Medium / Low — [Why: frequency, severity, segment size]
**Confidence:** High / Medium / Low — [Why: depth of research, signal quality]
**Priority Score:** [Impact × Confidence ranking — High/High = 1, High/Medium = 2, etc.]

**Candidate Solutions:**
- A: [Brief, specific description]
- B: [Brief, specific description]
- C: [Brief, specific description if applicable]

**Riskiest Assumption (Solution A):** [The single assumption that, if wrong, makes Solution A pointless]
**Riskiest Assumption (Solution B):** [Same for B]

---

### Opportunity 2: [...]

[Repeat structure]

---

### Opportunity 3: [...]

[Repeat structure]

---

## Opportunity Ranking

| Rank | Opportunity | Impact | Confidence | Priority |
|------|-------------|--------|------------|----------|
| 1 | [Opp 1] | H/M/L | H/M/L | [Score] |
| 2 | [Opp 2] | H/M/L | H/M/L | [Score] |
| 3 | [Opp 3] | H/M/L | H/M/L | [Score] |

## Recommended Focus
**Opportunity [N]** — [One sentence rationale: impact level, confidence level, strategic fit]

## Gaps Flagged
[Any opportunities identified but under-researched — flag for further discovery before acting]

## What Happens Next

**Top opportunity → H-Hypotheses/:**
Hypothesis: We believe [business outcome] will be achieved if [user] attains [benefit from top opportunity] with [Solution A].

**Top solution → I-Initiatives/ (when hypothesis validated):**
Initiative: [Solution A name] — linked to Bet: [Relevant Strategic Bet]

**Next experiment → P-Proof/:**
Test: [Smallest test of riskiest assumption in top opportunity — hand off to Experiment-Designer]

## Last Updated
[YYYY-MM-DD]
```

### Tree Validity Check

- Desired outcome grounded in KPIs: [Yes / No — if No, flag before proceeding]
- Opportunities are needs, not solutions: [Yes / No — list any that are framed as solutions]
- Each opportunity has a candidate solution: [Yes / No]
- Each solution has a riskiest assumption: [Yes / No]
- Ranking is explicit: [Yes / No]
- Recommended focus is one: [Yes / No — if No, escalate to Decision-Architect]

---

## Skill Chain

Runs after:
- `JTBD-Mapper` — job statement anchors the desired outcome and opportunity framing
- `Research-Synthesizer` → `Persona-Builder` — if additional customer signal is needed

Output feeds into:
- `Assumption-Extractor` → `Hypothesis-Builder` — turn top opportunity into a filed hypothesis
- `Experiment-Designer` — design the next test for the riskiest assumption
- `Priority-Stack` — if the opportunity list needs formal scoring against criteria
- `Product-Strategist` agent — full strategy synthesis

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

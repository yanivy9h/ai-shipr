# Skill: Assumption Extractor

## Purpose
Surface the hidden assumptions embedded in any initiative or strategy text.
Assumptions left implicit become risks. Made explicit, they become testable hypotheses.

## When to Use
- Before committing to an initiative
- When an initiative feels confident but untested
- Before writing hypotheses — use this first to find what to test
- During strategy reviews to pressure-test reasoning

## Behavior Rules
- Extract only assumptions that are genuinely load-bearing — skip obvious truths
- Assign risk level based on: how wrong the assumption could be, and the cost if it is
- Do not conflate assumptions with facts — if it's stated as known, note it but don't flag it
- Convert each assumption into a falsifiable hypothesis candidate
- Be concise — one line per assumption where possible

## Input Expectations
Provide one of:
- An initiative description
- A strategy section
- A feature brief or product decision

## Output Structure

### Assumptions Extracted

| # | Assumption | Risk Level | Rationale |
|---|-----------|------------|-----------|
| 1 | ...        | High / Medium / Low | Why this could be wrong |
| 2 | ...        | ...        | ...       |

### Hypothesis Candidates
For each High or Medium risk assumption:

**Assumption [#]:**
> We believe [assumption].
> We will know this is true when [measurable signal].
> We will test this by [method].

### Summary
- Total assumptions extracted: [N]
- High risk: [N]
- Recommend testing first: [Assumption #]

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
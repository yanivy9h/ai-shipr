---
name: assumption-extractor
description: Surface hidden assumptions in an initiative or strategy text.
user-invocable: false
---

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
- Backward mode (input is a set of epics under one initiative): ask what must be true for these epics to be worth building. Put assumptions shared by several epics first, since those are the initiative's real bets. Return at most 3 hypothesis candidates for the initiative, not one per epic
- Skip `Commitment` initiatives. Work that happens whatever the team believes has no load-bearing assumption to test

## Input Expectations
Provide one of:
- An initiative description
- A strategy section
- A feature brief or product decision
- The epics (or projects) linked to one initiative: name and one-line scope each

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
# Skill: Experiment Designer

## Purpose

Design the minimum viable experiment to test a specific riskiest assumption.
Selects the right experiment type, defines pass and fail criteria, and outputs a structured experiment card ready to file in `P-Proof/`.

---

## When to Use

- After completing Canvas Box 7 (riskiest assumption identified)
- After running `Edge-Case-Finder` and naming the single highest-risk assumption
- Before committing any resources to building
- When an experiment exists but has no clear pass/fail definition

---

## Behavior Rules

- Never design an experiment before the riskiest assumption is named. Experiments without a specific assumption test nothing.
- Match experiment type to assumption category (see selection logic below). Wrong experiment type produces noise, not signal.
- Require a binary pass/fail definition. "We'll see what happens" is not a criterion.
- Require a timebox. Open-ended experiments do not close.
- Prefer the smallest experiment that still produces a real signal. Do not default to "build an MVP."
- Output must be directly pasteable into a `P-Proof/` experiment file.

---

## Experiment Type Selection Logic

| Assumption Category | Right Experiment Type |
|---|---|
| "Users believe / feel / think X" | User interview |
| "Users will do X when we offer it" | Prototype test or concierge MVP |
| "There is enough demand for X to justify building" | Smoke test / landing page |
| "X behavior is already happening in our system" | Data pull / analysis |
| "We can deliver value manually before automating" | Concierge MVP |
| "Users across the segment share this need" | Survey |

**Selection rules:**
- Default to the fastest experiment that produces a real signal
- Interviews before building — always
- Smoke test before prototype if demand is the unknown
- Concierge MVP when value delivery (not demand) is the unknown
- Data pull when the assumption can be answered from existing product data

---

## Input Expectations

Provide:
1. **Riskiest assumption** — the single assumption from Canvas Box 7 that, if wrong, invalidates the hypothesis
2. **Hypothesis** — the Box 6 statement this assumption sits inside
3. **Constraints** (optional) — time available, team size, access to users, budget

---

## Output Structure

### Experiment Card

```
# EXP — [Short assumption name]

## Assumption Being Tested
[Exact statement from Canvas Box 7]

## Parent Hypothesis
[Box 6 hypothesis statement this belongs to]

## Experiment Type
[User Interview / Prototype Test / Smoke Test / Data Pull / Concierge MVP / Survey]

## Method
[Step-by-step description of what to do — specific enough to hand off]
1. [Step 1]
2. [Step 2]
3. [Step 3]

## Minimum Viable Version
[The smallest version of this experiment that still produces real signal]

## Pass Criteria (Assumption is TRUE)
[Specific, observable. What you would see if the assumption holds.]

## Fail Criteria (Assumption is FALSE)
[Specific, observable. What you would see if the assumption does not hold.]

## Timebox
[1 day / 3 days / 1 week / 2 weeks — pick the shortest that gives real signal]

## What We Do If It Passes
[Next step — proceed to build? Expand test? File hypothesis as validated?]

## What We Do If It Fails
[Next step — kill initiative? Reframe? Pivot to different assumption?]

## Status
Designed — not started

## Last Updated
[YYYY-MM-DD]
```

### Experiment Validity Check

- Assumption named: [Yes / No]
- Experiment type matched to assumption category: [Yes / No — explain if No]
- Pass criteria observable: [Yes / No]
- Fail criteria observable: [Yes / No]
- Timeboxed: [Yes / No]
- Minimum viable version defined: [Yes / No]

---

## Common Errors to Flag

| Error | Flag |
|---|---|
| "We'll build a prototype and see what users think" | Not an experiment — no criterion. Define what "good" and "bad" feedback looks like. |
| "We'll do 1–2 user interviews" | Interviews without a specific question being tested produce conversation, not signal. |
| "Let's A/B test it" | A/B testing tests execution, not assumptions. Wrong stage. |
| "We'll monitor metrics after launch" | Post-launch monitoring is not pre-launch validation. |
| "We'll know when we see it" | Not a criterion. Describe what you will specifically observe. |

---

## Skill Chain

Runs after:
- `Edge-Case-Finder` — surfaces failure modes and identifies the riskiest assumption
- `Hypothesis-Builder` — provides the parent hypothesis

Output feeds into:
- `P-Proof/` experiment files (direct filing)
- `Performance-Tracker` — after the experiment runs, tracks whether the signal confirmed or invalidated the assumption

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

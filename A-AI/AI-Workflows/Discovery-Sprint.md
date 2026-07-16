---
name: discovery-sprint
description: Run a discovery sprint: setup (first run), check-in (each sprint), or gate (readiness check).
user-invocable: false
---

# Workflow: Discovery Sprint

## Purpose
Orchestrate the discovery phase across one or more sprints.
Each sprint has a specific learning goal. This workflow sets the goal, tracks what moves, and closes each sprint with a clear picture of what was learned and what remains open.

## When to Use
- At the start of the discovery phase (first run: full setup)
- At the start of each subsequent sprint within discovery (check-in mode)
- At the end of discovery when evaluating readiness to move to definition (gate mode)

## How to Run
Type: `/discovery`

On first run: the workflow detects that `H-Hypotheses/` is empty or `product_stage: discovery` is newly set and runs in **setup mode**.
On subsequent runs: detects existing hypotheses and sprint history and runs in **check-in mode**.
To run the discovery gate explicitly: type `/discovery gate`

---

## What It Reads
- `Settings.md` — product_stage, voice mode
- `S-Strategy/Vision.md`
- `S-Strategy/Strategic-Bets.md`
- `S-Strategy/KPIs.md`
- `S-Strategy/Constraints.md`
- `R-Relationships/Users/Personas.md`
- `R-Relationships/Stakeholders/Stakeholders.md`
- All files in `H-Hypotheses/`
- All files in `P-Proof/`
- `Learning.md`
- `I-Information/Integrations/` (active integrations only)

---

## Mode Detection

**Setup mode** (first run):
- `H-Hypotheses/` is empty or contains only template files
- Runs the full setup sequence: frame product → stress-test personas → surface assumptions → set first sprint goal

**Check-in mode** (subsequent runs):
- `H-Hypotheses/` contains at least one hypothesis
- Reviews what moved last sprint, identifies what is still open, sets next sprint goal

**Gate mode** (`/discovery gate`):
- Runs `Discovery-Readiness-Checker` explicitly
- Produces a go/no-go signal for moving to definition stage

---

## The Prompt

---

You are running the AI-SHIPR Discovery Sprint workflow.

Read all files listed in this workflow before generating output. Check `Settings.md` for `product_stage` and `voice` before starting.

Detect which mode applies (setup / check-in / gate) based on the state of `H-Hypotheses/` and the command used.

Apply discovery stage rules for the entire session:
- All bets, personas, and problem statements are hypotheses until explicitly validated
- Do not ask for current metric values — KPI targets are aspirational at this stage
- Do not invoke Performance-Tracker, Sprint-Summarizer, Build-Review, Retro-Facilitator, or Fire-Responder
- H-Hypotheses is the most important folder — if it is empty at the end of this session, flag it

---

### SETUP MODE

Run this sequence on first run. Complete each step before moving to the next.

---

#### Step 1 — Product Frame Check

Read `S-Strategy/Vision.md` and `S-Strategy/Product.md`.

Does the product definition name:
- A specific user (not a category)?
- A specific problem (behavioral, not a feature)?
- A specific desired outcome (measurable)?
- What the product will NOT do?

If any element is missing: flag it. Ask one targeted question to close each gap. Do not proceed until the frame is solid.

If the frame is solid: confirm in one sentence and proceed.

---

#### Step 2 — Persona Status

Read `R-Relationships/Users/Personas.md`.

For each persona:
- Is it based on real interviews, or still hypothetical?
- What is the single biggest unknown that would change what you build?

If all personas are hypothetical: flag this. Recommend running `Interview-Guide-Builder` before the first sprint ends.

---

#### Step 3 — Assumption Surface

Run `Assumption-Extractor` logic across:
- `S-Strategy/Strategic-Bets.md`
- `S-Strategy/Product.md`

Present top 5 riskiest assumptions ranked by: (risk level × how early it can be tested).

Ask: which of these should become hypotheses this sprint?
Wait for answer. Run `Hypothesis-Builder` logic on selected assumptions.
Offer to write each confirmed hypothesis to `H-Hypotheses/HYP-[name]-001.md`.

---

#### Step 4 — First Sprint Goal

Based on the riskiest unvalidated assumption, produce:

**Discovery Sprint 1 Goal**
> [One sentence: what must we learn by end of sprint to reduce the biggest risk?]

**Hypotheses under test:**
- HYP-XXX — [name]

**Recommended actions this sprint:**
1. [Action] — skill: [which skill] — owner: PM
2. [Action] — skill: [which skill] — owner: PM
3. [Action] — skill: [which skill] — owner: PM

**What we will NOT do this sprint:**
- [Keep scope tight]

**Decision gate:**
By end of sprint we can answer: [Yes/no question — the assumption lives or dies on this]

---

### CHECK-IN MODE

Run this on each subsequent sprint within discovery.

---

#### What Moved Last Sprint

Read all `H-Hypotheses/` files and `P-Proof/` experiments.

**Hypotheses updated since last check-in:**
- [HYP-XXX] — status: [Validated / Invalidated / Still testing] — key signal: [one sentence]

**Experiments completed:**
- [EXP-XXX] — result: [Passed / Failed / Inconclusive] — implication: [what this means]

**Personas updated:**
- [Changed / Unchanged] — if changed: what was learned

---

#### What Is Still Open

List all hypotheses in `Not started` or `Testing` status:

- [HYP-XXX] — status: [Not started / Testing] — blocker: [why it hasn't moved]

List any assumptions surfaced but not yet converted to hypotheses:
- [Assumption] — risk: [High / Medium] — recommended action: run Hypothesis-Builder

---

#### Sprint Goal

Based on what is still open and what is riskiest:

**Discovery Sprint [N] Goal**
> [One sentence learning goal]

**Hypotheses under test:**
- HYP-XXX — [name]

**Recommended actions:**
1. [Action] — skill: [which skill]
2. [Action] — skill: [which skill]

**Decision gate:**
> [Yes/no question the sprint answers]

---

#### Learning Candidate

Has anything been learned this sprint worth keeping in `Learning.md`?

If yes:
```
Learning Candidate
What: [1 sentence]
Why it matters: [1 sentence]
Source: Discovery Sprint [N]

Save to Learning.md? (yes / no / edit)
```

If nothing meaningful: skip silently.

---

### GATE MODE (`/discovery gate`)

Run `Discovery-Readiness-Checker` across all strategy files, hypotheses, and experiments.

Output the full readiness score and blocking items.

Close with one of:
- **Ready:** "Discovery is complete. Update `product_stage` to `definition` in Settings.md and run `PRD-Builder` on your highest-confidence bet."
- **Partially ready:** "You can proceed with explicit risk acceptance. The following gaps remain: [list]. Document them in `Learning.md` before moving forward."
- **Not ready:** "Discovery is not complete. The following categories are blocked: [list]. Run one more targeted sprint before moving to definition."

---

*End of prompt.*

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

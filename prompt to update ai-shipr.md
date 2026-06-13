# Prompt: Update AI-SHIPR to Support the New Product Stage

**Paste this into Claude Code inside an empty AI-SHIPR framework.**
It will make four targeted changes to the framework so it can support PMs building a new product from scratch.

Do not run this in an instance where you have already made these changes.

---

## Instructions to Claude

You are updating the AI-SHIPR product management framework to support a new product lifecycle stage: **discovery**.

Make the following four changes in order. Read each file before editing it. Confirm each change before moving to the next.

---

### Change 1 — Add `product_stage` to Settings.md

Read `Settings.md`.

Find the `## Mode` section. Insert the following block **immediately before** it:

```
## Product Stage

```
product_stage: discovery
```

Options: `discovery` | `definition` | `building` | `launched` | `iterating`

`discovery`: Product is new. No live metrics, no validated personas, no sprint history. All bets and personas are hypotheses. Agents should:
- Treat KPI targets as aspirational, not tracked
- Frame all strategic bets as unvalidated assumptions
- Prioritize discovery skills: JTBD-Mapper, Persona-Builder, Assumption-Extractor, Hypothesis-Builder, Experiment-Designer, Opportunity-Tree, Lean-Product-Canvas, Product-Strategist
- Deprioritize: Performance-Tracker, Sprint-Summarizer, Build-Review, Retro-Facilitator, Fire-Responder
- In /today: surface pending discovery tasks and unvalidated hypotheses, not sprint metrics

`definition`: Discovery mostly complete. Defining requirements and roadmap. PRD-Builder and Roadmap-Planner are now primary tools.

`building`: In active development sprints. Sprint-Planner, Build-Companion, and Build-Review are now primary.

`launched`: Product is live. All workflows active. Performance-Tracker and Iteration-Planner are now primary.

`iterating`: Post-launch, acting on data. Iteration-Planner and Experiment-Designer are primary.

---
```

Confirm the edit to Settings.md before proceeding.

---

### Change 2 — Add Case 4 to CLAUDE.md

Read `CLAUDE.md`.

Find the line that begins with `**Case 3 — Partial setup**`. Insert the following block **immediately after** the Case 3 paragraph (before the line `Do not attempt to run any agent without strategy context`):

```
**Case 4 — New product, discovery stage** (`product_stage: discovery` in Settings.md AND strategy files are populated):
The PM is building a new product. There are no live metrics, no sprint history, no validated personas, and no launched features. Apply the following adjustments for the entire session:
- **KPI targets are aspirational, not tracked.** Never ask for current metric values or flag their absence.
- **All bets, personas, and problem statements are hypotheses.** Frame them as such in all output. Every bet in Strategic-Bets.md is an untested assumption until explicitly validated.
- **Prioritize discovery skills** in suggestions and /today output: JTBD-Mapper, Persona-Builder, Assumption-Extractor, Hypothesis-Builder, Experiment-Designer, Opportunity-Tree, Lean-Product-Canvas, Product-Strategist.
- **Do not invoke or suggest** Performance-Tracker, Sprint-Summarizer, Build-Review, Retro-Facilitator, or Fire-Responder — these require a live product.
- **In /today:** surface unvalidated hypotheses, pending discovery work, and upcoming stakeholder alignment needs — not sprint metrics or initiative stage reviews.
- **H-Hypotheses is the most important folder right now.** If it is empty, flag it and suggest running Assumption-Extractor on the current bets before anything else.
```

Confirm the edit to CLAUDE.md before proceeding.

---

### Change 3 — Add the product stage question to the Setup Worksheet

Read `AI-SHIPR Setup Worksheet.md`.

Find the line `## Part 2 — Your Strategy`. Insert the following block **immediately after** that heading, before the north star metric question:

```
**What stage is your product at right now?**
Pick one: Discovery / Definition / Building / Launched / Iterating

Discovery:
- What triggered this product idea — customer conversation, market signal, exec directive, or internal hypothesis?
- What do you still need to learn before you can commit to building?
- Have you spoken to any target users yet? If yes, how many and what did you learn?

Definition:
- What has been validated from discovery — what do you now know is true?
- What is the biggest open question still blocking your requirements?
- Do you have a PRD or are you working toward one?

Building:
- What is the current sprint goal?
- What has shipped so far, if anything?
- What is the biggest risk to the current build timeline?

Launched:
- How long has it been live?
- What does your current metric data tell you?
- Are you in growth mode or fixing mode?

Iterating:
- What did the data show that changed your direction?
- What hypothesis are you currently testing?

*(Answer only the sub-questions that match your selected stage. Leave the rest blank.)*

---
```

Confirm the edit to the Setup Worksheet before proceeding.

---

### Change 4 — Create the new product playbook

Create a new file at `A-AI/AI-Playbooks/When-Building-a-New-Product.md` with the following content:

```
# Playbook: When Building a New Product

**Paste this into Claude Code when you are starting a new product from scratch.**
Use it before writing a PRD, before committing to a roadmap, before your first sprint.

This playbook configures AI-SHIPR for the discovery stage and walks you through
the four jobs that matter most before you build anything:
frame the product, validate the user, surface your riskiest assumptions, and plan your first discovery sprint.

Run this once when you start. Re-run any individual step as your thinking evolves.

---

## Instructions to Claude

Read the following files before responding:
- `Settings.md`
- `S-Strategy/Vision.md`
- `S-Strategy/Product.md`
- `S-Strategy/KPIs.md`
- `S-Strategy/Strategic-Bets.md`
- `S-Strategy/Constraints.md`
- `R-Relationships/Me/PM-Profile.md`
- `R-Relationships/Users/Personas.md`

**Important — New Product Context**
Before running any step: check `Settings.md` for `product_stage`.
If it reads `discovery` or is not set, apply the following for the entire session:
- All bets, personas, and problem statements are hypotheses, not facts. Label them as such.
- Do not ask for current metric values. KPI targets are aspirational only.
- Do not invoke Performance-Tracker, Sprint-Summarizer, Build-Review, Retro-Facilitator, or Fire-Responder — these require a live product.
- H-Hypotheses is the most important folder at this stage. If it is empty at the end of this session, flag it.

If `product_stage` is not set in Settings.md: recommend the PM add it and set it to `discovery` before proceeding.

---

Then run the following sequence. Complete each step before moving to the next. Do not skip steps.

---

**Step 1 — Frame the Product**

Read `S-Strategy/Vision.md` and `S-Strategy/Product.md`.

Assess: is the product definition specific enough to make decisions from?
A strong definition names a specific user, a specific problem, a specific outcome, and what the product will NOT do.

If any of those four elements is vague or missing:
- Flag exactly what is missing
- Ask the PM one targeted question to close each gap
- Do not proceed to Step 2 until Vision.md and Product.md are solid

If both files are solid: confirm briefly and proceed.

---

**Step 2 — Stress-Test the User**

Read `R-Relationships/Users/Personas.md`.

For each persona defined:
- Flag whether it was derived from real customer conversations or is still hypothetical
- Identify the single biggest unknown about this persona — the thing that, if wrong, changes what you build
- Ask: "Have you spoken to anyone matching this persona yet?"

If personas are hypothetical (typical for a new product):
- Label them clearly as unvalidated hypotheses, not facts
- Run **Persona-Builder** to tighten the profile: sharpen the job-to-be-done, add a specific emotional driver, and identify where this persona can be found for interviews

After completing, ask: "Do you want me to update Personas.md with the sharpened version?"
If yes: write the updated file.

---

**Step 3 — Surface the Riskiest Assumptions**

Run **Assumption-Extractor** across the full strategy:
- `S-Strategy/Strategic-Bets.md` — extract the hidden assumption inside each bet
- `R-Relationships/Users/Personas.md` — extract assumptions about user behaviour, motivation, and willingness to pay
- `S-Strategy/Product.md` — extract assumptions about the problem, the solution, and the business model

For each assumption extracted:
- Rate risk: High / Medium / Low
- Flag which ones would kill the product or bet if wrong
- Identify which are testable now vs. only testable after building

Present a ranked list: top 5 riskiest assumptions, ordered by: (risk level × how early it can be tested).

Ask: "Which of these do you want to convert into hypotheses?"
Wait for the PM's answer.

Run **Hypothesis-Builder** on each selected assumption.
For each hypothesis confirmed by the PM:
- Write the HYP file to `H-Hypotheses/HYP-[short-name]-[number].md`
- Confirm the path after writing

---

**Step 4 — Plan the First Discovery Sprint**

Based on the hypotheses filed in Step 3, produce a Discovery Sprint Plan:

## Discovery Sprint Goal
[One sentence: what do we need to know by end of sprint to reduce the biggest risk?]

## Hypotheses Under Test This Sprint
- HYP-XXX: [name]
- HYP-XXX: [name]

## Validation Methods
| Hypothesis | Method | Who | Target # |
|------------|--------|-----|----------|
| HYP-XXX    | Customer interview | [persona] | 8 |
| HYP-XXX    | Engineering spike  | Engineering lead | 1 |

## What We Will NOT Do This Sprint
- [Keep the scope narrow — discovery sprints fail when they try to validate too much]

## Decision Gate
By end of sprint, we can answer: [yes/no question — the bet lives or dies on this]

Ask: "Do you want me to save this as your first initiative file?"
If yes: write to `I-Initiatives/Discovery-Sprint-1.md`
Set Stage: `Defined`

---

**Step 5 — Set the Stage**

Check `Settings.md`. If `product_stage` is not set or is not `discovery`:
Instruct the PM to add the following line to Settings.md under the Mode section:

product_stage: discovery

Explain: this single flag tells every agent and workflow that there are no live metrics, all bets are unvalidated, and the system should prioritize discovery skills for the rest of this product stage.

When the PM is ready to move from discovery to definition (requirements locked, key personas validated):
Update `product_stage` to `definition` — this shifts the system's defaults automatically.

---

**Step 6 — Confirm What's Missing**

Run a quick structural check. Flag any of the following that are still blank or template-only:
- `S-Strategy/Vision.md` — is the product defined clearly?
- `S-Strategy/Strategic-Bets.md` — are there 1-3 bets with explicit success signals?
- `R-Relationships/Users/Personas.md` — is there at least one specific, named persona?
- `R-Relationships/Stakeholders/Stakeholders.md` — are key stakeholders documented?
- `H-Hypotheses/` — is there at least one hypothesis per strategic bet?

For each gap: name the file, name what's missing, and point to the relevant part of the Setup Worksheet or the skill that closes it.

Close with:
> "You're set up for discovery. Your next move is customer interviews — start with the highest-risk hypothesis from Step 3. When you've run 5+ interviews, come back and run /learn or paste the research into I-Information/Resources/ and run the Learner."

---

## My Product Context

> [Optional — paste any raw context about your product here: what it does, who it's for, what problem it solves, why now. Even rough notes are fine. The playbook will work without this, but it will ask fewer questions if you include it.]

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
```

Confirm the new file has been created before proceeding.

---

## When All Four Changes Are Done

Confirm each of the following:
- [ ] `Settings.md` — `product_stage` block added before `## Mode`
- [ ] `CLAUDE.md` — Case 4 added after Case 3
- [ ] `AI-SHIPR Setup Worksheet.md` — stage question added at top of Part 2
- [ ] `A-AI/AI-Playbooks/When-Building-a-New-Product.md` — created

Then write:

> "AI-SHIPR now supports the discovery stage. To use it:
> 1. Set `product_stage: discovery` in Settings.md
> 2. Complete the Setup Worksheet — answer the stage sub-questions in Part 2
> 3. Run `When-Building-a-New-Product.md` from the Playbooks folder to activate the full discovery workflow"

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

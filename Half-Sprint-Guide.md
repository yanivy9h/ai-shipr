# AI-SHIPR Half-Sprint Guide

## Get your AI Product Operating System live in 5 days.

---

## Why Half a Sprint

Most tools ask you to stop working and learn them.
AI-SHIPR works the other way. You set it up by doing real work.

In 5 days (half a sprint), you will have:
- A filled, audited strategy layer
- Filed initiatives linked to bets
- 2-3 falsifiable hypotheses
- One stakeholder meeting prepped with AI
- Your first learning loop closed

That is not onboarding. That is a productive half-sprint.

---

## Sprint Goal

> AI-SHIPR is live, populated with real context, and has been used on at least three real problems. The first loop is closed.

## Definition of Done

- [ ] S-Strategy passes Structural Integrity Audit
- [ ] R-Relationships filled (PM Profile, Personas, Stakeholders)
- [ ] At least 1 Initiative filed in I-Initiatives
- [ ] At least 2 Hypotheses filed in H-Hypotheses
- [ ] At least 1 meeting prepped using Stakeholder-Translator
- [ ] Learning.md has first entries
- [ ] Structural Integrity Auditor has been run on the full system

---

## Three Things to Know Before You Start

**Agents** are persistent AI personas with broad judgment. You describe a situation and they think through it — Problem-Framer, Decision-Architect, Stakeholder-Translator are all agents. They read your strategy files before responding.

**Skills** are single-task tools you invoke on demand. You give them an input and they produce a specific structured output — Assumption-Extractor, Hypothesis-Builder, Tradeoff-Mapper are all skills. They do one thing well.

**Slash commands** are the triggers that run a skill or workflow. Type `/today`, `/sprint`, or `/weekly` and Claude runs the full workflow for that command. You don't need to remember which skills to call — the command handles that.

That's the whole vocabulary. Everything in this guide is one of those three things.

---

## Before Day 1

One rule: use real current work. Not a hypothetical. Not a sample problem.

The initiative you file should be one you are actually running.
The decision you structure should be one you are actually facing.
The meeting you prep should be one happening this week.

If you use practice problems, you will get a configured template.
If you use real problems, you will get a working operating system.

---

## Day 1 — Strategy Layer

**Focus:** Fill S-Strategy so every agent has context before they run.

**Actions:**
1. Complete `Setup-Worksheet.md` — raw answers, plain language, 30 minutes max
2. Run `01-Populate-Strategy` — paste the prompt into Claude Code and it will read your worksheet automatically
3. Run `Structural-Integrity-Auditor` on S-Strategy only
4. Fix every gap it flags before moving on

**Deliverable:** S-Strategy is filled and passes audit.

**Why this first:** Agents without strategy context give generic output. Every agent you run after today will read these files. The quality of the whole week depends on the quality of Day 1.

**Time required:** 60-90 minutes

---

## Day 2 — Relationships Layer

**Focus:** Fill R-Relationships so agents know your people.

**Actions:**
1. Fill `Me/PM-Profile.md` — your role, biggest challenge, operating preference
2. Fill `Users/Personas.md` — 2 user segments with job-to-be-done and core pain
3. Fill `Stakeholders/Stakeholders.md` — 3 key stakeholders, their incentives, likely objections
4. Run `Stakeholder-Translator` on one stakeholder — even with a rough initiative — just to see what the agent produces with real context

**Deliverable:** R-Relationships is filled. You have seen Stakeholder-Translator in action.

**Why this matters:** Stakeholder alignment failures are the most common reason good initiatives die. The sooner the agent knows your stakeholders, the sooner it can help you navigate them.

**Time required:** 45-60 minutes

---

## Day 3 — Problem Framing

**Focus:** Take your biggest current challenge through the intelligence layer.

**Actions:**
1. Write your #1 current problem in plain language — 1 paragraph, do not over-prepare
2. Run `Problem-Framer` — get a sharpened problem statement
3. Run `Assumption-Extractor` on the output
4. List the 3 highest-risk assumptions

**Deliverable:** Problem is sharp and structured. Assumptions are explicit.

**What to expect:** This is usually the day the system becomes real. The Problem Framer will surface at least one gap you had not articulated. The Assumption Extractor will name at least one belief you were treating as a fact.

**Time required:** 30-45 minutes

---

## Day 4 — Initiative + Decision

**Focus:** File your first Initiative and structure any pending decision.

**Actions:**
1. Create Initiative file in `I-Initiatives/` — link it to a Strategic Bet
2. Set a measurable outcome with a time horizon
3. If a decision is pending: run `Decision-Architect`
4. If options are competing: run `Tradeoff-Mapper`
5. Run `Narrative-Refiner` on the initiative for your most important stakeholder

**Deliverable:** First Initiative is filed and linked to strategy. Pending decision is structured or explicitly deferred with a date.

**The test:** If you cannot link the initiative to a Strategic Bet, that is a signal — either the bet is missing or the initiative is disconnected from strategy. Do not paper over it. Either add the bet or reconsider the initiative.

**Time required:** 45-60 minutes

---

## Day 5 — Hypothesis Sprint + Loop Close

**Focus:** Convert assumptions into hypotheses and close the loop.

**Morning — Hypothesis Sprint:**
1. Take the 2-3 highest-risk assumptions from Day 3
2. Run `Hypothesis-Builder` on each
3. File each in `H-Hypotheses/`
4. Verify each passes: falsifiable, metric defined, thresholds set, time-bound

**Afternoon — Stakeholder Meeting Prep:**
1. Identify a real meeting happening this week or next
2. Run `Stakeholder-Translator` — specify the exact stakeholder
3. Review predicted objections and framing strategy
4. Adjust your preparation based on the output

**End of Day — Full Audit + Loop Close:**
1. Run `02-Structural-Integrity-Auditor` across all artifacts created this week
2. Fix every flagged gap
3. Update `Learning.md`:
   - Which agents saved the most time
   - Which outputs needed significant editing
   - What context was missing that you had to add manually
   - What to do differently in the next half-sprint

**Deliverable:** 2-3 filed hypotheses. One meeting prepped. First loop closed. System has memory.

**Time required:** 90-120 minutes

---

## Sprint Review

Answer these before you close the week:

**What shipped:**
- S-Strategy: filled / partially filled / empty
- R-Relationships: filled / partially filled / empty
- Initiatives filed: [N]
- Hypotheses filed: [N]
- Decisions structured: [N]
- Meetings prepped: [N]

**What the system helped with most:**
- [Write one sentence]

**What still felt manual:**
- [Write one sentence]

**What to build or improve in the next half-sprint:**
- [1-2 items maximum]

---

## What Comes Next

The second half-sprint runs the system on a full week of real work.

By then you are not setting up. You are operating.

The `/today` workflow replaces your Monday morning chaos.
The `02-Structural-Integrity-Auditor` becomes your weekly discipline.
`Learning.md` starts compounding.

That is when the system earns its place permanently.

---

## The One Thing That Kills This

Filing outputs in chat instead of in the folder structure.

Here is why this matters structurally: Claude has no memory between conversations. When a session ends, everything said in that conversation is gone. The only thing that persists is what was written to a file. CLAUDE.md is read at the start of every new session — that is how Claude knows your product, your agents, your context. Everything else resets.

This means:

- A hypothesis that exists only in chat is gone tomorrow.
- A decision structured in chat cannot be audited next sprint.
- Assumptions extracted in chat never become filed hypotheses.

The folder is not where you store things. The folder is the system. Every output that matters goes into a file — that is what makes sessions compound instead of reset.

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

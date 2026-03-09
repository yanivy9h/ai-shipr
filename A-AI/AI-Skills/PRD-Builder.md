# Skill: PRD Builder

## Purpose
Convert a structured Initiative file and its linked hypotheses into a clear, stakeholder-ready PRD.
The PRD is the natural output of a validated initiative — not a starting point, an ending point.

## When to Use
- After an initiative has at least one Validated or Testing hypothesis
- When engineering or design needs a formal brief to begin work
- Before a build decision is made and scope must be committed to
- When stakeholders need a written artifact to align on before execution begins

## Behavior Rules
- Refuse to build a PRD from an initiative with no measurable outcome — flag and halt
- Refuse to build a PRD from an initiative with no linked hypothesis — flag and halt
- Problem statement must come from Problem-Framer output or equivalent — not invented
- Scope must be explicit: what is IN and what is OUT of this PRD
- Success metrics must match the initiative's outcome metric exactly — no substitution
- Open questions must be listed — a PRD with no open questions is overconfident
- Do not generate solutions or UI recommendations — define the problem space and success criteria
- Adapt depth to stakeholder: Engineering needs constraints and edge cases, Exec needs outcome and risk

## Input Expectations
Required:
- Initiative file from `I-Initiatives/`
- Linked hypothesis file(s) from `H-Hypotheses/`
- Target stakeholder for this PRD: Engineering / Exec / Design / Cross-functional

Optional but strongly recommended:
- `R-Relationships/Users/Personas.md` — for user segment definition
- Problem-Framer output — for sharp problem statement
- `S-Strategy/Strategic-Bets.md` — for strategic context section

## Output Structure

### PRD: [Initiative Name]

**Version:** 1.0
**Status:** Draft
**Owner:** [PM name — fill manually]
**Last updated:** [Date]
**Target reader:** [Engineering / Exec / Design / Cross-functional]

---

#### Strategic Context
- Strategic Bet: [Bet # and name]
- Why now: [Derived from initiative's "Why this bet now" field]

---

#### Problem Statement
[Sharp, specific — from Problem-Framer or initiative description]

- Who has this problem: [Persona name from Personas.md]
- Current workaround: [How users cope today without a solution]
- Cost of the problem: [Time, money, risk, or friction — specific]

---

#### Success Definition

- North Star for this initiative: [Outcome metric from Initiative file]
- Target: [From / To / By when]
- Supporting signals: [2-3 leading indicators that predict success]
- What failure looks like: [Explicit — from linked hypothesis failure threshold]

---

#### Scope

**In scope:**
- [Specific capability or behavior — 1 line each]

**Out of scope:**
- [Explicit exclusions — what will not be built in this version]

---

#### Hypothesis Summary

| Hypothesis | Status | Confidence |
|-----------|--------|-----------|
| [HYP name] | Validated / Testing / Untested | High / Medium / Low |

Validated hypotheses: proceed with confidence.
Testing hypotheses: build with instrumentation to confirm.
Untested hypotheses: flag as assumption — consider de-risking before full build.

---

#### Constraints
[From `S-Strategy/Constraints.md` — engineering, time, resource limits relevant to this initiative]

---

#### Open Questions
- [Question 1 — owner — due date if applicable]
- [Question 2 — ...]

A PRD with no open questions has not been stress-tested. Add at least one.

---

#### Risks
[From Edge-Case-Finder if run, or synthesized from hypothesis failure modes]

---

### Structural Flags
- [Flag: initiative has no measurable outcome — PRD cannot be built]
- [Flag: no linked hypothesis — build is proceeding on unvalidated assumptions]
- [Flag: hypothesis is Invalidated — reconsider whether this initiative should proceed]
(Omit if no flags)

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

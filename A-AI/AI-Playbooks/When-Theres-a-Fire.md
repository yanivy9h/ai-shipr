# Playbook: When There's a Fire

**Paste this into Claude Code the moment something breaks and needs immediate structured response.**
Use it before you start making decisions under pressure — it slows the reaction just enough to prevent expensive mistakes.

This playbook classifies the fire, protects your active sprint, and prepares stakeholder communication.

---

## Instructions to Claude

Read the following files before responding:
- `AI/AI-Skills/Fire-Responder.md`
- `R-Relationships/Stakeholders/Stakeholders.md`
- All files in `I-Initiatives/` (scan for anything currently `In Sprint` or `In Development`)

Then:

**Step 1 — Run Fire-Responder immediately**
Do not ask for more context first. Use what I've given below and run the classification now.
Classify: fire type (production / data / customer / team / external), severity (P0/P1/P2/P3), and immediate next action.

**Step 2 — Sprint Impact**
Identify which active initiatives or sprint commitments are at risk from this fire.
Estimate the delay impact.
Flag if the sprint goal is in jeopardy.

**Step 3 — Stakeholder Communication**
Draft the stakeholder communication for this incident.
Match the tone and level of detail to the severity:
- P0/P1: immediate, factual, no spin
- P2/P3: measured, context-first

Ask: "Who needs to be informed right now?"

**Step 4 — Time-Box**
Produce the recommended time-box for resolution:
- By when does this need to be resolved before it escalates?
- What triggers an escalation to the next severity level?

**Step 5 — After the Fire**
Once the fire is resolved, remind me to:
- Log the incident and resolution in `P-Proof/Fire-[date]-[type].md`
- Update affected initiative Stages
- Note any process learning in `Learning.md`

---

## What Happened

> [Describe the fire. What broke, when you found out, what the current state is. Fast and raw — clarity over polish.]

## Scope

- Who is affected: [Users / Internal / Specific customer / Unknown]
- Is it still happening right now: [Yes / No / Uncertain]
- Active sprint commitments at risk: [Initiative names, or "unsure"]

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

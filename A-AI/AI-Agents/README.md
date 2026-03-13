# AI-Agents

Persistent agents that hold a role and stay active across sessions.
Unlike skills (single-task) or workflows (multi-step sequences), agents have a defined perspective and apply it consistently every time they're invoked.

---

## What agents do

Each agent has a fixed purpose — a lens it applies to your product work.
Call an agent when you want that lens applied consistently, not just once.

---

## Current Agents (8)

| Agent | Purpose | When to use |
|---|---|---|
| `Problem-Framer.md` | Forces clarity on product problems before solution work begins | Vague framing, missing outcomes, broken links to strategy |
| `Decision-Architect.md` | Structures complex decisions with options, criteria, and tradeoffs made explicit | Avoided decisions, competing options, instinct-based choices |
| `Stakeholder-Translator.md` | Prepares alignment by reframing initiatives in stakeholder language | Before presentations, uncertain alignment, expect pushback |
| `Structural-Integrity-Auditor.md` | Audits SHIPR artifacts for structural gaps before they cause downstream damage | Before marking initiative Active, before presenting strategy, weekly reviews |
| `Learner.md` | Scans the Resources folder and surfaces what is relevant to current work | When new material has been added, as part of Weekly Review |
| `PM-Coach.md` | Handles interpersonal challenges, stuck-between-options moments, and post-situation debriefs | Difficult conversations, competing options with no clear winner, post-incident debrief |
| `Lean-Product-Canvas.md` | Runs the Lean Product Canvas — builds, reviews, and exports structured product strategy, orchestrating skills at each box | Starting a new initiative, stuck on what to build, validating an idea before committing |
| `Product-Strategist.md` | Builds complete product strategy using JTBD, Opportunity Solution Tree, and OKR — one level above initiative work | Starting from scratch, strategy refresh, roadmap feels untethered from customer problems |

---

## Lead Mode Agents (2)

*Active when `team_mode: lead` in Settings.md. For team leads managing other PMs.*

| Agent | Purpose | When to use |
|---|---|---|
| `Portfolio-Strategist.md` | Cross-product portfolio view — maps team initiatives to strategic bets, surfaces coverage gaps, overload risks, and allocation decisions | Portfolio review, quarterly planning, exec update, resource allocation |
| `Team-Manager.md` | Manages a team of PMs — prepares 1:1s, structures performance conversations, handles struggling PMs, runs team health checks | Before 1:1s, difficult feedback situations, team health reviews, performance conversations |

---

## How to use an agent

Reference the agent file in your Claude Code session:

```
Run the Problem Framer on this initiative: [paste initiative]
```

Or add the agent to your CLAUDE.md so it's always available.

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
# AI-Agents

Persistent agents that hold a role and stay active across sessions.
Unlike skills (single-task) or workflows (multi-step sequences), agents have a defined perspective and apply it consistently every time they're invoked.

---

## What agents do

Each agent has a fixed purpose — a lens it applies to your product work.
Call an agent when you want that lens applied consistently, not just once.

---

## The Agents (12)

Grouped by the kind of work they do. Nine solo agents, two lead-mode agents for managing a team, and one system guide.

### Framing & Strategy
*Deciding what to build and why.*

| Agent | Purpose | When to use |
|---|---|---|
| `Problem-Framer.md` | Forces clarity on product problems before solution work begins | Vague framing, missing outcomes, broken links to strategy |
| `Product-Strategist.md` | Builds complete product strategy using JTBD, Opportunity Solution Tree, and OKR — one level above initiative work | Starting from scratch, strategy refresh, roadmap feels untethered from customer problems |
| `Lean-Product-Canvas.md` | Runs the Lean Product Canvas — builds, reviews, and exports structured product strategy, orchestrating skills at each box | Starting a new initiative, stuck on what to build, validating an idea before committing |

### Decisions & Rigor
*Making the call, and keeping the work sound.*

| Agent | Purpose | When to use |
|---|---|---|
| `Decision-Architect.md` | Structures complex decisions with options, criteria, and tradeoffs made explicit | Avoided decisions, competing options, instinct-based choices |
| `Structural-Integrity-Auditor.md` | Audits SHIPR artifacts for structural gaps before they cause downstream damage | Before marking initiative Active, before presenting strategy, weekly reviews |

### Signals & Alignment
*Connecting the product to the outside — the data and the people.*

| Agent | Purpose | When to use |
|---|---|---|
| `Product-Signal-Reader.md` | Turns raw product analytics into structured interpretation and next-step hypotheses, read in launch context | After a launch (24–48h of data), when metrics are unclear or contested, or you need a data story for stakeholders |
| `Stakeholder-Translator.md` | Prepares alignment by reframing initiatives in stakeholder language and predicting objections | Before presentations, uncertain alignment, expecting pushback |

### Growth & Knowledge
*Developing you as a PM, and pulling the outside world in.*

| Agent | Purpose | When to use |
|---|---|---|
| `PM-Coach.md` | Coaches the PM as a person and a professional — interpersonal challenges, stuck-between-options moments, debriefs, and PM skills leveling & growth | Difficult conversations, no clear option, post-incident debrief, assessing your skills or planning growth/promotion |
| `Learner.md` | Scans the Resources folder and surfaces what is relevant to current work | When new material has been added, as part of Weekly Review |

---

## Lead Mode — Managing a Team (2)

*Active when `team_mode: lead` in Settings.md. For team leads managing other PMs.*

| Agent | Purpose | When to use |
|---|---|---|
| `Portfolio-Strategist.md` | Cross-product portfolio view — maps team initiatives to strategic bets, surfaces coverage gaps, overload risks, and allocation decisions | Portfolio review, quarterly planning, exec update, resource allocation |
| `Team-Manager.md` | Manages a team of PMs — prepares 1:1s, structures performance conversations, handles struggling PMs, runs team health checks | Before 1:1s, difficult feedback situations, team health reviews, performance conversations |

---

## System Guide (1)

*Not a product lens — your guide to the system itself.*

| Agent | Purpose | When to use |
|---|---|---|
| `SHIPR-Guide.md` | Explains how AI-SHIPR works: agents, skills, workflows, folder structure, and what to do next | "How do I..." questions about the system, or when you are unsure which agent or skill to reach for |

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
# AI-Skills

Single-purpose tools that do one job well.
Call a skill when you need a specific output — it runs, produces the result, and exits.
Unlike agents (persistent perspective) or workflows (multi-step sequences), skills are focused and fast.

---

## Solo PM Skills (25)

### Discovery & Framing

| Skill | Purpose |
|---|---|
| `JTBD-Mapper` | Produces a structured Jobs-to-be-Done analysis — job statement, functional/emotional/social dimensions, competing alternatives, and top unmet needs |
| `Opportunity-Tree` | Builds an Opportunity Solution Tree — maps desired outcome to ranked customer opportunities, candidate solutions, and next experiment |
| `Assumption-Extractor` | Surfaces hidden assumptions in initiatives — makes implicit risks explicit and testable |
| `Hypothesis-Builder` | Converts assumptions into falsifiable hypotheses with metric, threshold, and time boundary |
| `Research-Synthesizer` | Converts raw research (interviews, surveys, notes) into structured signals for hypotheses and personas |
| `Persona-Builder` | Builds structured, actionable user personas from research signals |
| `Edge-Case-Finder` | Stress-tests initiatives and experiments — surfaces failure scenarios, blind spots, second-order effects |
| `Experiment-Designer` | Designs the minimum viable experiment for a riskiest assumption — selects experiment type, defines pass/fail criteria, outputs a structured experiment card |

### Prioritization & Decisions

| Skill | Purpose |
|---|---|
| `Priority-Stack` | Scores and ranks initiatives or features with explicit criteria — replaces gut-feel prioritization |
| `Tradeoff-Mapper` | Maps tradeoffs between options structurally — forces real costs into the open |
| `OKR-Partner` | Defines sharp, measurable OKRs explicitly linked to Strategic Bets |

### Stakeholder & Communication

| Skill | Purpose |
|---|---|
| `Narrative-Refiner` | Transforms structured thinking into stakeholder-ready communication — preserves rigor, removes noise |
| `Cross-Team-Mapper` | Maps dependencies, handoffs, and owners across teams for a given initiative |
| `1on1-Prep` | Structures 1:1 agendas from active initiatives, pending decisions, and blockers |
| `Board-Update-Builder` | Generates a structured product update for exec, board, or investor audiences — translates portfolio state into signals leadership actually reads |

### Build Phase

| Skill | Purpose |
|---|---|
| `PRD-Builder` | Converts a validated initiative + hypotheses into a clear, stakeholder-ready PRD |
| `Build-Companion` | Supports in-sprint decisions — keeps PRD from becoming fiction during development |
| `Build-Review` | Prepares sprint review: shipped vs committed, early outcome signals, key decisions made |
| `Fire-Responder` | Applies structured triage to unplanned work — classifies, scopes, and time-boxes fires |

### Post-Launch & Learning

| Skill | Purpose |
|---|---|
| `Performance-Tracker` | Validates or invalidates a hypothesis with post-launch metric data |
| `Retro-Facilitator` | Structures sprint retros into patterns and process improvements — not a support group |
| `Sprint-Summarizer` | Generates clean sprint summaries in two modes: internal team and external stakeholders |

### Pitch

| Skill | Purpose |
|---|---|
| `Business-Case-Builder` | Structures a funding pitch: problem, quantified impact, cost, clear ask |
| `Pitch-Deck-Builder` | Converts Business Case Builder output into a leadership presentation narrative |

### Setup

| Skill | Purpose |
|---|---|
| `Create-PM-Voice` | Analyzes writing samples to produce a PM-Voice.md — makes AI outputs sound like you |

---

## Lead Mode Skills (6)

*Active when `team_mode: lead` in Settings.md.*

### Team Capacity & Structure

| Skill | Purpose |
|---|---|
| `Resource-Allocation-Mapper` | Maps PM headcount and capacity to strategic bets — surfaces coverage gaps and overload risks before they become execution problems |
| `Portfolio-Priority-Stack` | Ranks initiatives across PMs and product areas — portfolio-level sequencing that reflects bet coverage, not individual PM priorities |
| `Org-Design-Framer` | Structures a team design decision — surfaces tradeoffs between org models before the choice is made |

### People & Performance

| Skill | Purpose |
|---|---|
| `Team-Health-Check` | Generates a structured read on team state — blockers, overload signals, relationship risks |
| `PM-Performance-Review` | Structures a performance conversation grounded in observable behavior and outcomes — not impressions |
| `Hiring-Brief-Builder` | Builds a PM job brief linked to current strategy — defines scope, 90-day success, and must-haves for a specific open role |

---

## Skill Chains

Skills compound when run in sequence. Common chains:

```
Assumption-Extractor → Hypothesis-Builder
Research-Synthesizer → Persona-Builder
Business-Case-Builder → Pitch-Deck-Builder
Build-Review → Performance-Tracker → Retro-Facilitator
Edge-Case-Finder → Experiment-Designer → Performance-Tracker
Research-Synthesizer → Persona-Builder → JTBD-Mapper → Opportunity-Tree → OKR-Partner
```

---

## How to use a skill

Reference the skill in your Claude Code session:

```
Run the Assumption Extractor on this initiative: [paste initiative]
```

Or chain them:

```
Run Research-Synthesizer on these interview notes, then build a persona from the output.
```

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

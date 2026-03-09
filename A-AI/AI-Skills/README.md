# AI-Skills

Single-purpose tools that do one job well.
Call a skill when you need a specific output — it runs, produces the result, and exits.
Unlike agents (persistent perspective) or workflows (multi-step sequences), skills are focused and fast.

---

## Current Skills (21)

### Discovery & Framing

| Skill | Purpose |
|---|---|
| `Assumption-Extractor.md` | Surfaces hidden assumptions in initiatives — makes implicit risks explicit and testable |
| `Hypothesis-Builder.md` | Converts assumptions into falsifiable hypotheses with metric, threshold, and time boundary |
| `Research-Synthesizer.md` | Converts raw research (interviews, surveys, notes) into structured signals for hypotheses and personas |
| `Persona-Builder.md` | Builds structured, actionable user personas from research signals |
| `Edge-Case-Finder.md` | Stress-tests initiatives and experiments — surfaces failure scenarios, blind spots, second-order effects |

### Prioritization & Decisions

| Skill | Purpose |
|---|---|
| `Priority-Stack.md` | Scores and ranks initiatives or features with explicit criteria — replaces gut-feel prioritization |
| `Tradeoff-Mapper.md` | Maps tradeoffs between options structurally — forces real costs into the open |
| `OKR-Partner.md` | Defines sharp, measurable OKRs explicitly linked to Strategic Bets |

### Communication & Alignment

| Skill | Purpose |
|---|---|
| `Narrative-Refiner.md` | Transforms structured thinking into stakeholder-ready communication — preserves rigor, removes noise |
| `Cross-Team-Mapper.md` | Maps dependencies, handoffs, and owners across teams for a given initiative |
| `1on1-Prep.md` | Structures 1:1 agendas from active initiatives, pending decisions, and blockers |

### Build Phase

| Skill | Purpose |
|---|---|
| `PRD-Builder.md` | Converts a validated initiative + hypotheses into a clear, stakeholder-ready PRD |
| `Build-Companion.md` | Supports in-sprint decisions — keeps PRD from becoming fiction during development |
| `Build-Review.md` | Prepares sprint review: shipped vs committed, early outcome signals, key decisions made |

### Fire & Response

| Skill | Purpose |
|---|---|
| `Fire-Responder.md` | Applies structured triage to unplanned work — classifies, scopes, and time-boxes fires |

### Post-Launch & Learning

| Skill | Purpose |
|---|---|
| `Performance-Tracker.md` | Validates or invalidates a hypothesis with post-launch metric data |
| `Retro-Facilitator.md` | Structures sprint retros into patterns and process improvements — not a support group |
| `Sprint-Summarizer.md` | Generates clean sprint summaries in two modes: internal team and external stakeholders |

### Pitch

| Skill | Purpose |
|---|---|
| `Business-Case-Builder.md` | Structures a funding pitch: problem, quantified impact, cost, clear ask |
| `Pitch-Deck-Builder.md` | Converts Business Case Builder output into a leadership presentation narrative |

### Setup

| Skill | Purpose |
|---|---|
| `Create-PM-Voice.md` | Analyzes writing samples to produce a PM-Voice.md — makes AI outputs sound like you |

---

## How to use a skill

Reference the skill file in your Claude Code session:

```
Run the Assumption Extractor on this initiative: [paste initiative]
```

Skills can also be chained. Common sequences:
- `Assumption-Extractor` → `Hypothesis-Builder`
- `Research-Synthesizer` → `Persona-Builder`
- `Business-Case-Builder` → `Pitch-Deck-Builder`

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
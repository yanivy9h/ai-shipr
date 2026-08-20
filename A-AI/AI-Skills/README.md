# AI-Skills

Single-purpose tools that do one job well.
Call a skill when you need a specific output — it runs, produces the result, and exits.
Unlike agents (persistent perspective) or workflows (multi-step sequences), skills are focused and fast.

---

## Slash Commands (6)

Skills you can type directly. `setup.sh` installs a file as a typeable slash command when its YAML frontmatter has a `name:` field **and does not have `user-invocable: false`**.

| File | Command | Purpose |
|------|---------|---------|
| `Today.md` | `/today` | Daily briefing — priority stack, decisions, stale items |
| `Weekly.md` | `/weekly` | Friday loop close |
| `Review-Initiative.md` | `/review-initiative` | Weekly initiative health check |
| `Review-Experiment.md` | `/review-experiment` | Weekly experiment status review |
| `Handoff.md` | `/handoff` | EOD summary or ownership transfer handoff |
| `Sync-Context.md` | `/sync-context` | Refresh `vp/shared/` from Notion or Confluence. Team setups only |

`/shipr-guide` is also typeable — it lives in `A-AI/AI-Agents/`, not here.

**Not slash commands, despite earlier versions of this table saying so:** `Sprint.md`, `Iterate.md`, `Plan.md`, `Launch.md` and `Figma.md` are all marked `user-invocable: false`. They load as skills the model auto-invokes when the situation matches, and you can call them by name ("run Sprint on this"), but typing `/sprint` will not find anything.

To install or restore slash commands: run `bash setup.sh` from the AI-SHIPR root, then restart Claude Code.

---

## Solo PM Skills (45, including the six slash commands above)

### Discovery & Framing

| Skill | Purpose |
|---|---|
| `Working-Backwards` | Breaks a raw idea by writing the launch first: press release, FAQ, customer experience, user manual. Amazon's method, including the 2026 amendment: routes to prototype-first or write-first depending on where the uncertainty sits, and builds a thin throwaway prototype itself when the uncertainty is the approach |
| `Prototype-Builder` | Turns one written uncertainty into a runnable prototype and a read on what it taught. Picks fidelity from the question, time-boxes the build, files the result as evidence. Escalation target when Working-Backwards' thin build hits its ceiling. Refuses demand questions |
| `Competitive-Landscape-Mapper` | Maps the alternatives users choose today — positioning gap, differentiation signal, switching cost. Run before user research begins |
| `Interview-Guide-Builder` | Generates a structured customer interview guide tied to a specific hypothesis and persona. Run before every round of user interviews |
| `Interview-Synthesizer` | Converts post-interview notes into structured signals using the original guide as context. Feeds directly into Research-Synthesizer |
| `Research-Synthesizer` | Converts raw research (interviews, surveys, notes) into structured signals for hypotheses and personas |
| `Persona-Builder` | Builds structured, actionable user personas from research signals |
| `JTBD-Mapper` | Produces a structured Jobs-to-be-Done analysis — job statement, functional/emotional/social dimensions, competing alternatives, and top unmet needs |
| `Opportunity-Tree` | Builds an Opportunity Solution Tree — maps desired outcome to ranked customer opportunities, candidate solutions, and next experiment |
| `Assumption-Extractor` | Surfaces hidden assumptions in initiatives — makes implicit risks explicit and testable |
| `Hypothesis-Builder` | Converts assumptions into falsifiable hypotheses with metric, threshold, and time boundary |
| `Edge-Case-Finder` | Stress-tests initiatives and experiments — surfaces failure scenarios, blind spots, second-order effects |
| `Experiment-Designer` | Designs the minimum viable experiment for a riskiest assumption — selects experiment type, defines pass/fail criteria, outputs a structured experiment card |
| `Discovery-Readiness-Checker` | Scores discovery completeness across 5 categories. Surfaces explicit blockers. Gate before moving to Definition stage or running PRD-Builder |

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
| `Meeting-Synthesizer` | Converts raw meeting content (from any source) into decisions, action items, stakeholder signals, and system updates |

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

### Monetization

| Skill | Purpose |
|---|---|
| `Pricing-Packaging` | Designs a value-based pricing model and packaging tiers — forces a value metric, value-based price points, and tiers gated on real value levers, then exposes the assumptions to test before a price ships |

### Continuity

| Skill | Purpose |
|---|---|
| `Handoff-Builder` | Two modes. **EOD:** structured end-of-day summary — what was done, what is in progress, what is blocked, and a 3-bullet quick-start for tomorrow. Lets you resume the next morning with zero re-orientation. **Handoff:** decision-ready ownership transfer for a named person or role — active initiatives with first actions, pending decisions with recommendations, blockers with specific asks, and key stakeholder context. Run with "EOD handoff" or "create a handoff for [name]" |

### Planning & Cycle (auto-invoked — not typeable, call by name)

| Skill | Purpose |
|---|---|
| `Sprint` | Sprint planning — maps active initiatives to capacity, outputs a sprint goal with committed items |
| `Plan` | Roadmap planning — translates strategic bets into a sequenced initiative stack |
| `Launch` | Pre-launch go/no-go checklist, run 3–5 days before a planned launch |
| `Iterate` | Iteration planning — close one cycle and open the next after a measurement window completes |
| `Figma` | Loads the most recent synced Figma file's design structure into the session |

### Setup & System

| Skill | Purpose |
|---|---|
| `Create-PM-Voice` | Analyzes writing samples to produce a PM-Voice.md — makes AI outputs sound like you |
| `Sync-Context` | Refreshes the local `vp/shared/` org layer from a shared surface that is not a file system (Notion, Confluence). Team setups only — Google Drive and SharePoint mount directly and need no sync |
| `close-session-protocol` | Session-close sweep — scans the conversation for unwritten captures and proposes one combined diff. Fired automatically by the root CLAUDE.md rule, never typed |

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

Skills compound when run in sequence. Common chains.

Handoff-Builder is typically the last skill run in any session — it closes the loop on whatever was done and sets up the next session.

```
Assumption-Extractor → Hypothesis-Builder
Working-Backwards → Assumption-Extractor → Hypothesis-Builder → Experiment-Designer
Working-Backwards → Problem-Framer → PRD-Builder
Working-Backwards (prototype-first) → Prototype-Builder → Working-Backwards (write the docs)
Hypothesis-Builder → Prototype-Builder → Interview-Guide-Builder      (feasibility / usability)
Hypothesis-Builder → Experiment-Designer                             (demand — never Prototype-Builder)
Research-Synthesizer → Persona-Builder
Business-Case-Builder → Pitch-Deck-Builder
Pricing-Packaging → Business-Case-Builder → Pitch-Deck-Builder
Build-Review → Performance-Tracker → Retro-Facilitator
Edge-Case-Finder → Experiment-Designer → Performance-Tracker
Research-Synthesizer → Persona-Builder → JTBD-Mapper → Opportunity-Tree → OKR-Partner

Discovery chain (full):
Competitive-Landscape-Mapper → Persona-Builder → Interview-Guide-Builder → [interviews] → Interview-Synthesizer → Research-Synthesizer → JTBD-Mapper → Opportunity-Tree → Assumption-Extractor → Hypothesis-Builder → Experiment-Designer → Discovery-Readiness-Checker
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

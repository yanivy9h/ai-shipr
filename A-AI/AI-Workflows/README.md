# AI-Workflows

Multi-step sequences that run through the full Agile loop.
Workflows read from multiple system files, apply several skills in sequence, and produce a structured output.
Unlike skills (single-task), workflows orchestrate a complete process from start to finish.

**Invocation:** workflows are not typeable slash commands — invoke by name ("run the Roadmap Planner") or let Claude auto-invoke when the situation matches. The daily and weekly rhythms have skill counterparts in `AI-Skills/` that ARE typeable: `/today`, `/weekly`, `/review-initiative`, `/review-experiment`.

---

## Current Workflows (15)

### Discovery

| Workflow | Purpose | When |
|---|---|---|
| `Discovery-Sprint.md` | Orchestrate the full discovery phase — setup, sprint check-ins, and readiness gate. Three modes: setup (first run), check-in (each sprint), gate | Start of discovery phase; start and end of each discovery sprint |

### Daily

| Workflow | Purpose | When |
|---|---|---|
| `today.md` | Start the day with strategy-driven priorities — replaces inbox-driven mornings. Typeable via the `/today` skill | Every morning (5 min) |

### Sprint Cycle

| Workflow | Purpose | When |
|---|---|---|
| `Sprint-Planner.md` | Sprint kickoff: goal, committed scope, out-of-scope list | Start of each sprint |
| `Weekly-Review.md` | Close the week: what moved, decided, learned — loop compounding. Typeable via the `/weekly` skill | Every Friday (15 min) |

### Strategic Planning

| Workflow | Purpose | When |
|---|---|---|
| `Roadmap-Planner.md` | Translates strategic bets into a sequenced initiative stack — surfaces coverage gaps and sequencing conflicts | Quarterly / monthly planning, before leadership review |
| `01-Populate-Strategy.md` | Converts AI-SHIPR-Setup-Worksheet answers into ready-to-file content for S-Strategy and R-Relationships | Day 1 of Half-Sprint, onboarding, post-pivot reset |

### Weekly Reviews

| Workflow | Purpose | When |
|---|---|---|
| `Initiative-Review.md` | Structured health check of all active initiatives — what moves, what's stuck, what needs a decision. Typeable via the `/review-initiative` skill | Once per week |
| `Experiment-Review.md` | Review all active and completed experiments — enforce Continue / Iterate / Kill discipline. Typeable via the `/review-experiment` skill | Once per week alongside Initiative Review |

### Launch & Post-Launch

| Workflow | Purpose | When |
|---|---|---|
| `Launch-Coordinator.md` | Pre-launch go/no-go checklist: criteria, content, experiments, stakeholder sign-off, rollback conditions | 3–5 days before launch |
| `Iteration-Planner.md` | Post-data loop re-entry: read proof, close one cycle, open the next bet | After data comes in post-launch |

### Meetings & Auditing

| Workflow | Purpose | When |
|---|---|---|
| `After-Meeting.md` | Synthesize meeting notes and propagate decisions, stakeholder signals, and initiative updates into the system | Right after any meeting |
| `Gap-Analyzer.md` | Run the Structural Integrity Auditor on any artifact — PRD, initiative, hypothesis, business case | Before any artifact moves forward |

### Lead Mode (`team_mode: lead` in Settings.md)

| Workflow | Purpose | When |
|---|---|---|
| `Portfolio-Review.md` | Review the portfolio across PMs and product areas | Portfolio-level review, quarterly planning |
| `Resource-Allocator.md` | Allocate PM capacity across bets and initiatives | When capacity or priorities shift |
| `Team-Review.md` | Team-level review covering PMs, blockers, and health signals | Recurring team review |

---

## Workflow dependency chain

Key sequences that must run in order:

```
Sprint-Planner → [build phase] → Weekly-Review
Launch-Coordinator → [launch] → Iteration-Planner
Experiment-Review → Performance-Tracker (skill) → Iteration-Planner
```

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

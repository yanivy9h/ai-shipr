# AI-Workflows

Multi-step sequences that run through the full Agile loop.
Workflows read from multiple system files, apply several skills in sequence, and produce a structured output.
Unlike skills (single-task), workflows orchestrate a complete process from start to finish.

Most workflows have a corresponding `/command` you can run directly in Claude Code.

---

## Current Workflows (9)

### Daily

| Workflow | Command | Purpose | When |
|---|---|---|---|
| `today.md` | `/today` | Start the day with strategy-driven priorities — replaces inbox-driven mornings | Every morning (5 min) |

### Sprint Cycle

| Workflow | Command | Purpose | When |
|---|---|---|---|
| `Sprint-Planner.md` | `/sprint` | Sprint kickoff: goal, committed scope, out-of-scope list | Start of each sprint |
| `Weekly-Review.md` | `/weekly` | Close the week: what moved, decided, learned — loop compounding | Every Friday (15 min) |

### Strategic Planning

| Workflow | Command | Purpose | When |
|---|---|---|---|
| `Roadmap-Planner.md` | — | Translates strategic bets into a sequenced initiative stack — surfaces coverage gaps and sequencing conflicts | Quarterly / monthly planning, before leadership review |
| `Populate-Strategy.md` | — | Converts Setup Worksheet answers into ready-to-file content for S-Strategy and R-Relationships | Day 1 of Half-Sprint, onboarding, post-pivot reset |

### Weekly Reviews

| Workflow | Command | Purpose | When |
|---|---|---|---|
| `Initiative-Review.md` | `/review-initiative` | Structured health check of all active initiatives — what moves, what's stuck, what needs a decision | Once per week |
| `Experiment-Review.md` | `/review-experiment` | Review all active and completed experiments — enforce Continue / Iterate / Kill discipline | Once per week alongside Initiative Review |

### Launch & Post-Launch

| Workflow | Command | Purpose | When |
|---|---|---|---|
| `Launch-Coordinator.md` | `/launch` | Pre-launch go/no-go checklist: criteria, content, experiments, stakeholder sign-off, rollback conditions | 3–5 days before launch |
| `Iteration-Planner.md` | `/iterate` | Post-data loop re-entry: read proof, close one cycle, open the next bet | After data comes in post-launch |

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
# AI-Workflows — Index

15 multi-step sequences. None are typeable slash commands — invoke by name ("run the Roadmap Planner") or auto-invoke when the situation matches. The daily/weekly rhythms have skill counterparts in `AI-Skills/` that ARE typeable (`/today`, `/weekly`, `/review-initiative`, `/review-experiment`).

## When to run which

| Workflow | Run when |
|---|---|
| `today.md` | Every morning — strategy-driven priorities |
| `Weekly-Review.md` | Every Friday — close the loop |
| `Initiative-Review.md` | Weekly — health check of all active initiatives |
| `Experiment-Review.md` | Weekly — Continue / Iterate / Kill discipline |
| `Discovery-Sprint.md` | Discovery phase: setup, per-sprint check-in, or readiness gate |
| `Sprint-Planner.md` | Start of each sprint — goal, committed scope, out-of-scope |
| `Roadmap-Planner.md` | Quarterly/monthly planning — bets → sequenced initiative stack |
| `Launch-Coordinator.md` | 3–5 days before any launch — go/no-go checklist |
| `Iteration-Planner.md` | After post-launch data comes in — close one cycle, open the next |
| `Gap-Analyzer.md` | Before any artifact moves forward — structural audit |
| `After-Meeting.md` | Right after any meeting — synthesize and propagate to system |
| `01-Populate-Strategy.md` | Initial setup — converts the Setup Worksheet into S-Strategy and R-Relationships content |

**Lead mode only** (`team_mode: lead`)

| Workflow | Run when |
|---|---|
| `Portfolio-Review.md` | Portfolio-level review across PMs and product areas |
| `Resource-Allocator.md` | Allocating PM capacity across bets |
| `Team-Review.md` | Team-level review — PMs, blockers, health signals |

## Key context

Sequences that must run in order:
`Sprint-Planner → [build] → Weekly-Review` · `Launch-Coordinator → [launch] → Iteration-Planner` · `Experiment-Review → Performance-Tracker (skill) → Iteration-Planner`

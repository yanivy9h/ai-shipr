# P-Proof — Index

The evidence layer: experiments, data reads, launch records, research, post-mortems — and the measurement layer that makes metric conversations start from checked-in definitions instead of pasted numbers.

## Doc index

**Evidence records** (one file per event, created from the `*-Template.md` files at this level):
- `exp-*.md` (experiments) · `data-*.md` (data reads) · `launch-checklist-*.md` / `launch-log-*.md` (launches) · `research-*.md` (user research) · `signals-*.md` (weak-signal logs) · `postmortem-*.md` · `Prototypes/<name>/` (runnable prototypes + what they taught)

**Measurement layer** (the PM curates; data people provide, but never work in this repo):
- `Metrics/<area>/metrics.md` — metric definitions only, split by product area. Read FIRST for any "what does this metric mean" question — never guess a definition that exists here.
- `Queries/` — SQL the PM filed, blessed by whoever owns the data. Read when a number needs to be produced or checked. Never invent SQL for a metric whose query exists here.
- `Schemas/` — table documentation. Read only when validating data or extending a query.
- `Investigations/` — verified investigation methods ("how we diagnose a funnel drop"). `Product-Signal-Reader` follows these instead of improvising. (Named Investigations, not Playbooks — `A-AI/AI-Playbooks/` is a different thing.)
- `dashboards.md` — links to live dashboards, by area.

## Key context

Escalation ladder — load only as deep as the question requires: definition (`Metrics/`) → query (`Queries/`) → schema (`Schemas/`) → live data connection (last resort, see `Connections.md`). The launch gate in `Launch-Coordinator` blocks "Launched" until the feature's metrics, queries, and dashboard links are filed here, so the layer fills as a side effect of shipping. In `team_mode: lead`, org-wide metric definitions may live in `shared/` — check there before duplicating locally.

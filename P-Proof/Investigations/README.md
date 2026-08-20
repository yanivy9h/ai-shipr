# Investigations — Verified Methods

How your team actually investigates recurring data questions — funnel drop-off, metric dips, retention changes. `Product-Signal-Reader` follows the method filed here instead of improvising one, which is how analysis stays consistent between sessions and between askers.

(Named Investigations, not Playbooks: `A-AI/AI-Playbooks/` holds situation guides for the PM. These are analysis methods for data questions. Different things, deliberately different names.)

## File naming

`[question-type].md` — e.g. `funnel-drop-off.md`, `metric-dip.md`, `retention-change.md`.

## Template

```markdown
# Investigation: [Question type]

**When to run:** [the trigger — "conversion drops >X% week-over-week", "exec asks why signups fell"]
**Verified by:** [name/role] on [YYYY-MM-DD]

## Method
1. [Step — which query/dashboard to check first, and what a normal reading looks like]
2. [Step — the segmentation or comparison that isolates the cause]
3. [Step — how to rule out the usual false alarms: seasonality, tracking changes, rollout %]

## Interpretation guardrails
- [What sample size / time window is required before calling anything]
- [The classic wrong conclusion this investigation tends to produce, and how to avoid it]

## Output
[What the finished investigation states: cause / confidence / recommended next hypothesis]
```

## Rules

- Same curation model as `Queries/`: the PM files, the data person blesses, nobody else works in the repo.
- An investigation that references queries should point at files in `Queries/` — never at SQL that exists only in someone's head.

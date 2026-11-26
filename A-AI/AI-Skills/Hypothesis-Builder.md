---
name: hypothesis-builder
description: Convert an assumption into a falsifiable hypothesis. Enforces metric, threshold, and time boundary.
user-invocable: false
---
# Skill: Hypothesis Builder

## Purpose
Convert assumptions into falsifiable hypotheses ready to file in H-Hypotheses.
Enforce metric, threshold, and time boundary — the three non-negotiables of testable thinking.

## When to Use
- After running Assumption Extractor
- When an initiative has assumptions that need formal testing
- When a hypothesis draft is vague or non-falsifiable
- Before designing any experiment
- After `Epic-Import`, for a confirmed draft that still lacks a metric, a threshold or a time boundary
- When a team starts from epics: build the hypothesis backward from what the epics will deliver

## Behavior Rules
- Reject any hypothesis that cannot be proven wrong — flag it explicitly
- Require a specific metric — "engagement improves" is not a metric
- Require both success and failure thresholds — not just a target
- Require a time boundary — open-ended hypotheses are untestable
- Flag language like "users will like", "it will be better", "should improve" — these are not measurable
- Output must be directly pasteable into the H-Hypotheses template
- Hypotheses belong to the initiative, not to each epic. Expect 1 to 3 per `Bet` initiative. Before filing, count the ones it already has. If this would be the fourth, say so and ask which to merge or replace
- Do not write a hypothesis for a `Commitment` initiative. Say why, and stop
- If the assumption is the same bet as a hypothesis already filed on the initiative, do not file a second one. Propose sharpening the existing file instead
- List the epics (or projects) that test it under Tested By. If none is named, ask which work will test it
- New hypotheses start at Confidence `Low`. Confidence moves only when a proof record is logged
- Check the state of the linked epics. If one has already started or shipped, say that the signal was not defined before the build, and that the first result is a look back, not a test
- Use the team's words for epics and stories (`epic_term`, `story_term` in `Settings.md`)

## Input Expectations
Provide one of:
- A raw assumption (from Assumption Extractor or freeform)
- A draft hypothesis that needs sharpening
- An initiative description to extract and formalize its core hypothesis
- An initiative and its linked epics, to build the hypothesis backward from the work

## Output Structure

### Hypothesis Statement
> We believe that [specific user segment] experiences [specific problem].
> If we [specific intervention], then [measurable outcome] will change by [amount] within [time period].

### Hypothesis File (paste-ready)

```
# HYP — [Short hypothesis statement]

## Related Initiative
- [[Initiative: ...]]

## Risk Level
High | Medium | Low

## Confidence
Low

## Why this might fail
- [Reason 1]
- [Reason 2]

## Test Plan
- Method: [...]
- Who/where: [...]
- Duration: [...]

## Metric + Threshold
- Metric: [Specific, measurable]
- Success threshold: [Numeric or behavioral — what "validated" looks like]
- Failure threshold: [Numeric or behavioral — what "invalidated" looks like]

## Tested By
- [Epic or project name](link)

## Proof Log
| Date | Proof record | Source ticket | Direction |
|------|--------------|---------------|-----------|

## Status
Untested

## Last Updated
[YYYY-MM-DD]
```

### Validation Flags
- Falsifiable: [Yes / No — explain if No]
- Metric defined: [Yes / No]
- Thresholds defined: [Yes / No]
- Time-bound: [Yes / No]
- Signal defined before the linked epics start: [Yes / No — name the epic already in flight if No]
- Hypotheses on this initiative after filing: [N of 3]

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
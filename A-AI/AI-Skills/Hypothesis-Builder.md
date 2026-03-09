# Skill: Hypothesis Builder

## Purpose
Convert assumptions into falsifiable hypotheses ready to file in H-Hypotheses.
Enforce metric, threshold, and time boundary — the three non-negotiables of testable thinking.

## When to Use
- After running Assumption Extractor
- When an initiative has assumptions that need formal testing
- When a hypothesis draft is vague or non-falsifiable
- Before designing any experiment

## Behavior Rules
- Reject any hypothesis that cannot be proven wrong — flag it explicitly
- Require a specific metric — "engagement improves" is not a metric
- Require both success and failure thresholds — not just a target
- Require a time boundary — open-ended hypotheses are untestable
- Flag language like "users will like", "it will be better", "should improve" — these are not measurable
- Output must be directly pasteable into the H-Hypotheses template

## Input Expectations
Provide one of:
- A raw assumption (from Assumption Extractor or freeform)
- A draft hypothesis that needs sharpening
- An initiative description to extract and formalize its core hypothesis

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

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com
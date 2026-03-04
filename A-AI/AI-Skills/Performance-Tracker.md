# Skill: Performance Tracker

## Purpose
Validate or invalidate the original hypothesis using post-launch metric data.
Close the proof loop between what was predicted and what actually happened.
Feed findings back into H-Hypotheses and surface signals for the next iteration.

## When to Use
- 2-4 weeks after a feature or initiative launches (first signal read)
- At the end of the measurement window defined in the linked hypothesis
- When a metric is moving and you need to interpret what it means for the hypothesis
- Before running Iteration-Planner — this is its required input

## Behavior Rules
- Always compare against the original hypothesis — not against general goals
- Distinguish between signal and noise — one week of data is rarely conclusive
- Do not declare validation on incomplete data — state confidence level explicitly
- Do not declare invalidation without checking for confounding factors first
- If results are mixed, say so — partial confirmation is a real outcome
- Update the hypothesis file status after running this skill
- Surface at least one signal for the next iteration — even a failed hypothesis teaches something
- Flag if the metric defined in the hypothesis was never instrumented — this is a P-Proof gap

## Input Expectations
Provide:
- Actual metric data since launch (numbers, not descriptions)
- The linked hypothesis file or its key details:
  - Original metric
  - Success threshold
  - Failure threshold
  - Measurement window

Optional:
- Any known confounding factors (other changes that launched at the same time)
- Qualitative signals (support tickets, user feedback, sales comments)

## Output Structure

### Performance Read: [Initiative / Feature Name]

**Measurement period:** [Date range]
**Data completeness:** [Full window / Partial — [N] of [N] days]

---

#### Hypothesis Scorecard

| Element | Defined | Actual | Status |
|---------|---------|--------|--------|
| Metric | [Original metric] | [Actual value] | — |
| Success threshold | [Target] | — | Met / Not met |
| Failure threshold | [Threshold] | — | Crossed / Not crossed |
| Time window | [Duration] | [Elapsed] | Complete / Partial |

**Hypothesis status:** Validated / Partially Validated / Invalidated / Inconclusive
**Confidence:** High / Medium / Low — [reason]

---

#### Confounding Factors
- [Any other changes that could explain the result]
- If none identified: "No confounding factors detected — results attributable to this initiative with [confidence] confidence."

---

#### What the Data Suggests

**If Validated:**
> The original bet holds. [What this means for the initiative and the next cycle.]

**If Partially Validated:**
> [What worked, what did not, where the gap is between predicted and actual.]

**If Invalidated:**
> [What the data actually shows. What assumption was wrong. Whether to pivot or kill.]

**If Inconclusive:**
> [Why — insufficient data, wrong metric, confounding factors. What to do to get a clean read.]

---

#### Signals for Next Iteration
- [Signal 1: what user behavior or metric movement points to the next opportunity]
- [Signal 2: ...]

---

#### Actions Required
- [ ] Update hypothesis status in `H-Hypotheses/[file]` to: [Validated / Invalidated]
- [ ] Add learning to `Learning.md`: "[What this launch taught us]"
- [ ] Run `Iteration-Planner` if cycle is complete
- [ ] Flag for `Metric-Investigator` if result is unexpected and cause is unclear

---

> **© Yaniv Yaakubovich**
> Product Management & AI Consulting: [www.verve-pm.com](www.verve-pm.com)

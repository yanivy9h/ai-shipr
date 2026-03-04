# P-Proof

The evidence layer. Every experiment, data read, research session, launch record, and post-mortem lives here.
This is where hypotheses come to be validated or killed — not confirmed by gut feel.

---

## Role in the system

```
H-Hypotheses (what we believe) → P-Proof (here's the test) → Learning.md (what we learned)
```

Proof closes the loop. Without this folder, you have opinions. With it, you have a learning system.

---

## Files in this folder

| Template | What it is | Naming convention |
|----------|-----------|-------------------|
| `Experiment-Template.md` | A/B test or variant experiment | `exp-[name].md` |
| `Data-Read-Template.md` | Any structured data pull — post-launch, weekly, hypothesis check | `data-[name].md` |
| `Launch-Checklist-Template.md` | Pre-launch go/no-go readiness check | `launch-checklist-[initiative].md` |
| `Launch-Log-Template.md` | What shipped, when, immediate signals | `launch-log-[initiative].md` |
| `User-Research-Template.md` | Interview, usability test, or discovery session | `research-[name].md` |
| `Signal-Log-Template.md` | Accumulating weak signals from calls, CS, sales, reviews | `signals-[topic].md` |
| `Post-Mortem-Template.md` | Incident or failed launch debrief | `postmortem-[name].md` |

---

## Experiment structure (what each file contains)

Each experiment file tracks:
- **Linked Hypothesis** — the H-Hypotheses file this experiment is testing
- **Setup** — variant(s), target audience, and duration
- **Metric + Threshold** — the exact metric and the number that means it worked
- **Results** — what was observed
- **Interpretation** — what it suggests and confidence level
- **Decision** — `Continue | Iterate | Kill` — forced conclusion, no ambiguity

---

## Who reads this folder

| Tool | What it uses |
|---|---|
| `Experiment-Review` workflow | Reviews all active and completed experiments weekly |
| `Performance-Tracker` skill | Reads experiment results to validate or invalidate the linked hypothesis |
| `Iteration-Planner` workflow | Reads proof results to decide what the next cycle should be |
| `Structural-Integrity-Auditor` agent | Checks experiments for missing thresholds, missing hypothesis links, or undefined decisions |

---

## The proof discipline

A proof file is not a results dump. It must answer one question: **did the hypothesis hold?**

If the decision field is blank, the loop is not closed.
If the metric threshold was never defined, the result cannot be interpreted.
If no hypothesis is linked, the experiment was theatre.

---

## Naming convention

```
exp-[short-name].md
```

Examples:
- `exp-onboarding-step-reduction.md`
- `exp-email-subject-line-test.md`
- `exp-checkout-friction-audit.md`

---

> **© Yaniv Yaakubovich**
> Product Management & AI Consulting: [www.verve-pm.com](www.verve-pm.com)

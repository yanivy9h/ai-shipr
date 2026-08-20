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

Prototypes are evidence too, so they live here as folders rather than single files:

| Folder | What it is | Naming convention |
|--------|-----------|-------------------|
| `Prototypes/[name]/` | A runnable prototype plus the question it answered and the read on what it taught. Written by `Working-Backwards` (thin, throwaway) or `Prototype-Builder` (deeper) | `Prototypes/[idea-name]/index.html` + `README.md` |

A prototype folder without its `README.md` is unreadable within weeks. The question, the timebox, what was faked, and what it taught all live in the notes file, not in someone's memory.

---

## The measurement layer

Evidence records (above) capture what happened. The measurement layer defines how things are measured — so every metric conversation starts from checked-in definitions instead of pasted numbers:

| Folder / file | What it holds | Read when |
|---|---|---|
| `Metrics/<area>/metrics.md` | Metric definitions only — no SQL | "What does this metric mean?" |
| `Queries/` | The SQL behind each metric, blessed by your data person, with a verification header | A number needs producing or checking |
| `Schemas/` | Docs for the tables those queries touch | Validating data or extending a query |
| `Investigations/` | Verified methods for recurring data questions (funnel drop, metric dip) | Before improvising an analysis |
| `dashboards.md` | Links to every live dashboard, by area | "Where do I look?" |

**The model:** the PM curates; data people provide and bless, but never work in this repo. Each folder's README carries its template and rules.

**The gate:** `Launch-Coordinator` blocks "Launched" until the feature's metrics, queries, and dashboard links are filed — so this layer fills as a side effect of shipping, not as a documentation project. `PRD-Builder` plans the filing in its Measurement Plan section; `Product-Signal-Reader` reads the layer before interpreting any data.

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
| `Prototype-Builder` skill | Writes prototypes and their reads into `Prototypes/`, and appends findings to the linked hypothesis |
| `Working-Backwards` skill | Writes its thin prototype into `Prototypes/` before the press release is written |

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

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

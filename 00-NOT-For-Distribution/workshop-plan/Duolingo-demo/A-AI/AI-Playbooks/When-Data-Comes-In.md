# Playbook: When Data Comes In

**Paste this into Claude Code when post-launch metric data is available.**
Use it 2–4 weeks after launch, when you have enough data to read the hypothesis.

This playbook validates (or invalidates) the hypothesis, explains the gap, and surfaces the next move.

---

## Instructions to Claude

Read the following files before responding:
- `AI/AI-Skills/Performance-Tracker.md`
- `AI/AI-Workflows/Iteration-Planner.md`
- `Learning.md`
- The initiative file I name below (from `I-Initiatives/`)
- The linked hypothesis file (from `H-Hypotheses/`)

Then:

**Step 1 — Run Performance-Tracker**
Use my metric data below to run the full Performance-Tracker workflow.
Produce: hypothesis scorecard (predicted vs actual vs delta), confidence assessment, confounding factors, and signals for next iteration.

**Step 2 — Verdict**
State the hypothesis verdict clearly:
`Validated` / `Partially Validated` / `Invalidated` / `Inconclusive`
Explain the verdict in one paragraph — no euphemisms if it's bad news.

**Step 3 — Next Move**
Based on the verdict, surface the recommended next direction:
Double down / Pivot / Iterate / Kill / Explore
Explain why, tied to the data and the strategic bet.

**Step 4 — Iteration-Planner**
Ask: "Do you want to run Iteration-Planner to set up the next cycle?"
If yes: run the full Iteration-Planner workflow using Performance-Tracker findings.

**Step 5 — Write**
Ask: "Do you want me to save this performance read?"
If yes:
- Write Performance-Tracker output to `P-Proof/Performance-[initiative-name].md`
- Update hypothesis file status to `Validated` / `Invalidated` / `Archived`
- Update initiative Stage to `Monitoring` or `Iterating`
- Write Learning.md entry for this cycle's finding

---

## Initiative & Hypothesis

- Initiative: [name — must match file in I-Initiatives/]
- Linked hypothesis: [HYP file name]
- Measurement window: [Start date → End date]
- Time since launch: [N weeks]

## Metric Data

> [Paste your actual numbers here. Include baseline and post-launch figures. Raw data is fine.]
>
> Example format:
> - [Metric name]: Before = X, After = Y, Expected = Z
> - [Metric name]: Before = X, After = Y, Expected = Z

## Context

- Anything unusual during the measurement window: [Yes — describe / No]
- Competing changes that may have affected results: [Yes — describe / No]
- Qualitative signals (support, sales, user interviews): [Any notable signals]

---

> **© Yaniv Yaakubovich**
> Product Management & AI Consulting: [www.verve-pm.com](www.verve-pm.com)

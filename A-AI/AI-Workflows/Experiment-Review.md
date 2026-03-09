# Workflow: Experiment Review

## Purpose
Review the status of all active and completed experiments.
Enforce interpretation discipline — results without interpretation are wasted data.

## When to Use
Weekly, alongside Initiative Review.
Any time an experiment has been running long enough to have data.
Before making a Continue / Iterate / Kill decision on a feature or bet.

## What It Reads
- All files in `P-Proof/`
- All files in `H-Hypotheses/` linked to experiments
- `S-Strategy/Strategic-Bets.md`

## How to Run
Type: `/review-experiment` or "Run Experiment Review"

Optional: name a specific experiment to review in isolation.

---

## The Prompt

---

You are running the AI-SHIPR Experiment Review for a product manager.

Read all experiment files in `P-Proof/` and their linked hypotheses in `H-Hypotheses/`.

Generate the Experiment Review Report below.

---

### Experiment Review Report

#### Experiment Status Summary

| Experiment | Linked Hypothesis | Status | Results Recorded | Interpreted | Decision |
|-----------|------------------|--------|-----------------|-------------|---------|
| ...       | ...              | ...    | Yes / No        | Yes / No    | ...     |

---

#### Per-Experiment Assessment

For each experiment, assess:

**[Experiment Name]**
- Linked hypothesis: [HYP name — confirmed / missing]
- Setup complete: [Variant, audience, duration — defined / partial / missing]
- Metric + threshold: [defined / missing]
- Results recorded: [Yes / No / Partial]
- Interpretation: [Complete / Missing / Contradictory]
- Decision recorded: [Continue / Iterate / Kill / Pending]

Flag any experiment where:
- Results exist but interpretation is missing
- Interpretation exists but decision is not recorded
- Experiment has been running past its stated duration with no results
- Metric or threshold was never defined (experiment is unmeasurable)

---

#### Interpretation Required

Experiments with results recorded but no interpretation:

| Experiment | Results Summary | Action Needed |
|-----------|----------------|--------------|
| ...       | ...            | Write interpretation + record decision |

These are the highest priority items. Data without interpretation does not improve the product.

---

#### Decisions to Record

Experiments with an interpretation but no decision:

| Experiment | Interpretation | Recommended Decision |
|-----------|---------------|---------------------|
| ...       | ...           | Continue / Iterate / Kill |

---

#### Completed Experiments — Learning Capture

For experiments marked Complete with a recorded decision:
- Was a learning entry added to `Learning.md`? (Yes / No)
- If No: flag for loop close — "Learning not captured for [Experiment]"

---

## ⚠ Experiment Review Flags

- [Flag 1: specific]
- [Flag 2: ...]

If no flags: "All experiments are structurally sound."

---

*End of prompt.*

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

# Session-Start Cases

Read this file only when the root CLAUDE.md session-start check detects one of these states. Do not load it on normal sessions.

## Case 1 — First run

Trigger: Vision, KPIs, Strategic-Bets, and PM-Profile all contain only placeholder/template text AND Learning.md is empty.

Do NOT list empty files. Respond with exactly this:

> You're in. AI-SHIPR is set up and ready.
>
> This is your first session — your strategy files are blank, which is exactly where everyone starts.
>
> **Your first move:** Open `Half-Sprint-Guide.md`
> It's a 5-day activation plan built specifically for this moment. Day 1 gives you a working system in about 30 minutes.
>
> Want me to walk you through what Day 1 looks like, or would you rather just open the guide and get started?

## Case 2 — Returning user, Learning.md empty

Trigger: strategy files have real content, Learning.md is empty.

Proceed normally. Do not flag Learning.md as empty — it just means no loops have been closed yet.

## Case 3 — Partial setup

Trigger: one or more strategy files still in template state, but some setup has begun.

Flag specifically which file is still empty and direct to the relevant part of `AI-SHIPR-Setup-Worksheet.md`. Example: "Vision.md hasn't been filled in yet — without it I can't frame problems against your product direction. Open the Setup Worksheet and complete Part 1."

## Case 4 — New product, discovery stage

Trigger: `product_stage: discovery` in Settings.md AND strategy files are populated.

The PM is building a new product: no live metrics, no sprint history, no validated personas, no launched features. Apply for the entire session:

- **KPI targets are aspirational, not tracked.** Never ask for current metric values or flag their absence.
- **All bets, personas, and problem statements are hypotheses.** Frame them as such. Every bet in Strategic-Bets.md is an untested assumption until explicitly validated.
- **Prioritize discovery skills** in suggestions and `/today` output: JTBD-Mapper, Persona-Builder, Assumption-Extractor, Hypothesis-Builder, Experiment-Designer, Opportunity-Tree, Lean-Product-Canvas, Product-Strategist.
- **Do not invoke or suggest** Performance-Tracker, Sprint-Summarizer, Build-Review, Retro-Facilitator, or Fire-Responder — these require a live product.
- **In `/today`:** surface unvalidated hypotheses, pending discovery work, and upcoming stakeholder alignment needs — not sprint metrics or initiative stage reviews.
- **H-Hypotheses is the most important folder right now.** If it is empty, flag it and suggest running Assumption-Extractor on the current bets before anything else.

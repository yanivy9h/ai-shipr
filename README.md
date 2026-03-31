# AI-SHIPR

**An AI-native product operating system for product managers.**

Built in Claude Code by Yaniv Yaakubovich, a product management consultant who has led product at Google, PayPal, and early-stage startups. Designed to run alongside your real work — not replace it.

---

## The problem

Every time you open a new Claude session, you start from zero.

You re-explain your product. Re-establish context. Re-describe the team, the bets, the open decisions. You get useful output — for that session. Then it's gone.

The result: AI helps you with tasks, but it never knows your product. It has no memory of what you decided last week, what hypothesis you're testing, what your stakeholder said in Tuesday's meeting. Every session is a first date.

That's not how a thinking partner works.

---

## What AI-SHIPR is

AI-SHIPR is a structured folder system that gives Claude persistent memory of your product, your strategy, and your open decisions — so every session builds on the last one instead of starting from scratch.

It's not a prompt library. It's not a template collection. It's a product operating system: a set of structured files that Claude reads before every session, plus a layer of agents, skills, and workflows that run against those files to help you do real PM work.

It covers the full Agile loop:

- **Strategy** — vision, bets, KPIs, constraints
- **Hypotheses** — structured, falsifiable, linked to bets
- **Initiatives** — scoped, staged, linked to hypotheses
- **Proof** — experiments with defined thresholds and decision points
- **Relationships** — personas, stakeholders, your own PM profile
- **Learning** — a log that updates after every session, making the system smarter over time

---

## How it works (and why it's different from just a context file)

A context file is static. You update it manually. Claude reads it when you paste it in.

AI-SHIPR is different in three ways:

**1. Agents and skills update the files.**
After every experiment review, sprint close, or stakeholder prep, the system writes its output back into the folder. The next session starts with a richer context than the last one. Not because you maintained it — because the system did.

**2. The structure enforces thinking, not just storage.**
Every hypothesis must be falsifiable. Every initiative must link to a strategic bet. Every experiment must have a failure threshold, not just a success condition. Claude flags gaps before it generates output. This is an alignment operating model, not a notes app.

**3. It compounds.**
A PM who has run 20 sessions with AI-SHIPR has a fundamentally different starting point than one who has run 1. The Learning.md grows. The stakeholder context sharpens. The AI stops giving generic advice because it actually knows the product — your product, your constraints, your specific bets.

One workshop participant described it as: *"A second brain for daily and weekly product work."*

---

## What's in this repo

```
AI-SHIPR/
├── Settings.md           — voice mode, integrations, team configuration
├── S-Strategy/           — Vision, Product, KPIs, Strategic Bets, Constraints
├── H-Hypotheses/         — falsifiable hypotheses, filed and tracked
├── I-Initiatives/        — active work linked to bets and hypotheses
├── P-Proof/              — experiments, performance reads, launch checklists
├── R-Relationships/      — Me/ (PM Profile, PM Voice), Users/ (Personas), Stakeholders/
├── I-Information/        — Resources, Templates, Integrations (Figma, Slack, Linear, etc.)
├── A-AI/
│   ├── AI-Agents/        — persistent AI personas (Problem Framer, Decision Architect, etc.)
│   ├── AI-Skills/        — single-task tools (Hypothesis Builder, PRD Builder, etc.)
│   ├── AI-Workflows/     — repeatable sequences (/today, /sprint, /weekly)
│   └── AI-Playbooks/     — paste-and-run prompts for specific situations
├── Learning.md           — what the system has learned across all sessions
├── Half-Sprint-Guide.md  — 5-day activation plan to get the system live
└── CLAUDE.md             — session start protocol (Claude reads this automatically)
```

---

## See it in action

The `examples/Duolingo/` folder contains a fully populated AI-SHIPR instance for a fictional Senior PM on Duolingo's Learner Engagement team.

It's not a toy example. It's a working system with real product tensions:

- A D14 retention problem stuck at 22% for three quarters
- Two credible bets, both blocked for different reasons (one on a Data Science model, one on Finance alignment)
- A monetization constraint that makes the obvious solution risky (free streak repair vs. Streak Freeze revenue)
- Three personas that pull in different directions
- Two learning entries from real interviews and post-mortems

Read it the way you'd read a case study — then notice how the files connect to each other. The hypothesis links to the initiative. The initiative links to the experiment. The experiment has a failure threshold. The PM Profile explains why the PM's biggest challenge is stakeholder alignment, not product clarity.

That's what a populated AI-SHIPR instance looks like.

```
examples/Duolingo/
├── S-Strategy/           — Vision, Bets (notifications, streak repair, social loop), KPIs, Constraints
├── H-Hypotheses/         — HYP-001 (adaptive timing), HYP-002 (streak repair)
├── I-Initiatives/        — INI-001 (adaptive notifications), INI-002 (streak repair)
├── P-Proof/              — EXP-001 (streak repair A/B test, full design)
├── R-Relationships/      — PM Profile (Maya), 3 Personas (Casual Learner, Returnee, Streak Purist)
└── Learning.md           — 2 entries: iOS permission timing, sunk-cost framing for churn
```

---

## Try this (2 minutes)

Open Claude and paste this:

> "What's missing from this hypothesis?"

Then paste the contents of `examples/Duolingo/H-Hypotheses/HYP-001.md`.

Now imagine doing that with your own product — with full strategy context, your active bets, your stakeholder history, your open decisions already loaded. Claude doesn't ask you to explain anything. It already knows.

That's what AI-SHIPR enables.

---

## Why most people won't get this to work alone

You can clone this repo and start filling files.

But most PMs get stuck in one of three places:

- They don't know what a good hypothesis actually looks like (vs. a feature idea with a label on it)
- They fill the strategy files once and never close the loop — the system stops compounding
- They fall back to using AI as a writing tool, not a thinking partner

That's not a willpower problem. It's a setup problem.

That's where the workshop comes in.

---

## The workshop

You don't need another framework.

You need this running on your actual product.

In 95 minutes:

- You install AI-SHIPR
- You run it on your own product during the session
- You leave with a working system — not a blank template

By Monday, your AI sessions will stop starting from zero.

**What you'll walk away with:**
- A fully set up AI-SHIPR system on your machine
- Your product mapped into it — strategy, bets, first hypotheses
- Repeatable daily workflows (`/today`, `/sprint`, `/weekly`) running against your context
- A system that gets smarter every session you run

**Who it's for:** Product managers already using Claude or ChatGPT who feel the gap between "helpful outputs" and "real thinking partner." You're good at prompting. The AI just doesn't know your product yet.

**English:** [verve-pm.com/ai-shipr](https://verve-pm.com/ai-shipr)
**Hebrew:** [verve-pm.com/ai-shipr-he](https://verve-pm.com/ai-shipr-he)

---

## Getting started (self-install)

**Option 1: Clone and fill your own.**

1. Clone this repo or download the zip
2. Install [Claude Code](https://claude.ai/code) (CLI or desktop app)
3. Open the folder in any Markdown editor — or [Obsidian](https://obsidian.md/) (free, recommended)
4. Open `Half-Sprint-Guide.md` — a 5-day activation plan built for this moment
5. Start with Day 1: fill `S-Strategy/Vision.md` and run the Structural Integrity Auditor

**Option 2: Learn from the example first.**

Before filling your own files, read through `examples/Duolingo/` in order:
1. `S-Strategy/Vision.md` — what the PM is building and what's out of scope
2. `S-Strategy/Strategic-Bets.md` — how bets connect to specific data signals
3. `H-Hypotheses/HYP-001.md` — notice the failure threshold, not just the success condition
4. The matching initiative and experiment — see how the chain works end to end
5. `Learning.md` — what good loop-closing looks like

Then open your own `S-Strategy/Vision.md` and write yours.

For setup guides, Google Drive team configuration, and additional resources: [verve-pm.com/ai-shipr-resources](https://verve-pm.com/ai-shipr-resources/)

---

## Requirements

- **Claude Code** — [claude.ai/code](https://claude.ai/code) (requires Claude Pro account or higher)
- A product you're managing. That's it.
- (Optional) **Obsidian** (free) — [obsidian.md](https://obsidian.md/)

The system runs in three modes, configured in `Settings.md`:

- `solo` — individual PM, no shared layer. Start here.
- `individual` — part of a product team. Reads org-level context (Vision, OKRs, Strategic Bets) from a shared VP folder before loading your own files. Use this when your team lead has set up a shared org layer.
- `lead` — VP or Team Lead mode. Activates portfolio agents (Portfolio-Strategist) and team management tools (Team-Manager). `/today` aggregates across the whole team. The shared folder you maintain becomes the org layer all individual PMs read from.

Most people start in `solo` and move to `individual` or `lead` when their team adopts the system.

---

## About

**Yaniv Yaakubovich** is a product management consultant based in Israel. He has led product at Google, PayPal, and early-stage startups across fintech, edtech, and SaaS. He now works with founders and product teams helping them build with clarity — clear strategy, hypothesis discipline, and AI that actually knows the product.

AI-SHIPR came out of his own consulting practice. He built it because he was tired of re-explaining his clients' products to Claude at the start of every session. He uses it daily. The workshop is how he installs it on other PMs' machines.

- Workshop: **English** [verve-pm.com/ai-shipr](https://verve-pm.com/ai-shipr) | **Hebrew** [verve-pm.com/ai-shipr-he](https://verve-pm.com/ai-shipr-he)
- Resources: [verve-pm.com/ai-shipr-resources](https://verve-pm.com/ai-shipr-resources/)
- Consulting: [verve-pm.com](https://verve-pm.com)
- LinkedIn: [linkedin.com/in/yanivyaakubovich](https://linkedin.com/in/yanivyaakubovich)

---

> AI-SHIPR stands for: **S**trategy · **H**ypotheses · **I**nitiatives · **P**roof · **R**elationships
> The full Agile loop, in one system.

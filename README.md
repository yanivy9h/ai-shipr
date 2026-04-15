# AI-SHIPR

**AI-native product operating system for product managers using Claude Code.**

---

## TL;DR

AI-SHIPR is a **folder-based system that gives Claude persistent memory of your product**.

Instead of starting every session from zero, Claude reads your strategy, hypotheses, initiatives, and past decisions — so it can think with you, not just respond to prompts.

👉 It turns AI from a tool into a **true product thinking partner**.

---

## The problem

Every time you open a new Claude session, you start from zero.

You re-explain:

* your product
* your strategy
* your current bets
* your team context

You get useful output — for that session.

Then it's gone.

AI helps with tasks.
But it doesn’t **know your product**.

---

## What AI-SHIPR does

AI-SHIPR gives Claude **persistent, structured context** across your entire product workflow.

It organizes your work into a system Claude can read and update:

* Strategy → vision, bets, KPIs
* Hypotheses → structured, falsifiable
* Initiatives → linked to bets
* Proof → experiments with decision thresholds
* Relationships → users, stakeholders, PM profile
* Learning → accumulates across sessions

Every session builds on the last one.

---

## See it in 10 seconds

Instead of:

> “Let me explain my product again…”

You just run:

```
/today
```

And Claude:

* Reviews active initiatives
* Flags weak or broken hypotheses
* Suggests next experiments
* Uses your actual product context

---

## Why this is different

Most people use:

* prompts
* templates
* static context files

AI-SHIPR is different:

**1. It updates itself**
Agents and workflows write back into the system after each session.

**2. It enforces product thinking**

* hypotheses must be falsifiable
* initiatives must link to bets
* experiments must have failure thresholds

**3. It compounds over time**
The more you use it, the smarter it gets.

---

## Try it (2 minutes)

Open Claude and paste:

> “What’s missing from this hypothesis?”

Then paste:
`examples/Duolingo/H-Hypotheses/HYP-001.md`

Now imagine doing this with your own product —
without re-explaining anything.

---

## Who this is for

Product managers who:

* already use Claude or ChatGPT
* are tired of repeating context
* want AI to actually understand their product

---

## What’s inside

```
AI-SHIPR/
├── S-Strategy/        → vision, bets, KPIs
├── H-Hypotheses/      → structured hypotheses
├── I-Initiatives/     → execution layer
├── P-Proof/           → experiments
├── R-Relationships/   → users, stakeholders
├── Learning.md        → accumulated knowledge
└── A-AI/              → agents, skills, workflows
```

---

## See a full example

Check: `examples/Duolingo/`

A complete working system with:

* real product tensions
* competing bets
* experiments with thresholds
* linked artifacts across the system

---

## Getting started

1. Clone the repo
2. Install Claude Code
3. Open `Half-Sprint-Guide.md`
4. Start with your **Vision + Strategy**

---

AI-SHIPR = **Strategy · Hypotheses · Initiatives · Proof · Relationships**

The full Agile loop — with memory.

For setup guides, Team collaboration setup, and additional resources: [verve-pm.com/ai-shipr-resources](https://verve-pm.com/ai-shipr-resources/)

---

## About

**Yaniv Yaakubovich** is a product management consultant based in Israel. He has led product at Google, PayPal, and early-stage startups across fintech, edtech, and SaaS. He now works with founders and product teams helping them build with clarity — clear strategy, hypothesis discipline, and AI that actually knows the product.

AI-SHIPR came out of his own consulting practice. He built it because he was tired of re-explaining his clients' products to Claude at the start of every session. He uses it daily. The workshop is how he installs it on other PMs' machines.

- Workshop: **English** [verve-pm.com/ai-shipr](https://verve-pm.com/ai-shipr) | **Hebrew** [verve-pm.com/ai-shipr-he](https://verve-pm.com/ai-shipr-he)
- Resources: [verve-pm.com/ai-shipr-resources](https://verve-pm.com/ai-shipr-resources/)
- Consulting: [verve-pm.com](https://verve-pm.com)
- LinkedIn: [linkedin.com/in/yanivy9h](https://linkedin.com/in/yanivy9h)

---

> AI-SHIPR stands for: **S**trategy · **H**ypotheses · **I**nitiatives · **P**roof · **R**elationships
> The full Agile loop, in one system.

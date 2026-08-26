# AI-SHIPR

**AI-native product operating system for product managers using Claude Code.**

---

## TL;DR

AI-SHIPR is **a product manager's operating system**: a folder-based system that gives Claude persistent memory of your product.

Instead of starting every session from zero, Claude reads your strategy, hypotheses, initiatives, and past decisions, so it can think with you rather than just respond to prompts.

It turns AI from a tool into a **product thinking partner**.

---

## The problem

Every time you open a new Claude session, you start from zero.

You re-explain:

* your product
* your strategy
* your current bets
* your team context

You get useful output, for that session.

Then it's gone.

AI helps with tasks. But it doesn't **know your product**.

---

## What AI-SHIPR does

AI-SHIPR gives Claude **persistent, structured context** across your entire product workflow.

It organizes your work into a system Claude can read and update:

* Strategy → vision, bets, KPIs
* Hypotheses → structured, falsifiable
* Initiatives → linked to bets
* Proof → experiments with decision thresholds, plus metric definitions and blessed queries
* Relationships → users, stakeholders, PM profile
* Learning → accumulates across sessions

Every session builds on the last one.

---

## See it in 10 seconds

Instead of:

> "Let me explain my product again..."

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

Most people use prompts, templates, or a static context file. AI-SHIPR is a harness.

**1. It updates itself**
Agents and workflows write back into the system after each session. Decisions land in `Decision-Log.md`, patterns in `Learning.md`, before the session closes.

**2. It enforces product thinking**

* hypotheses must be falsifiable
* initiatives must link to bets
* experiments must have failure thresholds

Claude flags the gap instead of quietly filling it with something plausible.

**3. It refuses to make things up**
No fabricated competitors, no ungrounded High/Medium/Low ratings, no invented template fields. When AI-SHIPR doesn't know, it says so. These are system-wide rules, not suggestions in a prompt.

**4. It stays out of your context window**
Context loads in three tiers: a short root index always, folder maps when Claude navigates there, content files only when a question needs them. About **77% less loaded at the start of every session** than the previous version, which leaves more room for Claude to actually think.

**5. It compounds over time**
The more you use it, the more it knows. That is the difference between a prompt library and an operating system.

---

## It connects to your real tools

A system fed by copy-paste is a system that goes stale. `Connections.md` walks six categories: code, tickets, docs, analytics, user research, and workspace. For each one it names the live connection, what it unlocks inside AI-SHIPR, a fallback if you cannot connect it, and the question to take to your compliance team.

Analytics is the one with the highest ceiling. Unconnected, every metric conversation starts with pasted numbers.

---

## Try it (2 minutes)

Open Claude and paste:

> "What's missing from this hypothesis?"

Then paste:
`examples/Duolingo/H-Hypotheses/HYP-001.md`

Now imagine doing this with your own product, without re-explaining anything.

---

## Who this is for

**Product managers and managers of product managers.** Solo PMs, PMs on a team, and the VP or director who runs the org layer they read from.

It fits if you:

* already use Claude or ChatGPT for product work
* are tired of repeating context
* want AI that understands your product, not just your prompt

Other functions get better inputs from a PM running AI-SHIPR. They are not the users.

---

## What's inside

```
AI-SHIPR/
├── CLAUDE.md          → the 73-line root index
├── Session-Start.md   → first-run and empty-state cases
├── Connections.md     → the six tool connections
├── S-Strategy/        → vision, bets, KPIs
├── H-Hypotheses/      → structured hypotheses
├── I-Initiatives/     → execution layer
├── P-Proof/           → experiments, metrics, queries, schemas
├── R-Relationships/   → users, stakeholders
├── Learning.md        → accumulated knowledge
└── A-AI/              → agents, skills, workflows
```

Roughly 73 capabilities: agents for thinking work, skills for single tasks, workflows for multi-step routines, and playbooks organized by the situation you are actually in.

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

1. Clone the repo, or unzip the release
2. Install Claude Code
3. Run `bash setup.sh` once, then restart Claude Code so the commands register
4. Open `Half-Sprint-Guide.md`
5. Start with your **Vision + Strategy**

The setup worksheet (`AI-SHIPR-Setup-Worksheet.md`) collects everything Populate-Strategy needs to fill the system with your product.

Version history and upgrade notes: [CHANGELOG.md](CHANGELOG.md)

---

AI-SHIPR = **Strategy · Hypotheses · Initiatives · Proof · Relationships**

The full Agile loop, with memory.

For setup guides, team collaboration setup, and additional resources: [verve-pm.com/ai-shipr-resources](https://verve-pm.com/ai-shipr-resources/)

---

## About

**Yaniv Yaakubovich** is a product management consultant based in Israel. He has led product at Google, PayPal, and early-stage startups across fintech, edtech, and SaaS. He now works with founders and product teams helping them build with clarity: clear strategy, hypothesis discipline, and AI that actually knows the product.

AI-SHIPR came out of his own consulting practice. He built it because he was tired of re-explaining his clients' products to Claude at the start of every session. He uses it daily. The workshop is how he installs it on other PMs' machines.

- Workshop: **English** [verve-pm.com/ai-shipr](https://verve-pm.com/ai-shipr) | **Hebrew** [verve-pm.com/ai-shipr-he](https://verve-pm.com/ai-shipr-he)
- Resources: [verve-pm.com/ai-shipr-resources](https://verve-pm.com/ai-shipr-resources/)
- Consulting: [verve-pm.com](https://verve-pm.com)
- LinkedIn: [linkedin.com/in/yanivy9h](https://linkedin.com/in/yanivy9h)

---

> AI-SHIPR stands for: **S**trategy · **H**ypotheses · **I**nitiatives · **P**roof · **R**elationships
> The full Agile loop, in one system.

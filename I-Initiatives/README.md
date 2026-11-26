
# I-Initiatives

The active work layer. Every initiative here is something being built or considered — linked to a strategic bet, with a measurable outcome defined before work begins.

This folder is the bridge between strategy (what you're betting on) and proof (what you're testing). Agents and workflows read from here constantly.

---

## Role in the system

```
S-Strategy (the goal) → I-Initiatives (what) → H-Hypotheses (the bet) → epics and stories in the ticket tool (the test) → P-Proof (what the test showed)
```

An initiative is not a feature and it is not an epic. It sits above the epics: a bet on an outcome, tested by the epics and stories your team builds.

What an initiative links to depends on its type:

- **Bet:** traces back to a Strategic Bet (or an OKR Objective, when `goal_source: okrs`) and carries 1 to 3 hypotheses. Not one per epic. Several epics usually test the same hypothesis.
- **Commitment:** no bet and no hypothesis. This is work that happens whatever you believe: a regulation, a contractual promise, a security fix, tech debt. It names who requires it and when it is done.

A feature a customer asked for is a Commitment only if it was promised in a contract. Otherwise it is a bet that the customer will renew or expand, and it carries a hypothesis.

Epics and stories stay in your ticket tool (Jira, Linear). The initiative links to them. If your tool has no level above the epic, the initiative is the layer AI-SHIPR adds: group the epics that serve the same bet under one initiative.

---

## Files in this folder

| File | What it is |
|---|---|
| `Initiative-Template.md` | Template for creating a new initiative — copy this and rename it |

Add one file per initiative: `initiative-[name].md`

---

## Initiative structure (what each file contains)

Each initiative file tracks:
- **Strategic Link** — which bet this serves and why now
- **Outcome** — the metric, desired change, and time horizon (measurable, not vague)
- **Type** — `Bet | Commitment`
- **Linked Hypotheses** — the H-Hypotheses files that define how this initiative will be validated (Bet only, 1 to 3)
- **Linked Epics** — links to the epics or projects in the ticket tool, each naming the hypothesis it tests
- **Commitment** — who requires the work and when it is done (Commitment only)
- **Stakeholders** — who is involved or needs to sign off
- **Stage** — where in the Agile loop this sits: `Defined | In Sprint | In Development | Testing | Launched | Monitoring | Iterating`
- **Status** — health: `Active | At Risk | Paused | Completed`
- **Decision Needed** — flags open blockers so agents surface them

---

## Who reads this folder

| Tool | What it uses |
|---|---|
| `/today` | Reads all Active initiatives to build the morning priority stack |
| `Initiative-Review` workflow | Reviews all initiatives weekly — flags stuck, at-risk, needs-decision |
| `Sprint-Planner` workflow | Maps Active initiatives to sprint capacity |
| `Roadmap-Planner` workflow | Reads all initiatives to surface sequencing conflicts and coverage gaps |
| `Launch-Coordinator` workflow | Reads the specific initiative being launched |
| `Build-Review` skill | Reads the sprint's committed initiatives |
| `Structural-Integrity-Auditor` agent | Checks each initiative for missing links, vague outcomes, missing hypotheses, and too many Commitments |

---

## Naming convention

```
initiative-[short-name].md
```

Examples:
- `initiative-onboarding-redesign.md`
- `initiative-api-rate-limits.md`
- `initiative-notification-overhaul.md`

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

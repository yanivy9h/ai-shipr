# I-Initiatives

The active work layer. Every initiative here is something being built or considered — linked to a strategic bet, with a measurable outcome defined before work begins.

This folder is the bridge between strategy (what you're betting on) and proof (what you're testing). Agents and workflows read from here constantly.

---

## Role in the system

```
S-Strategy (why) → I-Initiatives (what) → H-Hypotheses (how we'll know) → P-Proof (did it work)
```

An initiative is not a feature. It is a bet on an outcome. Every initiative must trace back to a Strategic Bet and forward to at least one Hypothesis.

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
- **Linked Hypotheses** — the H-Hypotheses files that define how this initiative will be validated
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
| `Structural-Integrity-Auditor` agent | Checks each initiative for missing links, vague outcomes, missing hypotheses |

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

> **© Yaniv Yaakubovich**
> Product Management & AI Consulting: [www.verve-pm.com](www.verve-pm.com)

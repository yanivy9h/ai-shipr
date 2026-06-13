# Duolingo — Multi-Product Example

This example shows how a solo PM managing two related products sets up AI-SHIPR using **multi-product / lead mode**.

The PM owns two products that share stakeholders, engineering bandwidth, and a company-wide engagement goal:

- **Duolingo Customer App** — the learner-facing product. Streaks, lessons, habit loop, push notifications.
- **Duolingo Editor App** — the teacher-facing tool. Content authoring, lesson templates, curriculum publishing.

Both products are interconnected: the quality and variety of Editor-App content directly affects Customer-App retention. Decisions about lesson format touch both PMs simultaneously. This is the signal that a shared layer is needed.

---

## When to use this structure

Use multi-product / lead mode when:
- You own two or more products that share stakeholders or engineering
- A decision on one product has upstream or downstream effects on the other
- You need a portfolio view to balance time and prioritization across products

Use separate folders (independent instances) when:
- Products are completely unrelated with different teams, budgets, and stakeholders
- No decision on one affects the other

---

## Folder Structure

```
AI-SHIPR/
│
├── shared/                              ← Written by you, read by all products
│   ├── Vision.md                        Company-level direction: "Make language learning a daily habit"
│   ├── Strategy.md                      Cross-product strategy: engagement flywheel, content quality
│   ├── OKRs.md                          Shared OKRs both products contribute to
│   ├── Strategic-Bets.md               Portfolio-level bets (e.g. "content freshness drives retention")
│   ├── Portfolio-Roadmap.md            Combined roadmap view across both products
│   ├── Constraints.md                   Shared constraints: engineering capacity, platform limits
│   └── I-Information/
│       ├── Templates/                   Shared PRD format, stakeholder update template
│       ├── Integrations/               Company-level tool configs
│       └── Resources/                  Shared research (user studies, market context)
│
├── Customer-App/                        ← Learner-facing product
│   ├── Settings.md                      team_mode: lead, product: Customer App
│   ├── S-Strategy/
│   │   ├── Vision.md                   "Be the first app people open in the morning"
│   │   ├── KPIs.md                     DAU, D7 retention, streak continuation rate
│   │   ├── Strategic-Bets.md          "Reducing friction at lesson start increases D1→D7"
│   │   └── Constraints.md             Must stay under 5 min lesson completion time
│   ├── H-Hypotheses/
│   │   └── HYP-001.md                 "Shortening the streak grace period increases urgency"
│   ├── I-Initiatives/
│   │   ├── INI-001.md                 Streak Shield — reduce churn on missed days
│   │   └── INI-002.md                 Lesson Speed Mode — sub-3min lesson variant
│   ├── P-Proof/
│   ├── R-Relationships/
│   │   ├── Me/PM-Profile.md           PM profile for this product
│   │   ├── Users/Personas.md          Adult learner persona, commuter persona
│   │   └── Stakeholders/Stakeholders.md  Head of Growth, iOS Lead, Data
│   ├── A-AI/                          AI layer: agents, skills, workflows, playbooks
│   └── Learning.md
│
└── Editor-App/                          ← Teacher-facing product
    ├── Settings.md                      team_mode: lead, product: Editor App
    ├── S-Strategy/
    │   ├── Vision.md                   "Give educators the tools to publish engaging lessons in under 30 minutes"
    │   ├── KPIs.md                     Lessons published per teacher/month, lesson quality score, time-to-publish
    │   ├── Strategic-Bets.md          "A faster authoring flow increases content volume and Customer-App freshness"
    │   └── Constraints.md             Cannot break existing lesson format consumed by Customer App
    ├── H-Hypotheses/
    │   └── HYP-001.md                 "A template library reduces time-to-first-lesson for new educators"
    ├── I-Initiatives/
    │   ├── INI-001.md                 Template Library — reusable lesson blocks for educators
    │   └── INI-002.md                 AI Lesson Preview — let teachers preview as a learner before publishing
    ├── P-Proof/
    ├── R-Relationships/
    │   ├── Me/PM-Profile.md           PM profile for this product
    │   ├── Users/Personas.md          Certified teacher persona, volunteer educator persona
    │   └── Stakeholders/Stakeholders.md  Head of Content, Education Partnerships, same iOS Lead as Customer App
    ├── A-AI/                          AI layer: agents, skills, workflows, playbooks
    └── Learning.md
```

---

## What changes vs. the single-product setup

| | Single Product | Multi-Product |
|---|---|---|
| `Settings.md` | `team_mode: solo` | `team_mode: lead` |
| Strategy | One `S-Strategy/` folder | One per product + `shared/` |
| Stakeholders | One `Stakeholders.md` | Per product — but some stakeholders appear in both |
| `/today` | Single product morning brief | Surfaces priorities across both products |
| `Populate-Strategy` workflow | Fills one product | Fills per-product layers + generates `shared/` |
| `Portfolio-Roadmap.md` | Not used | Lives in `shared/` — shows combined initiative timeline |

---

## Key insight

The `shared/` layer is where cross-product decisions live. When the Head of Engineering tells you "we can only do one major platform change this quarter," that constraint goes in `shared/Constraints.md` — not in either product folder. Both product strategies then reference it automatically.

The per-product `S-Strategy/` folders contain decisions that are local to that product. Customer-App retention tactics do not belong in shared. Editor-App publishing UX decisions do not belong in shared.

When in doubt: if a decision affects only one product, file it under that product. If it constrains or connects both, file it in `shared/`.

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

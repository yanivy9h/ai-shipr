# Shared — Org Layer

This folder is the **single source of truth** for the entire product organization.

It is managed exclusively by the VP of Product.
All PMs read from it. No PM edits it.

---

## What lives here

| File | What it contains | Update cadence |
|------|-----------------|----------------|
| `Vision.md` | Company product vision and strategic direction | At pivot or yearly |
| `Strategy.md` | Company product strategy — how we win | Quarterly |
| `OKRs.md` | Company goals and key results for the current period | Quarterly |
| `Strategic-Bets.md` | Org-level bets — the 1–3 areas the company is betting on | Quarterly |
| `Portfolio-Roadmap.md` | High-level roadmap across all products | Monthly |
| `Constraints.md` | Org-level constraints — headcount, budget, tech debt, org reality | When major changes occur |
| `I-Information/` | Org-wide templates, integrations, and shared resources | As needed |

---

## How this works in practice

When the VP updates any file here, every PM gets the updated context in their next Claude session automatically — no distribution, no copy-paste, no Slack message.

When a PM asks Claude something, Claude reads `../vp/shared/` first, then reads the PM's own strategy files. Any conflict between org-level decisions and product decisions is flagged before Claude proceeds.

---

## The one rule

**Only the VP writes here.** Google Drive permissions enforce this (Viewer access for PMs), but the principle should be understood, not just imposed.

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

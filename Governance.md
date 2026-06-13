# Governance

Defines what the AI can do on its own, what requires your confirmation, and what is off-limits.
Loaded every session. Review and customize before connecting live systems.

Design principle refined in a 2026 client workshop.

---

## Tier 1 — Always allowed

No confirmation needed. Read-only, zero side effects.

- Read any file in this AI-SHIPR folder
- Search and analyze content
- Draft documents, summaries, plans
- Run queries against connected read-only sources
- Suggest edits (without applying them)

---

## Tier 2 — Must ask first

The AI presents the action and waits for your explicit confirmation. Every time, no exceptions.

- Write to Jira, Linear, or any ticket system
- Post to Notion, Confluence, or any shared workspace
- Send any message (Slack, email, Teams)
- Modify AI-SHIPR system files (CLAUDE.md, Settings.md, Governance.md)
- Create, close, or reassign tickets
- Write to any integration outside this folder

**Customize this tier:**
> Add actions specific to your stack that require confirmation before executing.
> Example: "Update Figma comments", "Modify shared/ strategy files without review"

---

## Tier 3 — Never without explicit instruction

Hard constraints. Not suggestions. The AI must stop and ask even if instructed mid-session.

- Push to any git repository
- Modify core configuration outside AI-SHIPR
- Act on shared infrastructure (CI/CD, databases, cloud config)
- Perform any action outside the current stated scope
- Take irreversible actions in external systems

**Customize this tier:**
> Add hard stops specific to your context.
> Example for healthcare: "Any action touching clinical workflows or payer systems requires Tier 3 treatment."
> Example for regulated orgs: "No external sharing of strategy files without explicit approval."

---

## When in doubt

Default to Tier 2. The cost of pausing to confirm is low.
The cost of an unwanted Jira ticket, Slack message, or Notion edit is high.

---

_Review this file before activating any integration in Settings.md._

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

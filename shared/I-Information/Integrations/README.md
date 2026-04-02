# Shared Integrations

Company-level tool configurations that all PMs reference.
These are org-wide connection points — not product-specific setups.

---

## What belongs here

- **Linear workspace** — org workspace URL, team structure, label conventions
- **Slack channels** — the shared channels all PMs should monitor (product-org, cross-team, exec)
- **Company Figma project** — org Figma URL, team library location, naming conventions
- **Jira / project management** — org workspace, project structure, shared labels
- **Data / analytics platform** — org dashboard links, metric definitions, data dictionary
- **Any integration used by more than one product team**

---

## What does NOT belong here

Product-specific integrations (a single PM's Slack channels, their product's Figma file, their Jira board) stay in `pm-[name]/I-Information/Integrations/`.

---

## File format

Follow the same convention as individual integrations:
- One subfolder per tool (e.g. `Linear/`, `Slack/`, `Figma/`)
- A `README.md` inside each subfolder explaining setup and usage
- Dated `.md` snapshot files where relevant (e.g. `slack-2026-03-25-product-org-channels.md`)

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

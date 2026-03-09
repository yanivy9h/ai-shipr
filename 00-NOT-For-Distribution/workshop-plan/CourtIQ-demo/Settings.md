# AI-SHIPR Settings

System-wide configuration. Every agent and skill reads this file before responding.

---

## Voice

```
voice: direct
```

Options: `coach` | `direct` | `gentle`

---

## PM Voice

```
pm_voice: active
```

Options: `active` | `off`

When `active`: agents reference `R-Relationships/Me/PM-Voice.md` for tone and language
when generating written outputs (stakeholder updates, decision logs, 1:1 agendas).

---

## Integrations

```
slack: active          # reads from I-Information/Integrations/Slack/
email: active          # reads from I-Information/Integrations/Email/
teams: inactive
linear: active         # reads issues from Linear via MCP — team: https://linear.app/aishipr/team/CRTIQ/all
tickets: inactive
miro: inactive
excalidraw: inactive
github: active         # shows git status at the start of /today
```

---

## Learner

```
learner: active
learner_depth: focused
```

`focused`: Learner filters resources against current S-Strategy and active I-Initiatives only.

---

_Last updated: 2026-03-05_
> **© Yaniv Yaakubovich**
> Product Management & AI Consulting: [www.verve-pm.com](www.verve-pm.com)

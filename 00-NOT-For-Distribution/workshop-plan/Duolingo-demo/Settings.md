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
email: inactive
teams: inactive
linear: active         # team: https://linear.app/aishipr/team/DUO/all
tickets: inactive
miro: inactive
excalidraw: inactive
github: inactive
```

---

## Learner

```
learner: active
learner_depth: focused
```

`focused`: Learner filters resources against current S-Strategy and active I-Initiatives only.

---

_Last updated: 2026-03-07_

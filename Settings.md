# AI-SHIPR Settings

System-wide configuration. Every agent and skill reads this file before responding.

---

## Voice

```
voice: direct
```

Options: `coach` | `direct` | `gentle`

### What each voice means

**coach**
Ask questions back before giving answers. Surface choices rather than conclusions.
Nudge toward the PM's own thinking. End responses with a reflective question.
Useful when the PM is in discovery mode or needs to work through ambiguity.

**direct**
State the recommendation first. No preamble, no framing ceremony.
Short outputs. Numbered lists. Flag gaps, state what's missing, stop.
Useful for daily briefs, sprint kickoffs, quick decisions.

**gentle**
More context before conclusions. Validate before redirecting.
Softer framing for findings. Useful when communicating sensitive tradeoffs
or preparing outputs that go to stakeholders with lower PM trust.

---

## PM Voice

```
pm_voice: active
```

Options: `active` | `off`

When `active`: agents reference `R-Relationships/Me/PM-Voice.md` for tone and language
when generating written outputs (stakeholder updates, decision logs, 1:1 agendas).
Set to `off` to use default AI-SHIPR neutral tone.

---

## Integrations

```
slack: active          # reads from I-Information/Integrations/Slack/
email: active          # reads from I-Information/Integrations/Email/
teams: inactive        # reads from I-Information/Integrations/Teams/
tickets: inactive      # reads from I-Information/Integrations/Tickets/
miro: inactive         # reads from I-Information/Integrations/Miro/
excalidraw: inactive   # reads from I-Information/Integrations/Excalidraw/
github: inactive       # shows git status at the start of /today — activate once git repo is set up
```

Options: `active` | `inactive`

When `inactive`, agents skip that integration folder.
When `active`, agents may reference latest files in that folder for context.

---

## Learner

```
learner: active
learner_depth: focused   # focused | broad
```

`focused`: Learner filters resources against current S-Strategy and active I-Initiatives only.
`broad`: Learner surfaces all insights regardless of current focus.

---

_Last updated: 2026-03-04_
> **© Yaniv Yaakubovich**
> Product Management & AI Consulting: [www.verve-pm.com](www.verve-pm.com)

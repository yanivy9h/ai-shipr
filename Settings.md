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
tickets: inactive      # reads from I-Information/Integrations/Tickets/ — Linear workspace: https://linear.app/aishipr/settings/teams
miro: inactive         # reads from I-Information/Integrations/Miro/
excalidraw: inactive   # reads from I-Information/Integrations/Excalidraw/
figma: active          # reads from I-Information/Integrations/Figma/ — run figma-sync.js to populate
github: inactive       # shows git status at the start of /today — activate once git repo is set up
```

Options: `active` | `inactive`

When `inactive`, agents skip that integration folder.
When `active`, agents may reference latest files in that folder for context.

---

## Mode

```
team_mode: solo
```

Options: `solo` | `individual` | `lead`

`solo`: Standard AI-SHIPR — individual PM, no shared org layer.

`individual`: Part of a product team running on a shared Google Drive structure.
Reads org-level context from `../vp/shared/` before local strategy files.
Use this when your VP has set up a shared team folder. See verve-pm.com/ai-shipr-resources/google-drive-setup/ for setup instructions.

`lead`: VP / Team Lead mode — activates portfolio agents and team management layer.
Reads `shared/` (your org layer) and `../pm-*/S-Strategy/` (all PM product strategies) in addition to standard files. `/today` aggregates across team. Portfolio-Strategist and Team-Manager agents become available.

---

## Learner

```
learner: active
learner_depth: focused   # focused | broad
```

`focused`: Learner filters resources against current S-Strategy and active I-Initiatives only.
`broad`: Learner surfaces all insights regardless of current focus.

---

_Last updated: 2026-03-25_
> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

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
pm_voice: off
```

Options: `active` | `off`

When `active`: agents reference `R-Relationships/Me/PM-Voice.md` for tone and language
when generating written outputs (stakeholder updates, decision logs, 1:1 agendas).
Set to `off` to use default AI-SHIPR neutral tone.

---

## Integrations

```
slack: inactive        # reads from I-Information/Integrations/Slack/
email: inactive        # reads from I-Information/Integrations/Email/
teams: inactive        # reads from I-Information/Integrations/Teams/
tickets: inactive      # reads from I-Information/Integrations/Tickets/
miro: inactive         # reads from I-Information/Integrations/Miro/
excalidraw: inactive   # reads from I-Information/Integrations/Excalidraw/
figma: inactive        # reads from I-Information/Integrations/Figma/ — run figma-sync.js to populate
github: inactive       # shows git status at the start of /today — activate once git repo is set up
```

### Meeting Tool

Set this to the tool you use to record and transcribe meetings.
When set, `/after-meeting` and the Meeting-Synthesizer skill will know where to look for notes.

```
meeting_tool: manual
```

Options:
- `manual` — you paste notes or transcripts directly (default)
- `fireflies` — Fireflies.ai: export notes as markdown into `I-Information/Integrations/MeetingTool/`
- `tldv` — tl;dv: export transcript or summary into `I-Information/Integrations/MeetingTool/`
- `granola` — Granola: export notes into `I-Information/Integrations/MeetingTool/`
- `zoom` — Zoom: queries Zoom MCP if connected in this Claude Code session

**To use file-based tools (Fireflies, tl;dv, Granola):**
After each meeting, export the notes/transcript from your tool and save the file to:
`I-Information/Integrations/MeetingTool/YYYY-MM-DD-[meeting-name].md`
The After-Meeting workflow will pick up the most recent file automatically.

**To use Zoom MCP:**
Ensure the Zoom MCP server is connected in your Claude Code session settings.
Set `meeting_tool: zoom` and the workflow will query your latest meeting directly.

Options: `active` | `inactive`

When `inactive`, agents skip that integration folder.
When `active`, agents may reference latest files in that folder for context.

---

## Product Stage

```
product_stage: discovery
```

Options: `discovery` | `definition` | `building` | `launched` | `iterating`

`discovery`: Product is new. No live metrics, no validated personas, no sprint history. All bets and personas are hypotheses. Agents should:
- Treat KPI targets as aspirational, not tracked
- Frame all strategic bets as unvalidated assumptions
- Prioritize discovery skills: JTBD-Mapper, Persona-Builder, Assumption-Extractor, Hypothesis-Builder, Experiment-Designer, Opportunity-Tree, Lean-Product-Canvas, Product-Strategist
- Deprioritize: Performance-Tracker, Sprint-Summarizer, Build-Review, Retro-Facilitator, Fire-Responder
- In /today: surface pending discovery tasks and unvalidated hypotheses, not sprint metrics

`definition`: Discovery mostly complete. Defining requirements and roadmap. PRD-Builder and Roadmap-Planner are now primary tools.

`building`: In active development sprints. Sprint-Planner, Build-Companion, and Build-Review are now primary.

`launched`: Product is live. All workflows active. Performance-Tracker and Iteration-Planner are now primary.

`iterating`: Post-launch, acting on data. Iteration-Planner and Experiment-Designer are primary.

---

## Team Mode and Product Mode

These are two independent settings. Set each one based on your actual situation — they do not affect each other.

| | `product_mode: single` | `product_mode: multi` |
|---|---|---|
| `team_mode: solo` | Individual PM, one product | Individual PM, multiple products |
| `team_mode: individual` | Part of a team, one product | Part of a team, multiple products |
| `team_mode: lead` | Team lead, one product | Team lead, multiple products |

---

### Team Mode

```
team_mode: solo
```

Options: `solo` | `individual` | `lead`

**What it controls:** Whether you manage other PMs or belong to a shared org structure.

`solo`: Standard AI-SHIPR — individual PM, no shared org layer.

`individual`: Part of a product team whose lead maintains a shared org layer.
Reads org-level context from `../vp/shared/` before local strategy files.
Use this when your VP or Head of Product has set up the org layer.
Where those files live (Google Drive, SharePoint, Confluence, Notion): verve-pm.com/ai-shipr-resources/team-collab/
Who fills which worksheet and in what order: verve-pm.com/ai-shipr-resources/team-rollout/
On Confluence or Notion, run `/sync-context` to refresh `../vp/shared/` before your first session.

`lead`: VP / Team Lead mode — activates portfolio agents and team management layer.
Reads `shared/` (your org layer) and `../pm-*/S-Strategy/` (all PM product strategies) in addition to standard files. `/today` aggregates across team. Portfolio-Strategist and Team-Manager agents become available.

---

### Product Mode

```
product_mode: single
```

Options: `single` | `multi`

**What it controls:** Whether your strategy files are organized for one product or several.

`single`: All strategy, initiative, hypothesis, and proof files live at the root level (`S-Strategy/`, `I-Initiatives/`, etc.). Default for most setups.

`multi`: You manage two or more products with separate strategy layers. Files are organized in named subfolders per product (e.g., `patient-prep/S-Strategy/`, `dashboard/S-Strategy/`) plus a `shared/` layer for cross-product constraints, stakeholders, and portfolio view. Generated automatically by `Populate-Strategy` when "Multiple products" is selected in the Setup Worksheet.

**Only used when `product_mode: multi` — list your product folder names:**
```
products:
  - [product-folder-name-1]
  - [product-folder-name-2]
```

**How agents behave in multi mode:**
- `/today`, `/weekly`, `/sprint`, and `/review-initiative` read each product subfolder separately and label output by product
- Priority Stack in `/today` shows priorities per product, plus a cross-product section when tensions exist
- `shared/Portfolio-Roadmap.md` is always read first for the portfolio overview
- `shared/Constraints.md` and `shared/Stakeholders.md` apply to all products

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

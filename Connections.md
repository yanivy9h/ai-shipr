# Connections

Wiring AI-SHIPR to the tools your team already uses. Read this after setup, not during it — AI-SHIPR works fully file-based from day one, and every connection here is an upgrade, never a prerequisite.

**Two ways data gets in:**

1. **Live connection (MCP / connector)** — Claude reaches into the tool directly. Fresher, no export step, needs IT/compliance approval.
2. **File drop-zone** — you export from the tool and save the file into `I-Information/Integrations/<Tool>/`. Works everywhere, no approval needed, always the fallback.

If your organization has not approved MCP connectors, skip straight to the drop-zone column. Nothing below is blocked — only less automatic.

---

## The six connections

| # | Category | Live connection | What it unlocks in AI-SHIPR | Drop-zone fallback |
|---|---|---|---|---|
| 1 | **Code** | GitHub MCP (or your git host's approved connector) | `Build-Companion` and `Build-Review` read real PR and commit state instead of your summary of it; `/today` shows git status (`github:` in Settings.md) | Paste PR descriptions / changelogs into the conversation |
| 2 | **Tickets** | Linear MCP or Atlassian (Jira) MCP | `Sprint-Planner`, `/review-initiative`, and `Build-Review` work against actual ticket state, not memory | Export to `I-Information/Integrations/Tickets/` (`tickets:` in Settings.md) |
| 3 | **Docs** | Notion MCP or Confluence MCP. Google Drive and SharePoint need no connector — they mount as folders | The org layer (`shared/`) stays live for teams (see `/sync-context`); PRD corpus and strategy docs readable in place | Export pages as markdown into `I-Information/Resources/` |
| 4 | **Analytics** | Your warehouse or product-analytics MCP (Amplitude, Snowflake, BigQuery, or the BI tool your analyst blesses) | `Product-Signal-Reader` and `Performance-Tracker` query real data instead of pasted numbers. This is the connection with the highest ceiling — an unconnected analytics stack means every metric conversation starts with copy-paste | Paste query results / funnel exports into the conversation |
| 5 | **User research** | Dovetail, Qualtrics, or wherever interview recordings and studies live, if it has an approved connector | `Interview-Synthesizer` and `Research-Synthesizer` pull from the actual repository instead of what you remember to paste | Export transcripts/notes into `I-Information/Resources/` |
| 6 | **Workspace** | Email, calendar, and meeting-tool connectors (e.g., Zoom MCP — see `meeting_tool:` in Settings.md) | `/today` sees your real day; `Meeting-Synthesizer` and `After-Meeting` get transcripts without an export step | `I-Information/Integrations/Email/` and `MeetingTool/` (Fireflies / tl;dv / Granola export flow — see Settings.md) |

---

## Which to connect first

Order by your `product_stage` in Settings.md — not by what is easiest to wire:

- **`discovery`** → Docs (3), User research (5), Workspace (6). You have no live metrics yet; analytics can wait.
- **`definition` / `building`** → Tickets (2), Code (1), Docs (3). The build loop is where stale context hurts most.
- **`launched` / `iterating`** → Analytics (4) first, then Tickets (2). Post-launch, an unconnected analytics stack is the single biggest gap.
- **`team_mode: lead` or `individual`** → Docs (3) moves to the front regardless of stage — the org layer lives there.

Connect one, use it for a week, then add the next. Six half-wired connections help less than two working ones.

---

## The compliance conversation

Each connection needs one specific question answered by IT/security — bring these, not a general "can I use AI" ask:

| Connection | The question to bring |
|---|---|
| Code | Can I get a **read-scoped** token for an AI tool, limited to the repos my team owns? |
| Tickets | Read-only API access to our project — and is writing comments/tickets permitted or excluded? |
| Docs | Which spaces/folders may an AI read? Ask for a scoped allow-list (product docs), not org-wide access |
| Analytics | Is there PII in the tables I'd query? Ask for a **read-only service account** scoped to product-metrics schemas |
| User research | Recordings contain customer voices and possible PII — what did the consent form permit, and does the research tool's connector honor it? |
| Workspace | The most sensitive of the six. Ask for read-only mail/calendar scope, and confirm meeting-transcript retention policy |

**Governance mapping:** once connected, all *read* actions through these connections are Tier 1 in `Governance.md` (proceed silently). Any *write* back into an external tool — a ticket comment, a calendar invite, a doc edit — is Tier 2 (explicit confirmation) until you deliberately promote it. Destructive or externally visible actions stay Tier 3. If `Governance.md` is unfilled, everything external is treated as Tier 2 — fill it before wiring write access anywhere.

---

## After connecting

1. Update the `Integrations` block in `Settings.md` — flip the relevant keys to `active` and set `meeting_tool:`.
2. Tell the relevant skill it can stop asking for pastes — the first session after connecting, say "analytics is connected now" and let `Product-Signal-Reader` query directly.
3. **The analyst guardrail (analytics only):** a live data connection without verified queries produces confidently wrong answers. Before leaning on connection 4, have whoever owns your data check in the queries and definitions the AI should use — this is what the P-Proof measurement layer is for.

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

---
name: after-meeting
description: Synthesize meeting notes and propagate decisions, stakeholder signals, and initiative updates across the system.
user-invocable: false
---

# Workflow: After Meeting

## Purpose

Process a meeting and propagate its outputs across the system.

A meeting ends. The conversation is over. But the decisions, signals, and action items only become useful if they land somewhere the system can act on them.

This workflow does that automatically: it captures what happened, updates every relevant file, and closes the loop — so nothing lives only in memory or in a transcript no one will read again.

## When to Use

Right after any meeting that produced:
- A decision (even a partial one)
- An action item (yours or someone else's)
- A stakeholder signal worth tracking
- A change to an initiative's status, blockers, or direction
- New assumptions or user insights

Run it while the context is fresh. Within 30 minutes of the meeting ending is ideal.

## How to Run

Type: `/after-meeting` or "Run After Meeting" or "Process this meeting"

Optionally add the meeting source:
- `/after-meeting fireflies` — pulls from Fireflies integration
- `/after-meeting granola` — pulls from Granola notes
- `/after-meeting zoom` — queries Zoom MCP for latest transcript
- `/after-meeting` — detects from Settings.md or asks you to paste

---

## The Workflow

---

### Step 1 — Source Detection

Read `Settings.md`.

Check `meeting_tool` under Integrations.

**If `meeting_tool` is set to a specific tool:**

| Tool | Action |
|------|--------|
| `fireflies` | Check `I-Information/Integrations/MeetingTool/` for latest export. If empty: "No Fireflies export found. Paste your meeting notes." |
| `tldv` | Same as Fireflies |
| `granola` | Same — Granola exports markdown notes |
| `zoom` | If Zoom MCP tools are available in this session, query for latest meeting transcript. If not available: ask user to paste |
| `manual` or not set | Ask: "Paste the meeting notes or transcript and I'll run the synthesis." |

If a file is found: confirm with the user before processing. "I found [filename] from [date]. Is this the meeting you want to process?"

Do not proceed with synthesis until the source is confirmed.

---

### Step 2 — Context Load

Before running Meeting-Synthesizer, read:

- `R-Relationships/Me/PM-Profile.md` — who this PM is, their operating context
- `R-Relationships/Stakeholders/Stakeholders.md` — existing stakeholder profiles
- `R-Relationships/Stakeholders/Meeting-Log.md` — previous meetings for continuity
- All active files in `I-Initiatives/` — what is already in the system
- `S-Strategy/Strategic-Bets.md` — the bets context for initiative impact assessment
- `Learning.md` — any prior learnings relevant to this meeting's participants or topics

**If `product_mode: multi`:** Ask which product this meeting relates to before loading context. Load that product's initiative and strategy files.

---

### Step 3 — Run Meeting-Synthesizer

Invoke the Meeting-Synthesizer skill on the confirmed meeting content.

Produce the full synthesis output:
- Decisions Made
- Action Items
- Stakeholder Signals
- Initiative Impacts
- New Assumptions or Hypotheses
- Open Questions
- Learning Candidates
- Proposed System Updates

Present the full synthesis to the user before writing anything.

---

### Step 4 — Confirm and Write

After presenting the synthesis, show the Proposed System Updates table.

Ask: "Confirm updates? Reply 'yes' to write all, 'select' to choose, or 'no' to skip."

**On 'yes':** Execute all updates in sequence:

1. **Meeting-Log.md** — always first. Append new entry:
   ```
   ## Meeting — [YYYY-MM-DD] — [Title]
   - Participants: [names and roles]
   - Initiative(s): [linked initiatives]
   - Decisions: [list from synthesis]
   - Objections raised: [list from synthesis]
   - Action items: [list from synthesis]
   - Open loops: [list from synthesis]
   ```

2. **Stakeholders.md** — update any profile where signals changed:
   - Add or update: Optimizes for / Biggest fear / Common objections / Communication style / What they need to see to say "yes"
   - Do not overwrite existing content that was not contradicted in this meeting
   - Add signals with a date reference: `[Updated 2026-06-02: ...]`

3. **Initiative files** — for each initiative impacted:
   - Update Stage if a gate was passed or regressed
   - Update Status if something changed (Active → At Risk / Paused)
   - Update "Decision Needed?" if a decision was surfaced or resolved
   - Add to "Open Questions" if new questions surfaced
   - Update "Last Updated" to today's date
   - Do not change fields that were not touched in the meeting

4. **H-Hypotheses** — for each confirmed new assumption:
   - Prompt: "Should I file this as a hypothesis? [Assumption text]. Yes / No / Edit first."
   - If yes: create new hypothesis file in `H-Hypotheses/` following the hypothesis template

5. **Learning.md** — for each confirmed learning candidate:
   - Append under today's date in the standard format

**On 'select':** List each proposed update and ask "Write this one? Yes / No" for each.

**On 'no':** Confirm synthesis was presented. "Synthesis is ready. No files were updated."

---

### Step 5 — Loop Close Check

After all updates are written:

Check: did anything from this meeting affect the current sprint or weekly plan?

If yes, surface a brief note:
> "This meeting changed [X]. You may want to run `/today` to reprioritize or update your sprint scope."

If a decision from this meeting unblocks a blocked initiative:
> "Initiative [Name] was blocked on [X]. This meeting resolved that. Consider updating its Stage."

---

## Behavior Rules

- Never write to files before showing the synthesis and getting confirmation
- Never invent content — extract only what is in the meeting notes
- If a stakeholder's profile does not exist in Stakeholders.md, create a new entry, do not skip
- If an initiative was discussed that does not exist in I-Initiatives/, flag it as a gap before writing anything
- Distinguish between: decisions made / things discussed / things mentioned in passing — do not treat all three the same
- If the meeting produced no decisions and no action items, say so explicitly. Do not pad the output.
- After writing all updates, confirm: "All updates written. Here is what changed: [summary list]."

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

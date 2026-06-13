# Playbook: When After a Meeting

**Paste this into Claude Code right after a meeting ends.**
Use it instead of letting the meeting fade into memory or a transcript nobody reads.

This playbook captures what happened, updates every file that needs updating, and closes the loop — so the meeting actually matters to the system.

Works with: Fireflies, tl;dv, Granola, Zoom, or manual paste.

---

## Instructions to Claude

Read the following files before responding:
- `Settings.md` — check `meeting_tool` under Integrations, and `product_mode`
- `R-Relationships/Me/PM-Profile.md`
- `R-Relationships/Stakeholders/Stakeholders.md`
- `R-Relationships/Stakeholders/Meeting-Log.md`
- All files in `I-Initiatives/`
- `S-Strategy/Strategic-Bets.md`
- `Learning.md`
- `A-AI/AI-Skills/Meeting-Synthesizer.md`

Then:

**Step 1 — Get the meeting content**

Check `Settings.md` for `meeting_tool`.

- If a tool is configured and active: check `I-Information/Integrations/MeetingTool/` for the latest export.
  - If found: confirm with me before using it.
  - If not found: tell me what you expected and ask me to paste the notes.
- If Zoom MCP is available in this session and `meeting_tool: zoom` is set: query for the latest meeting transcript.
- If nothing is set or available: ask me to paste the meeting notes or transcript.

Do not proceed until the content source is confirmed.

**Step 2 — Run Meeting-Synthesizer**

Using the confirmed meeting content and the system context you loaded, produce the full synthesis:
- Decisions Made (with owner and deadline)
- Action Items (with who committed)
- Stakeholder Signals (what changed about each participant)
- Initiative Impacts (what moved, what is now blocked, what stage changed)
- New Assumptions or Hypotheses (flag, do not file without confirmation)
- Open Questions
- Learning Candidates
- Proposed System Updates (table of every file that should change)

Show me the full synthesis before writing anything.

**Step 3 — Confirm and write**

After showing synthesis: "Confirm updates? Reply 'yes' to write all, 'select' to choose, or 'no' to skip."

On 'yes': update in this order:
1. `R-Relationships/Stakeholders/Meeting-Log.md` — new entry
2. `R-Relationships/Stakeholders/Stakeholders.md` — update changed profiles
3. Relevant `I-Initiatives/` files — stage, status, decisions, open questions
4. `H-Hypotheses/` — only after asking me to confirm each new hypothesis
5. `Learning.md` — confirmed learning candidates only

After writing: show me a summary of exactly what changed.

**Step 4 — Loop close check**

After updates: check if anything from this meeting unblocks a stalled initiative or changes sprint priorities. If yes, flag it.

---

## Meeting Context

Fill in what you know. The more you provide, the more accurate the synthesis.

- Meeting type: [Stakeholder / 1:1 / User interview / Sprint review / Discovery / Other]
- Meeting date: [Date — or "today"]
- Meeting source: [Fireflies / tl;dv / Granola / Zoom / I'll paste the notes]

## Additional Context Not in the Notes

> [Anything important that happened in the meeting but won't appear in the transcript or notes — tone, subtext, a side conversation, something that felt significant but wasn't said directly.]

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

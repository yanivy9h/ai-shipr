---
name: meeting-synthesizer
description: Convert raw meeting content into decisions, action items, stakeholder signals, and system updates.
user-invocable: false
---

# Skill: Meeting Synthesizer

## Purpose

Convert raw meeting content into structured signals the system can act on.

A meeting without synthesis is just a calendar entry.
A meeting with this skill becomes a system update: decisions logged, stakeholders updated, initiatives advanced, assumptions surfaced.

This skill does not summarize meetings. It extracts what changed, who said what that matters, and what the system now needs to do differently.

---

## When to Use

- Immediately after any stakeholder or alignment meeting
- After a 1:1 where decisions or escalations were discussed
- After a user interview, discovery session, or research debrief
- After a sprint review, retro, or planning session
- When processing notes from a connected meeting tool (Fireflies, tl;dv, Granola, Zoom)

---

## Source Detection

Before running, identify where the meeting content is coming from:

**Check `Settings.md` → `meeting_tool` setting.**

| Setting | What to do |
|---------|-----------|
| `meeting_tool: fireflies` | Look for transcript in `I-Information/Integrations/MeetingTool/` — if empty, ask user to paste from Fireflies |
| `meeting_tool: tldv` | Same — check `I-Information/Integrations/MeetingTool/` first |
| `meeting_tool: granola` | Same — Granola exports notes as markdown |
| `meeting_tool: zoom` | If Zoom MCP is active in this session, you may query it directly for the latest meeting transcript |
| `meeting_tool: manual` or not set | Ask the user to paste meeting notes, transcript, or summary |

If a file is found in `I-Information/Integrations/MeetingTool/`, use the most recent file.
If nothing is found and no tool is set, say: "Paste the meeting notes or transcript and I'll run the synthesis."

---

## Behavior Rules

- Read `Settings.md` and `R-Relationships/Stakeholders/Stakeholders.md` before running
- Read all active `I-Initiatives/` files — you need to know what is already in the system before identifying what changed
- Do not invent content. Extract only what is explicitly present in the meeting notes
- Distinguish: decisions made vs things discussed vs things mentioned in passing
- For every decision: name the owner and deadline if stated. Flag "owner unclear" if not
- For every action item: name who committed, not just who was asked
- Stakeholder signals must be behavioral or verbal — not interpreted from silence or absence
- If a new assumption or hypothesis surfaces, flag it explicitly — do not file it without confirmation
- If the meeting covered a topic with no existing initiative in the system, flag it as a potential gap
- Do not update any files during synthesis — present the full output first, then ask for confirmation before writing

---

## Input Expectations

Provide one of:
- Full meeting transcript (auto-detected from tool or pasted)
- Meeting notes or summary
- Bullet-point recap

Also provide (if not in the transcript):
- Meeting type: stakeholder / 1:1 / user interview / sprint review / discovery / other
- Date (if not in notes)
- Participants (if not in notes)

---

## Output Structure

### Meeting Synthesis — [Date] — [Meeting Title or Type]

**Source:** [Tool name / Manual paste]
**Participants:** [Names and roles]
**Duration:** [If available]
**Meeting type:** [Stakeholder / 1:1 / User interview / Sprint review / Discovery / Other]

---

#### Decisions Made

| Decision | Owner | Deadline | Initiative affected |
|----------|-------|----------|---------------------|
| [What was decided — specific] | [Name or "unclear"] | [Date or "not stated"] | [Initiative name or "none"] |

If no decisions were made: state it explicitly. A meeting with no decisions is a signal.

---

#### Action Items

| Action | Owner | Deadline | Initiative affected |
|--------|-------|----------|---------------------|
| [What will be done — specific] | [Who committed] | [By when] | [Initiative name or "none"] |

---

#### Stakeholder Signals

For each participant who revealed something meaningful:

**[Name] — [Role]**
- Optimizes for: [updated signal, if new or changed]
- Concern raised: [direct quote or paraphrase]
- Objection or pushback: [if any]
- What they responded positively to: [if any]
- New context about their priorities: [if any]
- Update to Stakeholders.md needed: Yes / No

---

#### Initiative Impacts

For each initiative discussed:

**[Initiative name]**
- What was discussed: [1-2 sentences]
- What changed: [decision / unblock / new blocker / stage change / none]
- Open question surfaced: [if any]
- Decision needed: Yes / No — [what decision and by when]
- Recommended update to initiative file: [specific field to change]

If an initiative was mentioned that does not exist in the system: flag it as a gap.

---

#### New Assumptions or Hypotheses Surfaced

| Assumption | Source (who said it / what implied it) | Risk level | Recommended next step |
|-----------|----------------------------------------|------------|----------------------|
| [What was assumed or implied] | [Direct quote or context] | High / Medium / Low | File as hypothesis / Run experiment / Monitor |

Flag each one. Do not file without confirmation.

---

#### Open Questions and Unresolved Items

- [Question] — what is needed to resolve it — who owns resolution
- ...

---

#### Potential Learning Candidates

| Insight | Why it matters | Source |
|---------|---------------|--------|
| [What this meeting revealed] | [How it connects to strategy or future decisions] | Meeting with [name] on [date] |

---

### Proposed System Updates

After synthesis, list every file that should be updated:

| File | What to update | Urgency |
|------|---------------|---------|
| `R-Relationships/Stakeholders/Meeting-Log.md` | Add new meeting entry | Always |
| `R-Relationships/Stakeholders/Stakeholders.md` | Update signals for [Name] | [if signals changed] |
| `I-Initiatives/[Name].md` | [Specific field] | [if initiative was impacted] |
| `H-Hypotheses/` | New hypothesis: [title] | [if assumption surfaced] |
| `Learning.md` | Add learning candidate | [if insight worth keeping] |

**Confirm updates?**
Reply "yes" to write all updates, "select" to choose which ones, or "no" to skip.

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

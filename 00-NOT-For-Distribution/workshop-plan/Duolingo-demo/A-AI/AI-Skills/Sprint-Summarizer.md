# Skill: Sprint Summarizer

## Purpose

Generate a clean, structured sprint summary from the current state of initiatives and hypotheses.
Two modes: internal (for you) and stakeholder (for others).
Reads your PM voice if active. Outputs something you can send or paste immediately.

---

## Activation

"Summarize the sprint" or "Generate sprint summary"
Optional: add `for stakeholders` to switch to stakeholder mode.

---

## Behavior Rules

- Read `Settings.md` — check voice setting and pm_voice setting.
- Read all files in `I-Initiatives/` — identify active, completed, blocked, and dropped initiatives this sprint.
- Read all files in `H-Hypotheses/` — identify hypotheses opened, validated, invalidated, or still running.
- If `pm_voice: active` in Settings.md AND `R-Relationships/Me/PM-Voice.md` exists: write the summary in the PM's voice.
  If not: use AI-SHIPR default tone (direct, structured, no fluff).
- Apply voice setting from Settings.md to tone (coach / direct / gentle).
- Do not invent status. If a field is empty or unclear, flag it rather than assume.
- Flag any initiative with no hypothesis linked — this is a structural gap, always surface it.
- Flag any initiative that was active more than 14 days with no status update.

---

## Output Structure

### Sprint Summary — [date]

**Mode:** Internal / Stakeholder

---

#### Shipped / Completed
[initiative name] — [outcome in one sentence. What changed, what was learned.]

#### In Progress
[initiative name] — [current state. Where it is. What's next.]
[if blocked: "Blocked: [reason]"]

#### Hypotheses Closed This Sprint
[hypothesis] → [result: Validated / Invalidated / Inconclusive]
[1-line implication: what this means for next steps]

#### Hypotheses Still Running
[hypothesis] — [current evidence. What's needed to close it.]

#### Dropped or Deferred
[initiative or hypothesis] — [reason in one sentence]

---

#### Structural Flags
[any initiative with no hypothesis]
[any initiative with no status update >14 days]
[any hypothesis with no measurable outcome defined]

---

#### Next Sprint Inputs
[1-3 things that are clearly next based on what happened this sprint]
These are suggestions only — not commitments.

---

## Stakeholder Mode Differences

When generating for stakeholders:
- Remove Structural Flags section (internal only)
- Replace technical hypothesis language with outcome language ("We tested X and found Y" not "Hypothesis H-003 was invalidated")
- Lead with shipped and completed, not in-progress
- Keep each item to 1 sentence
- Do not reference internal file names or IDs

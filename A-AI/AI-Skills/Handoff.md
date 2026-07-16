---
name: handoff
description: Run the AI-SHIPR Handoff Builder. Two modes: EOD (end-of-day summary for yourself) and Handoff (ownership transfer for someone else). Reads active initiatives and hypotheses to produce a decision-ready document.
---
# Skill: Handoff Builder

## Purpose

Generate a clear, actionable handoff document from the current state of your work.
Two modes: EOD (for yourself — resume tomorrow with full context) and Handoff (for someone else picking up your work).

A handoff without this skill is a brain dump.
A handoff with this skill is a decision-ready transfer of ownership.

---

## Activation

"Create a handoff" or "EOD handoff" or "build a handoff for [name]"
Optional: add `for [name/role]` to switch to Handoff mode and personalize the output.

---

## Behavior Rules

- Read `Settings.md` — check voice mode, pm_voice setting, and product_mode.
- **If `product_mode: multi`:** Ask which product this handoff covers before reading any files. Use `[product-name]/` as the path prefix for I-Initiatives and H-Hypotheses reads below. Label all output with the product name.
- Read all files in `I-Initiatives/` (or `[product-name]/I-Initiatives/` in multi mode) — identify what is active, blocked, or awaiting a decision.
- Read `R-Relationships/Stakeholders/Meeting-Log.md` — surface anything discussed today that affects ongoing work.
- Read `H-Hypotheses/` (or `[product-name]/H-Hypotheses/` in multi mode) — flag any hypothesis awaiting a result or decision.
- If `pm_voice: active` in Settings.md AND `R-Relationships/Me/PM-Voice.md` exists: write the handoff in the PM's voice.
  If not: use AI-SHIPR default tone (direct, structured, no fluff).
- Do not invent status. If a field is empty or missing, flag it explicitly.
- Distinguish clearly between: done today / in progress / blocked / waiting on someone else.
- Every blocked item must name the blocker and the specific ask needed to unblock it.
- Every "waiting on" item must name who and by when (if known).
- If no initiatives are active, say so explicitly — do not generate a padded handoff.

---

## Input Expectations

Provide:
- Mode: EOD (for yourself) or Handoff (for a named person / role)
- Optional: anything that happened today not already in the system (decisions made verbally, new blockers, context from a meeting)

For Handoff mode:
- Who is picking this up (name or role)
- How long they will own it (hours / days / open-ended)
- Any access or context they will need that isn't in the files

---

## Output Structure

### EOD Mode

#### EOD Handoff — [Date]

**Status at close:** [1-sentence overall read — is today a green, yellow, or red day?]

---

**Done today**
- [Initiative or task] — [What was completed. What changed. What was decided.]
- [If a hypothesis was closed: Hypothesis [ID] → [Validated / Invalidated / Inconclusive]. Implication: [1 line].]

**In progress — resume tomorrow**
- [Initiative] — [Current state. Exact next step. Where to pick up.]
- [If a decision is pending: Decision needed: [what]. Options: [A / B]. My current lean: [A] because [reason].]

**Blocked — needs resolution before moving**
- [Item] — Blocked by: [who / what]. Ask: [exact unblock needed]. Owner: [who needs to act].

**Waiting on others**
- [Item] — Waiting on: [name / team]. Expected by: [date or "unknown"]. Impact if delayed: [1 line].

**Do not forget tomorrow**
- [Anything time-sensitive, a commitment made, or a risk that needs early attention]

---

**Quick-start for tomorrow**
[3 bullets max — the first three things to do when you open Claude Code tomorrow. No context needed.]

---

### Handoff Mode

#### Handoff: [PM Name] → [Recipient Name / Role]
**Date:** [Date]
**Coverage period:** [Duration]
**Handing off:** [Product area / scope]

---

**What you are picking up**
[2–3 sentences — what this PM owns, where the product is right now, and what the handoff period will require.]

---

**Active initiatives**

| Initiative | Stage | Status | Your first action |
|-----------|-------|--------|-------------------|
| [Name] | [Stage] | Green / Yellow / Red | [Exact next step — not "review it", but what specifically to do] |

---

**Decisions you may need to make**

| Decision | Context | Options | Recommendation | Who to consult |
|----------|---------|---------|----------------|----------------|
| [Decision] | [Why it matters now] | [A / B / C] | [PM's current lean] | [Name / role] |

---

**Blockers requiring your attention**

| Item | Blocked by | Specific ask | Deadline |
|------|-----------|--------------|----------|
| [Item] | [Who / what] | [Exact ask] | [Date or "urgent"] |

---

**Key relationships and context**

| Stakeholder | Role | Current dynamic | What they expect during this period |
|-------------|------|-----------------|--------------------------------------|
| [Name] | [Role] | [1-line read] | [What they are watching or waiting for] |

---

**What NOT to touch**
[List anything that should not be changed, re-opened, or re-decided during the coverage period. Protect in-flight work.]

---

**How to use the system**
- Start each morning with `/today` — it will surface what needs attention
- For any decision, run `/decide [decision]` before acting
- If a fire starts, run `/playbook fire-responder`
- Update initiative Stage and status at the end of each day
- Do not close any hypothesis without running Performance-Tracker first

**Contacts**
- [Name] — [role] — for [topic] — [preferred channel]
- [Name] — [role] — for [topic] — [preferred channel]

---

#### After the Handoff Returns

- [ ] Review what was decided and update initiative files
- [ ] Log any new learnings to Learning.md
- [ ] Run `/today` to re-orient before taking back ownership
- [ ] Check if any hypotheses were closed or blockers resolved during your absence

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

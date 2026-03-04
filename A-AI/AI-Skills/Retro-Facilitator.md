# Skill: Retro Facilitator

## Purpose
Structure the sprint retrospective so it produces usable decisions — not just catharsis.
Separate patterns from one-off events.
Root cause what went wrong. Preserve what worked.
Convert findings into process improvements that land in Learning.md.

A retro that produces no decisions is a support group.
A retro with this skill is a system upgrade.

## When to Use
- At the end of each sprint or development cycle
- After a launch — to capture what the build process revealed
- When a team pattern is repeating and needs to be named and addressed
- Before running Iteration-Planner — retro findings inform the next cycle setup

## Behavior Rules
- Do not conflate output (what happened) with process (how we worked) — separate them
- Identify patterns across multiple sprints — one-offs do not need process fixes
- Root cause "what went wrong" before proposing solutions — symptoms are not causes
- Do not capture vague actions like "communicate better" — require specific, ownable next steps
- Preserve what worked with equal rigor — good process erodes without explicit reinforcement
- Learning.md entries must be written in the retro — not deferred to later
- If the same issue appears for the second time in a row, escalate urgency — it is now a system problem

## Input Expectations
Provide:
- Sprint period and initiative(s) covered
- What was committed vs what shipped (or a pointer to Build-Review output)
- Team's raw retro input if available (what went well, what did not, what to change)

Optional:
- Previous retro findings — to identify recurring patterns
- Key decisions or scope changes made during the build
- Any team tension or process friction worth naming

## Output Structure

### Retro: [Initiative / Sprint] — [Date]

**Sprint period:** [Start → End]
**Facilitator:** [PM / Team lead]
**Participants:** [Roles present — not names unless relevant]

---

#### What Worked — Preserve These

| Practice | Why it worked | Keep / Formalize |
|----------|---------------|-----------------|
| [What the team did well] | [Why it produced a good outcome] | Keep as-is / Document as process |

**Pattern note:** [If this appears across multiple sprints — name it explicitly]

---

#### What Did Not Work — Root Cause These

| Issue | Symptom | Root Cause | First or Repeat? |
|-------|---------|-----------|-----------------|
| [What went wrong] | [What we observed] | [Why it actually happened] | First / Repeat — [N times] |

**Escalation flag:** [If any issue is appearing for the second time — flag as system problem, not individual incident]

---

#### Process Improvements

| Problem | Proposed Fix | Owner | By When |
|---------|-------------|-------|---------|
| [Root cause from above] | [Specific, ownable action — not "communicate better"] | [Role] | [Next sprint / This week] |

---

#### Learning.md Entries

*Write these directly into Learning.md after the retro:*

- **[Date] — [What we learned about how we work]** — Applies to: [Initiative / General process]
- **[Date] — [Pattern confirmed across N sprints]** — Action: [What changes next sprint]

---

#### Next Sprint Setup

Based on this retro, the following should be true going into the next sprint:
- [ ] [Specific setup change — e.g., "Scope locked by Day 1, not Day 3"]
- [ ] [Process change applied — e.g., "Decision log started at sprint kickoff"]
- [ ] [Carry-forward item addressed — e.g., "Edge case X from this sprint scoped into next"]

---

#### Actions Required

- [ ] Log process improvements with owners and dates
- [ ] Update `Learning.md` with entries above
- [ ] Flag repeat issues to manager if team cannot resolve independently
- [ ] Run `Iteration-Planner` if this cycle is complete and the next one is starting

---

> **© Yaniv Yaakubovich**
> Product Management & AI Consulting: [www.verve-pm.com](www.verve-pm.com)

# Skill: Team Health Check

## Purpose
Generate a structured read on the current state of the product team.
Surface blockers, overload signals, and relationship risks before they compound.

## When to Use
- Weekly — as part of the team lead's own `/today` or `/team-review`
- Before a planning session where team capacity will be discussed
- When something feels off but is hard to articulate
- Before a skip-level or exec conversation about the team

## Behavior Rules
- Health is not about output volume. A PM shipping fast into the wrong bet is not healthy.
- Read 1:1 logs before producing ratings. Impressions without evidence are not health checks.
- If a 1:1 log hasn't been updated in more than 2 weeks, flag it — the check-in gap is itself a signal.
- Do not produce a health rating without evidence for it.

## What It Reads
- `R-Relationships/Team/Roster.md`
- All files in `R-Relationships/Team/PM-Profiles/`
- All files in `R-Relationships/Team/1on1-Log/`
- All files in `I-Initiatives/` (for each PM's initiative status)

## Output Structure

### Team Health Summary

| PM | Initiative Load | Blockers | Morale Signal | 1:1 Last | Risk |
|----|----------------|---------|--------------|---------|------|
| [Name] | [N active] | [Yes / No] | [Strong / Neutral / Flagged] | [Date] | [None / Watch / Act] |

**Morale Signal** is based on 1:1 log tone, energy, and what the PM is bringing to sessions — not performance metrics.

---

### Flags — Act Now

Issues that require the lead's attention this week:
- [PM] — [specific signal] — recommended action: [concrete step]

### Flags — Watch

Issues worth monitoring but not yet requiring action:
- [PM] — [signal] — check in at next 1:1

### Systemic Signals

Patterns appearing across more than one PM:
- [Pattern] — affects [PM names] — likely cause: [org, workload, unclear strategy, etc.]
  Systemic issues are not individual performance problems. Treat at the system level.

### What the Lead Should Do This Week

1. [Action] — [reason]
2. [Action] — [reason]

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

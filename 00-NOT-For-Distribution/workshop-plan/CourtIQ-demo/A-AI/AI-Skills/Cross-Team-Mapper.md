# Skill: Cross-Team-Mapper

## Purpose
Map dependencies, handoffs, and collaboration needs across teams for a given initiative.
Surface blockers before they become fires.
Make implicit coordination explicit so the PM is not the only one holding the full picture.

A cross-team dependency undocumented is a delay waiting to happen.

## When to Use
- When an initiative requires work from more than one team
- At initiative kickoff — before sprint planning — to identify who needs to be involved
- When planning the sprint that contains a cross-team handoff
- When a dependency has been identified but not structured
- Before running Sprint-Planner on a complex initiative

## Behavior Rules
- Map every team that has a dependency — not just engineering
- Distinguish between hard dependencies (blocks shipping) and soft dependencies (improves outcome)
- Every dependency needs an owner — "TBD" is not an owner
- Flag if a dependency team has not been informed — this is a coordination gap
- Surface timeline conflicts — if two teams need the same window, it must be resolved
- Do not assume alignment — require explicit confirmation of each dependency
- If a dependency creates a critical path, say so and estimate the delay risk

## Input Expectations
Provide:
- The initiative name and its current stage
- What the initiative requires from other teams (if known)
- Target launch window or sprint

Optional:
- The PRD or initiative file — to extract dependencies from scope
- Known team capacity constraints
- Previous dependency issues with the same teams

## Output Structure

### Cross-Team Map: [Initiative Name]

**Initiative stage:** [Defined / In Sprint / In Development]
**Target launch:** [Date or sprint]
**Mapped by:** [PM name or role]
**Date:** [Date]

---

#### Dependency Map

| Team | What They Own | Type | Status | Owner | Confirmed? |
|------|--------------|------|--------|-------|-----------|
| [Team name] | [What this initiative needs from them] | Hard / Soft | Not started / In progress / Complete | [Name or role] | Yes / No — [action needed] |

**Dependency type definitions:**
- **Hard** — initiative cannot ship without this. Blocks the critical path.
- **Soft** — initiative ships without this, but outcome or quality is degraded.

---

#### Critical Path Risks

| Dependency | Risk | Estimated Delay | Mitigation |
|-----------|------|----------------|-----------|
| [Team / item] | [What breaks if this slips] | [Days / weeks] | [What to do now to protect the path] |

---

#### Handoff Plan

| Handoff | From | To | What is handed off | When | Owner |
|---------|------|----|--------------------|------|-------|
| [Handoff name] | [Team A] | [Team B] | [Artifact / decision / output] | [Date or sprint day] | [Who is responsible for the transfer] |

---

#### Coordination Gaps

Teams or stakeholders who have a dependency but have not been informed:
- [ ] [Team] — needs to be looped in by [date] — [PM action required]
- [ ] [Stakeholder] — needs visibility on [what] before [milestone]

If no gaps: "All dependency teams confirmed and informed."

---

#### Recommended Actions

- [ ] Confirm hard dependencies with owners by: [Date]
- [ ] Schedule cross-team kickoff or sync if more than 2 teams are involved
- [ ] Add dependency milestones to sprint plan
- [ ] Flag critical path risks to manager if delay risk exceeds [N] days
- [ ] Re-run this skill if initiative scope changes significantly

---

> **© Yaniv Yaakubovich**
> Product Management & AI Consulting: [www.verve-pm.com](www.verve-pm.com)

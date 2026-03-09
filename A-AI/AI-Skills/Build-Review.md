# Skill: Build Review

## Purpose
Prepare the sprint review before it happens.
Summarize what shipped versus what was committed, surface early outcome signals,
and capture key decisions made during development.

A sprint review without preparation is theater.
A sprint review with this skill is a leadership moment.

## When to Use
- The day before or morning of sprint review
- At the end of a development cycle before transitioning to launch
- When an initiative has just shipped and you need to brief stakeholders
- Before running Performance-Tracker — this is the bridge between build and measurement

## Behavior Rules
- Compare shipped scope against committed scope — do not normalize the delta
- If something slipped, say what slipped and why — no euphemisms
- Do not claim outcomes that have not yet been measured — signal vs confirmed result
- Surface decisions made during the build that stakeholders were not part of — they need to know
- If the shipped scope changed the hypothesis test conditions, flag it explicitly
- Output must be presentable to engineering, design, and leadership in one document
- Always end with: what we are watching next

## Input Expectations
Provide:
- What was committed at sprint start (goal, scope, acceptance criteria)
- What actually shipped (scope, completeness, known gaps)
- Any key decisions made during the build

Optional:
- Early signals from production (errors, usage, feedback)
- Stakeholder questions or concerns going into the review
- The linked hypothesis — to check if shipped scope still enables the test

## Output Structure

### Sprint Review: [Initiative Name] — [Sprint / Cycle]

**Sprint goal:** [Original goal — one sentence]
**Review date:** [Date]
**Sprint period:** [Start → End]

---

#### Shipped vs Committed

| Item | Committed | Shipped | Status | Notes |
|------|-----------|---------|--------|-------|
| [Feature / Story] | ✓ | ✓ / Partial / ✗ | On track / Slipped / Descoped | [Why, if not shipped] |

**Scope change summary:**
- [What was added, removed, or modified from original scope — and why]
- If no changes: "Shipped as committed."

---

#### Key Decisions Made During Build

| Decision | Made by | Rationale | Impact |
|----------|---------|-----------|--------|
| [What was decided] | PM / Eng / Design | [Why] | [On scope, metric, hypothesis] |

---

#### Hypothesis Test Integrity

**Original hypothesis still testable:** Yes / No / Partially
**If No or Partially:**
> [What changed during the build that affects the test — and what to do about it]

---

#### Early Signals (if available)

- **Technical:** [Error rates, performance, load — if visible post-ship]
- **Usage:** [First adoption signals — if measurable]
- **Qualitative:** [Support tickets, user comments, sales feedback]

*Note: These are early signals, not outcomes. Performance-Tracker runs in [N] weeks.*

---

#### What We Are Watching Next

- [Metric 1]: [What movement would confirm or challenge the hypothesis]
- [Metric 2]: [What we expect to see and when]
- [Flag]: [Anything that might interfere with clean measurement]

---

#### Actions Required

- [ ] Share this review in the sprint review session
- [ ] Log decisions made during build into initiative file
- [ ] Schedule Performance-Tracker read for: [Date — 2-4 weeks post-launch]
- [ ] Update initiative Stage to: `Launched` or `Monitoring`

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

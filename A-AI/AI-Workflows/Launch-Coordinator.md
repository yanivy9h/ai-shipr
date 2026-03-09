# Workflow: Launch Coordinator

**Command:** `/launch`
**Reads:** Initiative file, linked Hypothesis file (H-Hypotheses/), PRD (if available), Stakeholders (R-Relationships/Stakeholders/Stakeholders.md)

---

## Purpose

Run the pre-launch checklist before any initiative goes live.
Confirm go/no-go criteria are met, content is reviewed, experiments are configured,
stakeholders have signed off, and rollback conditions are defined.

A launch without this workflow is a hope.
A launch with this workflow is a decision.

---

## When to Run

- 3-5 days before a planned launch
- Before any feature flag is turned on for a broad audience
- Before an A/B test goes live
- When shipping to production after a development cycle completes
- Required input before Build-Review and Performance-Tracker can be meaningful

---

## Initiative Context

**Initiative:** [Name]
**Launch type:** [Full release / Staged rollout / A/B test / Feature flag / Beta]
**Target launch date:** [Date]
**Current stage:** [In Development → Testing → Launching]

---

## Go / No-Go Checklist

### 1. Product Readiness

- [ ] All committed scope is shipped and verified in staging / pre-prod
- [ ] Known bugs reviewed — P0 and P1 bugs are resolved or have accepted workarounds
- [ ] Edge cases reviewed (Edge-Case-Finder output) — high-risk edges addressed
- [ ] Mobile / desktop / accessibility reviewed as applicable

**Product readiness:** GO / NO-GO / CONDITIONAL

---

### 2. Experiment & Measurement Readiness

- [ ] The hypothesis being tested is documented: [HYP-XXX]
- [ ] Success metric is instrumented and returning data in staging
- [ ] Failure threshold is defined — we know what triggers a rollback
- [ ] Measurement window is set: [Start date → End date]
- [ ] Experiment is configured (if A/B): variant allocation, holdout, randomization confirmed
- [ ] Baseline metric captured before launch: [Metric] = [Current value]

**Measurement readiness:** GO / NO-GO / CONDITIONAL

*If NO: flag for Experiment-Auditor before proceeding*

---

### 3. Content & Communication Readiness

- [ ] In-product copy reviewed and approved
- [ ] Help center / documentation updated (if applicable)
- [ ] Internal announcement drafted for affected teams
- [ ] Customer-facing announcement prepared (if applicable)
- [ ] Legal / compliance review completed (if applicable)

**Content readiness:** GO / NO-GO / NOT APPLICABLE

---

### 4. Stakeholder Sign-off

| Stakeholder | What they are approving | Status | Date |
|------------|------------------------|--------|------|
| [Name / Role] | [Scope / Launch plan / Comms] | Approved / Pending / Not required | [Date] |

**Stakeholder readiness:** All required sign-offs received / Pending — [who / what]

---

### 5. Rollback Plan

- **Rollback trigger:** [What metric movement or incident triggers an immediate rollback]
- **Rollback method:** [Feature flag off / Revert deploy / Other — be specific]
- **Rollback owner:** [Who executes it — name or role]
- **Rollback SLA:** [How quickly can we revert — target: under 30 minutes]
- **User impact of rollback:** [What users experience if we revert]

**Rollback plan:** Defined / NOT DEFINED — DO NOT LAUNCH without this

---

### 6. On-Call & Monitoring

- [ ] Monitoring dashboards are live and reviewed
- [ ] Alerting is configured for failure thresholds
- [ ] On-call engineer confirmed for launch window: [Name]
- [ ] PM is reachable for the first [N] hours post-launch: [Yes / Coverage plan]

**Operational readiness:** GO / NO-GO / CONDITIONAL

---

## Final Go / No-Go Decision

| Area | Status |
|------|--------|
| Product readiness | GO / NO-GO / CONDITIONAL |
| Measurement readiness | GO / NO-GO / CONDITIONAL |
| Content readiness | GO / NO-GO / NOT APPLICABLE |
| Stakeholder sign-off | GO / NO-GO |
| Rollback plan | GO / NO-GO |
| Operational readiness | GO / NO-GO / CONDITIONAL |

**Overall launch decision:**

> ✅ **GO** — All criteria met. Proceed with launch on [Date].

or

> ⛔ **NO-GO** — The following must be resolved before launch:
> - [Specific blocker 1]
> - [Specific blocker 2]
> New target launch date: [Date]

or

> ⚠ **CONDITIONAL GO** — Launch permitted with the following conditions:
> - [Condition 1 — who is responsible, by when]
> - [Condition 2 — what happens if condition is not met]

---

## Post-Launch Actions

Schedule these immediately after launch:

- [ ] T+1 hour: First monitoring check — errors, performance, early usage
- [ ] T+24 hours: First signal read — are key metrics moving as expected?
- [ ] T+[N] weeks: Run Performance-Tracker — full hypothesis validation read
- [ ] Update initiative Stage to: `Launched` then `Monitoring`

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

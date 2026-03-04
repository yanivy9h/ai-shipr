---
name: launch
description: Run the AI-SHIPR Launch Coordinator. Pre-launch go/no-go checklist for any initiative. Run 3-5 days before a planned launch.
---

You are running the AI-SHIPR Launch Coordinator for a product manager.

Ask for the initiative name if not provided. Then read:
- The relevant initiative file from `I-Initiatives/`
- The linked hypothesis file from `H-Hypotheses/`
- `R-Relationships/Stakeholders/Stakeholders.md`

Then work through the go/no-go checklist below.

---

### Launch Coordinator

**Initiative:** [Name]
**Launch type:** [Full release / Staged rollout / A/B test / Feature flag / Beta]
**Target launch date:** [Date]
**Current stage:** [In Development → Testing → Launching]

---

#### Go / No-Go Checklist

**1. Product Readiness**
- [ ] All committed scope is shipped and verified in staging / pre-prod
- [ ] Known bugs reviewed — P0 and P1 bugs are resolved or have accepted workarounds
- [ ] Edge cases reviewed — high-risk edges addressed
- [ ] Mobile / desktop / accessibility reviewed as applicable

**Product readiness:** GO / NO-GO / CONDITIONAL

---

**2. Experiment & Measurement Readiness**
- [ ] The hypothesis being tested is documented: [HYP-XXX]
- [ ] Success metric is instrumented and returning data in staging
- [ ] Failure threshold is defined — we know what triggers a rollback
- [ ] Measurement window is set: [Start date → End date]
- [ ] Experiment is configured (if A/B): variant allocation, holdout, randomization confirmed
- [ ] Baseline metric captured before launch: [Metric] = [Current value]

**Measurement readiness:** GO / NO-GO / CONDITIONAL

---

**3. Content & Communication Readiness**
- [ ] In-product copy reviewed and approved
- [ ] Help center / documentation updated (if applicable)
- [ ] Internal announcement drafted for affected teams
- [ ] Customer-facing announcement prepared (if applicable)
- [ ] Legal / compliance review completed (if applicable)

**Content readiness:** GO / NO-GO / NOT APPLICABLE

---

**4. Stakeholder Sign-off**

| Stakeholder | What they are approving | Status | Date |
|------------|------------------------|--------|------|
| [Name / Role] | [Scope / Launch plan / Comms] | Approved / Pending / Not required | [Date] |

**Stakeholder readiness:** All required sign-offs received / Pending — [who / what]

---

**5. Rollback Plan**
- **Rollback trigger:** [What metric movement or incident triggers an immediate rollback]
- **Rollback method:** [Feature flag off / Revert deploy / Other]
- **Rollback owner:** [Who executes it]
- **Rollback SLA:** [How quickly can we revert — target: under 30 minutes]
- **User impact of rollback:** [What users experience if we revert]

**Rollback plan:** Defined / NOT DEFINED — DO NOT LAUNCH without this

---

**6. On-Call & Monitoring**
- [ ] Monitoring dashboards are live and reviewed
- [ ] Alerting is configured for failure thresholds
- [ ] On-call engineer confirmed for launch window: [Name]
- [ ] PM is reachable for the first [N] hours post-launch

**Operational readiness:** GO / NO-GO / CONDITIONAL

---

#### Final Go / No-Go Decision

| Area | Status |
|------|--------|
| Product readiness | GO / NO-GO / CONDITIONAL |
| Measurement readiness | GO / NO-GO / CONDITIONAL |
| Content readiness | GO / NO-GO / NOT APPLICABLE |
| Stakeholder sign-off | GO / NO-GO |
| Rollback plan | GO / NO-GO |
| Operational readiness | GO / NO-GO / CONDITIONAL |

**Overall launch decision:** GO / NO-GO / CONDITIONAL GO

---

#### Post-Launch Actions

- [ ] T+1 hour: First monitoring check — errors, performance, early usage
- [ ] T+24 hours: First signal read — are key metrics moving as expected?
- [ ] T+[N] weeks: Run Performance-Tracker — full hypothesis validation read
- [ ] Update initiative Stage to: `Launched` then `Monitoring`

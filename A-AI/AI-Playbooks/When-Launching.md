# Playbook: When Launching

**Paste this into Claude Code 3–5 days before a planned launch.**
Use it before any feature flag is turned on, before a broad rollout, before an A/B test goes live.

This playbook runs the full go/no-go checklist and produces a final launch decision with a rollback plan.

---

## Instructions to Claude

Read the following files before responding:
- `R-Relationships/Stakeholders/Stakeholders.md`
- `AI/AI-Workflows/Launch-Coordinator.md`
- The initiative file I name below (from `I-Initiatives/`)
- The linked hypothesis file (from `H-Hypotheses/`) if one exists

Then:

**Step 1 — Run Launch-Coordinator**
Work through all 6 areas of the go/no-go checklist using my input below:
1. Product readiness
2. Experiment & measurement readiness
3. Content & communication readiness
4. Stakeholder sign-off
5. Rollback plan
6. Operational readiness

For each area, ask me for the information you need if I haven't provided it.
Do not assume GO for any area — confirm each one explicitly.

**Step 2 — Final Decision**
Produce the overall launch decision: GO / NO-GO / CONDITIONAL GO
If NO-GO or CONDITIONAL: list exactly what must be resolved and by when.

**Step 3 — Post-Launch Schedule**
Produce the post-launch monitoring schedule:
T+1hr, T+24hr, and the full Performance-Tracker window.

**Step 4 — Write**
Ask: "Do you want me to save this launch checklist?"
If yes: write to `P-Proof/Launch-[initiative-name].md`
Update initiative Stage to `Launched` once we confirm GO.

---

## Launch Context

- Initiative: [name — must match file in I-Initiatives/]
- Launch type: [Full release / Staged rollout / A/B test / Feature flag / Beta]
- Target launch date: [Date]
- Linked hypothesis: [HYP file name or "none"]
- On-call engineer confirmed: [Yes — name / No — who to confirm with]
- Stakeholders who need to sign off: [Names or roles]

## Current Status

> [Brief summary of where things stand. What has shipped. What is still being tested. Any known issues.]

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

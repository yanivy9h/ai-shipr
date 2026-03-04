---
name: review-initiative
description: Run the AI-SHIPR Initiative Review. Weekly structured review of all active initiatives — what is moving, what is stuck, what needs a decision.
---

You are running the AI-SHIPR Initiative Review for a product manager.

Read these files before proceeding:
- All files in `I-Initiatives/`
- All files in `H-Hypotheses/` linked to active initiatives
- `S-Strategy/Strategic-Bets.md`
- `S-Strategy/Constraints.md`

If a specific initiative name was provided with the command, review that initiative in isolation. Otherwise review all active initiatives.

Generate the Initiative Review Report below.

---

### Initiative Review Report

#### Initiative Status Summary

| Initiative | Bet | Status | Outcome Metric | Hypothesis | Decision Needed |
|-----------|-----|--------|---------------|-----------|----------------|
| ...       | ... | ...    | ...           | ...       | Yes / No       |

---

#### Per-Initiative Assessment

For each Active or At Risk initiative:

**[Initiative Name]**
- Strategic link: [Bet # — confirmed / missing]
- Outcome: [metric + current state, or "undefined"]
- Hypothesis status: [Untested / Testing / Validated / Invalidated / Missing]
- Momentum: [Moving / Stalled / Blocked]
- Blocker (if any): [decision, dependency, or resource]
- Recommended action: [Continue / Escalate / Pause / Kill]

---

#### Decisions Required This Week

| Initiative | Decision | Criteria Defined | Due Date |
|-----------|----------|-----------------|----------|
| ...       | ...      | Yes / No        | ...      |

If criteria are undefined, flag: "Decision cannot be made cleanly — run Decision-Architect first."

---

#### Kill / Pause Candidates

Initiatives showing one or more of:
- No progress in 2+ weeks
- Hypothesis invalidated with no pivot defined
- No longer linked to an active bet
- Blocked with no resolution path

List with reason and recommendation.

---

#### Initiative Review Flags

- [Flag 1: specific]
- [Flag 2: ...]

If no flags: "All initiatives are structurally sound."

---

#### Weekly Momentum Score

- Initiatives on track: [N]
- Initiatives at risk: [N]
- Initiatives blocked: [N]
- Decisions overdue: [N]

**Overall: [Healthy / Needs Attention / At Risk]**

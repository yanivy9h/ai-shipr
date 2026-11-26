---
name: epic-import
description: Bring a team's existing epics (Jira epics, Linear projects) into AI-SHIPR. Groups them under initiatives, drafts the bet behind each group, and links without copying.
user-invocable: false
---

# Skill: Epic Import

## Purpose
Most teams plan in epics, not in hypotheses. This skill is their way in.
It reads the epics the team already has, groups them under initiatives, and drafts the hypothesis each group is testing, so the PM confirms a bet instead of writing one from a blank page.
Nothing changes in how the team works in the ticket tool.

## When to Use
- Day 4 of the Half-Sprint, when the team already has epics in flight
- When new epics appear in the ticket tool with no initiative behind them
- At quarterly planning, to check that every epic still answers to a goal
- When `/today` or the Structural-Integrity-Auditor flags unlinked epics

## Required Context
1. `Settings.md`, `Work Hierarchy` block: `ticket_tool`, `goal_source`, `epic_term`, `story_term`, `commitment_alert`. Use the team's words in every output.
2. `S-Strategy/Strategic-Bets.md` and `S-Strategy/KPIs.md`. If `goal_source: okrs`, also the OKRs (`shared/OKRs.md` or `../vp/shared/OKRs.md` in team setups; otherwise ask the PM to paste them).
3. Existing files in `I-Initiatives/` and `H-Hypotheses/`, to avoid duplicates.
4. The epics:
   - `ticket_tool: jira` or `linear` with a live connection: read active epics (Linear: projects) directly. Reading is Tier 1 in `Governance.md`.
   - No live connection: the latest snapshot in `I-Information/Integrations/Tickets/` if `tickets: active`, otherwise a list the PM pastes.
   - `ticket_tool: none`: a pasted list of epic names and one-line descriptions.

## Behavior Rules
- Link, never copy. Take the epic's name, link, status and one-line scope. Stories stay in the ticket tool.
- Do not create one initiative per epic by default. Group epics that serve the same goal or move the same metric. A single epic may stand alone only when nothing else serves its goal.
- Hypotheses belong to the initiative: 1 to 3 per Bet initiative, shared by its epics. Never one per epic for its own sake.
- Draft hypotheses backward from what the epics will deliver. Mark every one as a draft. The PM confirms, edits or rejects each.
- Never invent a metric, a threshold or a goal. If an epic's description names none, leave the field blank and ask.
- An epic that fits no Strategic Bet or Objective is reported as "no goal". Do not stretch a bet to cover it. That finding is one of the most useful outputs of this skill.
- Type each initiative `Bet` or `Commitment`. Commitment is only for work that happens whatever the team believes: a named regulation, a contractual promise, a security fix, tech debt. A customer request with no contract behind it is a Bet.
- Be honest about timing. If an epic is already in progress or shipped and no hypothesis with a metric and threshold existed before it started, its signal was not defined before the build. Say so, file the hypothesis with Confidence `Low`, and treat the first proof as retrospective. If an existing hypothesis was filed before the epic started, the signal predates the build. If the start date is unknown, ask.
- Write nothing until the PM confirms the grouping. Present, stop, wait.
- Writing back to the ticket tool is Tier 2 in `Governance.md`. Offer it, never do it unasked.
- Linear: projects take the epic slot, and a Linear initiative maps to an AI-SHIPR initiative. When Linear initiatives exist, use them as the starting grouping. If the connection does not expose initiatives, ask the PM which projects belong to which initiative.
- Jira: if Jira initiatives exist above the epics (Premium and Enterprise), use them as the starting grouping. On Standard there is no such level, so the grouping is proposed here.

## Steps
1. **Read** the active epics and the existing initiatives. Skip epics already linked from an initiative, matching by ticket link or ID. If an initiative lists epics by name only, do not match on similar names: ask whether the epic is the same one, a parent, or new.
2. **Group** the remaining epics by the goal or metric they serve. Match each group to an existing initiative where one fits, otherwise propose a new one.
3. **Type** each proposed initiative: Bet or Commitment.
4. **Draft** 1 to 3 hypotheses per Bet initiative in the form: "We believe [what these epics deliver] will [move which metric] for [whom]. We will know when [signal]." For each epic, name the hypothesis it tests, and a primary one if it tests two.
5. **Present** the proposal (see Output Structure) and stop.
6. **On confirmation, write:** initiative files from `I-Initiatives/Initiative-Template.md` (Type, Strategic Link, Outcome, Linked Hypotheses, Linked Epics, Stage), and hypothesis files from `H-Hypotheses/Hypothesis-Template.md` (Related Initiative, Confidence, Tested By). Set Stage from the epics' state: not started is `Defined`, in progress is `In Development`, released is `Launched`. Where epics in one initiative differ, use the most advanced state any epic has reached and list the others in Open Questions.
7. **Offer the export:** write a one-line bet and the success metric into each epic's description in the ticket tool, with a link back to the hypothesis. Only on an explicit yes.
8. **Hand over** to `Hypothesis-Builder` for any confirmed hypothesis that still lacks a metric, a threshold or a time boundary.

## Output Structure

### Headline
One line: whether the PM needs to act and what the one decision is. Example: "Needs you: confirm the grouping of 8 epics into 3 initiatives, and 2 epics have no goal."

### Proposed Initiatives

For each:

**Initiative: [name]** · Type: Bet / Commitment · Existing or New
- Goal: [Strategic Bet #, and Objective + Key Result if `goal_source: okrs`]
- Outcome metric: [from the epics or the goal, or "missing, please add"]
- Epics: [name + link], [name + link]
- Why these belong together: [one line]

Draft hypotheses (Bet only):
1. We believe ... will ... for ... . We will know when ... . Tested by: [epics]. Signal defined before build: Yes / No

Commitment only:
- Required by: [the named source, or "missing, please add"]
- Done when:

### Epics With No Goal
| Epic | Why it fits no bet or objective | Options |
|------|--------------------------------|---------|
| | | Add a bet / Retype as Commitment / Question the epic |

### Checks
- Commitments: [N] of [N] active initiatives ([X] percent, alert at `commitment_alert`)
- Epics already in flight with no signal defined before build: [N]
- Active initiatives after import: [N] (more than 3 is a capacity risk)

### Next
What will be written on confirmation, file by file. Then the export offer.

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

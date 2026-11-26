---
name: memory-upkeep
description: Keep Learning.md and Decision-Log.md useful as they grow. Finds duplicates, entries past their review date, outcomes never recorded, and corrections that keep recurring. Proposes edits, changes nothing without approval. Safe to run on a schedule.
user-invocable: false
model: sonnet
---

# Workflow: Memory Upkeep

## Purpose
Keep the system's memory useful as it grows. Saving a learning is easy. Over a few months the hard parts show up:

- **What's worth keeping:** twenty small entries bury the three that matter.
- **What goes out of date:** "the launch is on March 3" is wrong on March 4, and Claude still acts on it.
- **Duplicates:** a new entry restates an old one, or contradicts it, and Claude reads both.

AI agents that run in the background handle this with a scheduled cleanup pass over memory before the next run, sometimes called "dreaming". This workflow is that pass for AI-SHIPR.

## When to Use
- Once a month, or when `Learning.md` passes about 50 entries since the last upkeep.
- After the Friday Weekly Review, every fourth week.
- When Claude acts on something that is no longer true. That is a symptom of stale memory.
- On a schedule, with no one present (see "Running without a prompt").

## What It Reads
- `Learning.md`
- `Decision-Log.md`
- `P-Proof/` (results that arrived after a learning was written)
- `I-Initiatives/` (to check whether dates and statuses in memory still match)
- The newest earlier `P-Proof/Memory-Upkeep-*.md`, if any, for comparison

## What It Writes
- `P-Proof/Memory-Upkeep-[date].md`, the report. This is the only file written without asking.
- Edits to `Learning.md` and `Decision-Log.md`, **only after the PM approves each one**. These are Tier 2 actions in `Governance.md`.

---

## The Prompt

---

You are running AI-SHIPR Memory Upkeep.

Read every file listed above. Then run the five checks and write the report. You are proposing, not editing.

### Check 1: Duplicates
Find entries in `Learning.md` that say the same thing, or contradict each other. For each pair, give both headings with dates, the overlap in one line, and a proposed merge: which entry stays and what moves into it. When two entries contradict, propose that the newer one wins, and say so.

### Check 2: Past their review date
Find entries whose `**Review by:**` date has passed, and entries that depend on a date or a status that has changed (a launch date, a "until Q3", an initiative that has since shipped or been killed). For each, propose one of:
- **Update:** say to what, citing the file that shows the new state.
- **Retire:** no longer true. Retired entries move to a `## Retired` section at the bottom of the file, with the date and one line on why. Nothing is deleted.
- **Ask:** the files don't show it.

### Check 3: Outcomes never recorded
Memory comes from three sources: what you knew going in (strategy files), feedback (your corrections), and outcomes (what happened after you acted). Outcomes are the one that gets skipped.

Find learnings and decisions that predicted a result ("we expect", "should raise", "if this works") where a matching result now sits in `P-Proof/` or an initiative file but was never written back. Propose a one-line follow-up for each: did the prediction hold?

### Check 4: Corrections that keep coming back
If memory works, the PM corrects Claude once. List any rule or preference that appears in `Learning.md` more than once ("remember", "from now on", "always", "never"). A repeated correction means the rule isn't loaded where the work happens. Propose where it should live instead: the agent or skill file that does the work, or `Settings.md`.

### Check 5: Patterns ready to become rules
A pattern that shows up in three or more entries is a candidate for a rule in an agent or skill file. Name it, cite the entries, name the file.

---

### Report

Write the report headline first, so the PM knows in ten seconds whether it needs them:

```
# Memory Upkeep - [date]

**Needs you: N items.** [one sentence on the most important one]

## Duplicates (N)
## Past their review date (N)
## Outcomes never recorded (N)
## Corrections that keep coming back (N)
## Patterns ready to become rules (N)

## Health
- Learning.md entries: X (last upkeep: Y)
- Entries past review date: X (last upkeep: Y)
- Repeated corrections: X (last upkeep: Y)
```

Leave out any section with zero items, except Health. The Health numbers are how the PM sees whether memory is getting better over time, so keep them comparable between runs.

In chat, show only the headline and the counts. Then ask: "Which of these should I apply?" Apply only the approved items.

*End of prompt.*

---

## Running without a prompt

This workflow can run on a schedule (Claude Code scheduled tasks or `/loop`, a cloud routine, or a cron job calling the Claude CLI). In that mode:

- Run the five checks and write `P-Proof/Memory-Upkeep-[date].md`. Nothing else.
- Do not edit `Learning.md`, `Decision-Log.md` or any other file.
- Do not send, post or share the report anywhere. It contains internal strategy and people data, which `A-AI/AI-Agents/_Security-Boundaries.md` protects.
- The PM reviews the report in their next session and approves edits there.

## Rules
- Never delete. Retire into the `## Retired` section instead.
- Never edit without approval, even when the fix is obvious.
- Never invent an outcome. If the result isn't in the files, the item is **Ask**.
- Cite the file and heading for every proposal, so the PM can check it in one click.

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

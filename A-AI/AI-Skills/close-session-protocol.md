---
name: close-session-protocol
description: Session-close sweep — scans the current conversation for unwritten captures and proposes them as one combined diff with write-all default. Invoked by the mandatory Session-Close Protocol rule in CLAUDE.md (on end signals, /today, /weekly, /handoff, or after 3+ substantive exchanges go idle). Not user-typeable — the rule fires it automatically.
user-invocable: false
---

You are running the AI-SHIPR Session-Close Protocol.

## Purpose

Force a structured write to disk before the session ends. The original Learning Capture protocol only fires after agent/skill runs and requires per-item confirmation — both fail in busy ad-hoc sessions. This protocol fires on session-close signals and uses a combined diff with write-all default to maximize what lands.

## Scope

Read these first to avoid duplicate entries:
- `Learning.md` (most recent entries)
- `Decision-Log.md` (most recent entries)

Then scan the entire current conversation for capturable signals. Route each to its destination file:

| Signal | Destination |
|---|---|
| Decision made (option chosen + alternatives + reasoning) | `Decision-Log.md` |
| Persistent instruction ("remember", "from now on", "always do") | `Learning.md` (feedback type) |
| Pattern / insight / surprise / confirmed-or-broken assumption | `Learning.md` |
| Strategy shift (Vision / Bets / KPIs implication) | Update the strategy file directly + log decision to `Decision-Log.md` |
| New or updated persona, stakeholder, or hypothesis | Update the relevant file in `R-Relationships/` or `H-Hypotheses/` |

## Process

1. Scan the conversation in one pass. Do not ask the user to summarize — you have the context.

2. Group findings by destination file. Do not produce 20 micro-entries — cluster related signals.

3. Present **one combined diff**, grouped by file. Use this exact shape:

```
Session-Close Sweep — about to write:

→ Decision-Log.md (2 entries)
  1. [Decision title] — [decided X over Y because Z]
  2. [Decision title] — ...

→ Learning.md (1 entry)
  3. [Insight or persistent instruction]

→ S-Strategy/Strategic-Bets.md (1 edit)
  4. Bet 3 status flipped from "active" to "deprioritized" per decision #1

Reply 'no [N]' to skip an item, 'edit [N]' to revise, or just press enter to write all.
```

4. **Default to write-all.** If the user does not opt out per item, write everything. Per-item yes/no creates the friction that loses captures in the first place.

5. Append `Learning.md` entries under today's date in the standard format:

```
## [YYYY-MM-DD] — [Cluster name]
**Insight:** [what was learned]
**Source:** [context — which initiative, decision, or session]
**Implications:** [what this should change or inform going forward]
```

6. Append `Decision-Log.md` entries under today's date in the format defined in that file's header.

7. If nothing meaningful surfaced, say so in one sentence and end. Do not force entries.

## Output discipline

- No preamble, no ceremony — straight to the combined diff.
- After writing, output a one-line summary: `Wrote N entries: Learning.md (×A), Decision-Log.md (×B), [strategy files updated].` Then end.
- Do not propose next actions unless the user asks.

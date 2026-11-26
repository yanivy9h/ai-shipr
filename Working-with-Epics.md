# Working with Epics

For teams that plan in epics or projects, not in hypotheses. Read this once. It takes five minutes.

---

## The idea

Your team has epics. Each one was prioritized for a reason: someone believed it would move something. That belief is a hypothesis. It was just never written down.

AI-SHIPR writes it down, in one sentence, with the signal that will show whether it paid off. Your epics stay exactly where they are.

```
Goal → Initiative → Hypothesis → Epic → Story → Proof
└────── lives in AI-SHIPR ──────┘ └ ticket tool ┘ └ AI-SHIPR ┘
```

| Level | What it is | Where it lives |
|-------|-----------|----------------|
| Goal | A Strategic Bet, or an OKR Objective | `S-Strategy/` |
| Initiative | What you are doing about the goal. A `Bet` or a `Commitment` | `I-Initiatives/`, one file each |
| Hypothesis | The bet in one sentence, with a metric and a threshold. 1 to 3 per initiative | `H-Hypotheses/` |
| Epic | The work that tests the hypothesis | Your ticket tool. Linked, never copied |
| Story | A single ticket inside the epic | Your ticket tool |
| Proof | What a ticket or an experiment showed | `P-Proof/`, logged on the hypothesis |

Your ticket tool rolls up what got done. AI-SHIPR rolls up what you learned.

---

## How your tool maps

| AI-SHIPR | Jira | Linear | Aha! |
|----------|------|--------|------|
| Goal | Goal or OKR | (none) | Goal |
| Initiative | Initiative (Premium and Enterprise only) | Initiative | Initiative |
| Hypothesis | (none) | (none) | (none) |
| Epic | Epic | Project | Epic |
| Story | Story, Task, Bug | Issue | Feature, Requirement |

None of these tools has a hypothesis. That is the layer AI-SHIPR adds.

**No level above the epic?** That is the case on Jira Standard. The initiative is then also a layer AI-SHIPR adds: group the epics that serve the same bet under one initiative.

**Linear:** a Linear initiative maps to an AI-SHIPR initiative, never to the Goal. Projects take the place of epics.

**Aha! and other tools:** there is no live connection. Set `ticket_tool: none` and list your epics by name.

**OKRs:** set `goal_source: okrs`. The Objective is the Goal, and the initiative's outcome metric is one of its Key Results.

---

## Start in 20 minutes

1. In `Settings.md`, fill the `Work Hierarchy` block: your ticket tool, and the words your team uses for epics and stories.
2. Run `Epic-Import`. It reads your active epics, proposes how to group them under initiatives, and drafts the hypothesis behind each group.
3. Confirm, change or reject the grouping and each draft. Nothing is written before you confirm.
4. For any hypothesis missing a metric or a threshold, run `Hypothesis-Builder`.

Jira setup: `I-Information/Integrations/Tickets/jira-setup.md`. Linear setup: `linear-setup.md` in the same folder.

---

## Bet or Commitment

Every initiative has a type.

**Bet:** you believe it will move a metric. It carries 1 to 3 hypotheses.

**Commitment:** work that happens whatever you believe. A regulation, a contractual promise, a security fix, tech debt. It carries no hypothesis. It names who requires it and when it is done.

Forcing a hypothesis onto a Commitment produces a fake one, and fake hypotheses teach a team that hypotheses are paperwork.

The test for a customer request: if it was promised in a contract, it is a Commitment. If sales asked for it, it is a bet that the customer will renew or expand, and it carries a hypothesis.

When more than 40 percent of your active initiatives are Commitments, the Structural-Integrity-Auditor flags it. Change the threshold with `commitment_alert` in `Settings.md`.

---

## Where proof goes

Proof usually comes from a single story, not from a whole epic. So a proof record in `P-Proof/` carries three things:

1. The ticket it came from.
2. The hypothesis it bears on.
3. A direction: `Supports`, `Weakens` or `Inconclusive`.

Each record adds a row to the hypothesis's Proof Log, and the hypothesis's Confidence moves with it:

- **Low:** belief only, no proof yet.
- **Medium:** at least one record supports it and none weakens it.
- **High:** two or more independent records support it, at least one from behavioral data, and none weakens it.

One result moves Confidence. The hypothesis is marked Validated or Invalidated only when its threshold is met or crossed and the measurement window is complete.

---

## Two rules that keep it honest

**Define the signal before the build.** A metric and a threshold written after launch are a story, not a test. Sprint planning flags any epic about to start with no signal defined.

**One primary hypothesis per epic.** An epic can test two hypotheses. Name the primary one, or the roll-up gets muddy.

---

## Common questions

**An epic is already in progress. Is it too late?**
File the hypothesis anyway, with Confidence `Low`. The first result is a look back, not a test. The next epic under that initiative gets its signal defined in advance.

**Does every epic need its own hypothesis?**
No. Hypotheses belong to the initiative. Several epics usually test the same one. If you have more than three on one initiative, they were probably written per epic and should be merged.

**An epic fits no goal. What now?**
`Epic-Import` reports it as "no goal" and does not stretch a bet to cover it. You have three options: add the bet it serves, retype the work as a Commitment, or question the epic.

**Will my engineers have to work differently?**
No. The only thing that can change in the ticket tool is one line in the epic description: the bet and its success metric. `PRD-Builder` prepares that text, and it is written there only if you say yes.

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

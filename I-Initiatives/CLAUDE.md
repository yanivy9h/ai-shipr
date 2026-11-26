# I-Initiatives — Index

The active work layer — one file per initiative (`initiative-[short-name].md`, copy `Initiative-Template.md`). Bridge between strategy and proof: every `Bet` initiative traces back to a Strategic Bet and carries 1 to 3 hypotheses. A `Commitment` initiative (regulation, contractual promise, security fix, tech debt) has no bet and no hypothesis; it names who requires it and when it is done, and its Strategic Link reads "None (Commitment)". Never stretch a bet to cover a Commitment. Flag violations.

## Key context

Each file carries: Type (`Bet | Commitment`), Strategic Link, measurable Outcome, Linked Hypotheses, Linked Epics, Stakeholders, Stage, Status (`Active | At Risk | Paused | Completed`), Decision Needed.

**Stage lifecycle** — keep current, workflows branch on it:

```
Defined → In Sprint → In Development → Testing → Launched → Monitoring → Iterating
```

Read by `/today` (Active initiatives → priority stack), `Initiative-Review`, `Sprint-Planner`, `Roadmap-Planner`, `Launch-Coordinator`, and the `Structural-Integrity-Auditor`. More than 3 simultaneously Active initiatives is a capacity risk — flag it.

**Epics live in the ticket tool.** Read `Work Hierarchy` in `Settings.md` for the team's words (`epic_term`, `story_term`). An initiative links to its epics and never copies them; each linked epic names the hypothesis it tests. Hypotheses hang off the initiative, not off each epic: several epics usually test the same one. When the ticket tool has no level above the epic, group the epics that serve one bet under one initiative. Flag it when Commitments exceed `commitment_alert` percent of Active initiatives.

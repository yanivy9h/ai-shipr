# H-Hypotheses — Index

Filed, falsifiable hypotheses. One file per hypothesis, created from `Hypothesis-Template.md` (`HYP-###-short-name.md`).

## Key context

Every hypothesis must be falsifiable — metric, threshold, and time boundary — and link back to an initiative or bet. Flag any that are not. Expect 1 to 3 per `Bet` initiative, not one per epic; `Commitment` initiatives have none. The hypothesis is where learning accumulates: `Tested By` lists the epics in the ticket tool that test it, and the `Proof Log` takes one row per proof record (source ticket, `Supports | Weakens | Inconclusive`). `Confidence` follows the rubric in the template and is updated with every new row. The metric and threshold must exist before a linked epic starts — flag an epic linked to a hypothesis with no threshold. For a team that starts from epics, draft the hypothesis backward: read the initiative's epics and propose the bet behind them for the PM to confirm. Status field (`Untested | Testing | Validated | Invalidated`) is read by `Roadmap-Planner`, `Experiment-Review`, and `/today`; keep it current. `Hypothesis-Builder` (skill) writes here; `Performance-Tracker` (skill) closes the loop with data. In discovery stage (`product_stage: discovery`), this is the most important folder in the system — if empty, suggest running `Assumption-Extractor` on the current bets first.

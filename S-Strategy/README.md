# S-Strategy

The permanent context layer. Everything here defines what the product is, what winning looks like, and what bets are being placed to get there.

Agents read S-Strategy before almost every output. Without it, responses are generic. With it, every skill, workflow, and agent output is anchored to the actual product context.

---

## Role in the system

S is the foundation. Everything else points back to it:

```
S-Strategy (why + what) → I-Initiatives (what we're building) → H-Hypotheses (what we're testing) → P-Proof (did it work)
```

If strategy is vague, everything downstream is vague. Clarity here compounds across every session.

---

## Files in this folder

| File | What it contains | When to update |
|---|---|---|
| `Vision.md` | Product in one sentence, 2–5 line vision, and what you explicitly will NOT do | At product pivot, major strategy shift, or once per quarter |
| `Product.md` | Product description, target customer segments, and the core user problem being solved | When the product scope or audience changes |
| `KPIs.md` | North Star Metric (name, definition, current/target) + 3–5 supporting metrics | At the start of each planning cycle |
| `Strategic-Bets.md` | Maximum 3 bets — each with why it matters, who it serves, success signal, and time horizon | Quarterly planning or when a bet is confirmed/killed |
| `Constraints.md` | Team capacity (engineering, design, PM), technical/platform constraints, and budget/timeline limits | When the team or resources change significantly |

---

## Who reads this folder

| Tool | What it uses |
|---|---|
| `/today` workflow | Reads `Strategic-Bets.md` and `KPIs.md` to orient the day around what matters |
| `Roadmap-Planner` workflow | Reads `Strategic-Bets.md` and `Constraints.md` to sequence initiatives |
| `Sprint-Planner` workflow | Reads `Strategic-Bets.md` to connect sprint goal to strategy |
| `OKR-Partner` skill | Reads `Strategic-Bets.md` and `KPIs.md` to ensure OKRs link to actual bets |
| `Initiative-Review` workflow | Reads `Strategic-Bets.md` to check if active initiatives still serve the right bets |
| `Structural-Integrity-Auditor` agent | Checks all initiatives against `Strategic-Bets.md` and `Vision.md` for drift |
| `Business-Case-Builder` skill | Reads `KPIs.md` and `Strategic-Bets.md` to frame the pitch |
| `Populate-Strategy` workflow | Writes initial content into all files in this folder from the Setup Worksheet |

---

## Setup priority

Fill in this order — `Populate-Strategy` workflow does this automatically from the Setup Worksheet:

1. `Vision.md` — required before any initiative or hypothesis work
2. `Product.md` — defines who you're building for
3. `Strategic-Bets.md` — everything initiative-level links to this
4. `KPIs.md` — needed before OKRs, roadmap, or performance reviews
5. `Constraints.md` — needed before sprint planning or roadmap work

---

> **© Yaniv Yaakubovich**
> Product Management & AI Consulting: [www.verve-pm.com](www.verve-pm.com)

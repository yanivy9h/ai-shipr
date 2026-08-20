# shared/ — Org Layer Index

The team seam. In a team setup this folder is the org's single source of truth: the VP (`team_mode: lead`) writes it, every PM reads it, no PM edits it. In `team_mode: individual`, sessions read the VP's copy at `../vp/shared/` BEFORE local strategy files — org decisions take precedence, and conflicts with local strategy must be flagged, not resolved silently.

## Doc index

- `Vision.md` — company product vision. |  `Strategy.md` — how we win.
- `OKRs.md` — current-period goals. |  `Strategic-Bets.md` — the org's 1–3 bets.
- `Portfolio-Roadmap.md` — cross-product roadmap, tensions, PM time split. Read in `product_mode: multi`.
- `Constraints.md` — org-level capacity, budget, tech-debt reality.
- `I-Information/` — org-wide Templates, Integrations, Resources. Shared formats live here; personal ones in the PM's own `I-Information/`.

## Key context

In solo mode this folder may sit unused — that is normal, skip it. If the org layer lives on Notion/Confluence rather than a mounted drive, `/sync-context` refreshes the local mirror.

# Plans — Saved Document Plans

Reviewed plans for recurring documents, so the next run starts at 80% done instead of from a blank page. Claude Code's native plan files get wiped within days; a plan that took an hour to refine belongs in the repo.

## What lives here

One file per recurring document type: `[doc-type]-plan.md` — e.g. `board-update-plan.md`, `prd-plan.md`, `quarterly-planning-plan.md`.

Each saved plan carries:
- The section-by-section structure that survived review
- Which context files feed each section
- Which AI-SHIPR skills run where, **named explicitly** (auto-invoke fires only ~70% of the time — a plan that relies on it is a plan that half-runs)
- What the reader should decide after reading

## How plans get here

Via the `When-Writing-a-Major-Doc` playbook: a one-off plan is drafted next to its document; when the document ships and you expect to write that document type again, the plan is generalized (one-off specifics stripped, structure and skill sequence kept) and promoted here.

## How plans get used

The playbook checks this folder first. The long-document skills (`PRD-Builder`, `Board-Update-Builder`, `Pitch-Deck-Builder`, `Business-Case-Builder`) also check for a matching plan before generating — a saved plan overrides their default structure.

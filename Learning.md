# Learning Log

A running record of what was learned in each session.
Updated at the end of any session where something was worth keeping.

---

## Entry Format

```
## [YYYY-MM-DD] — [Skill/Agent name]
**Insight:** [what was learned]
**Source:** [context — which initiative, decision, or session]
**Implications:** [what this should change or inform going forward]
```

---

## [2026-07-16] — Release / repo hygiene
**Insight:** Generated capability folders (`.claude/skills/`) should never be committed. They are derived from `A-AI/` source files by `setup.sh`, so tracking them duplicates content and lets the committed copy drift from source. Committing them also inflated the release diff ~5x with pure noise.
**Source:** Publishing AI-SHIPR v3.0 to the public GitHub repo.
**Implications:** Keep `.claude/skills/` gitignored. Edit capabilities only in `A-AI/AI-Agents|AI-Skills|AI-Workflows/`, then re-run `bash setup.sh` locally. Apply the same "commit source, ignore generated" rule to any future build step in this repo.

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

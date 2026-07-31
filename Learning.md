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

## [2026-07-31] — Working-Backwards (new skill)
**Insight:** The discovery chain had no entry point for a raw idea. Every existing framing skill assumes the problem is already named: Problem-Framer sharpens an existing statement, Assumption-Extractor needs an initiative to read. Amazon's Working Backwards fills that gap because it is a clarity test disguised as an artifact. An idea that cannot be written as a one-page press release a customer would care about is not ready, and the failure to write it is itself the output.
**Source:** Adding the skill from Werner Vogels' 2006 post (allthingsdistributed.com/2006/11/working_backwards.html).
**Implications:** Working-Backwards is now the front door of the discovery chain, feeding Assumption-Extractor via its Claims That Must Be True table. Two design rules worth reusing in future skills: (1) build the honest-failure path into the output structure (the "not ready" verdict), so the skill can reject an idea instead of flattering it; (2) constrain any generated quote to persona names from `R-Relationships/Users/Personas.md` so the skill cannot violate the no-fabricated-proper-nouns rule.

## [2026-07-31] — Working-Backwards + Prototype-Builder (cheap prototypes amendment)
**Insight:** When prototypes get nearly free, the thing that needs designing is not the prototype, it is the *routing decision*. Vogels' 2026 amendment says build first when you have conviction on the problem and uncertainty on the approach, which is a condition, not a new default. The failure mode a cheap-prototype era creates is category confusion: a great demo feels like validation, so people start answering demand questions with prototypes. Feasibility and usability are prototype questions. Demand never is.
**Source:** Extending Working-Backwards after Vogels' "Return to two-pizza culture" (2026-06), and building Prototype-Builder as its escalation target.
**Implications:** Three rules now hold across the system: (1) route before you build, and name where the uncertainty sits; (2) a prototype can evidence a feasibility or usability claim only, enforced in the Claims table's evidence column and in Prototype-Builder's evidence-filed table; (3) demand questions bounce between Prototype-Builder and Experiment-Designer by explicit cross-reference in both files, so neither skill can quietly absorb the other's job. Fourth, smaller rule worth reusing: record what did *not* change your mind, otherwise you cannot tell a confirming result from a badly aimed build.

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

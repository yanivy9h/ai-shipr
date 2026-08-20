# Schemas — Table Documentation

Docs for the tables and event structures your queries touch. Read only when validating a number or extending a query — this is the deepest tier before a live data connection.

## File naming

`[table-or-event-family].md` — e.g. `billing_events.md`, `user_sessions.md`.

## Template

```markdown
# [table_name]

**What it holds:** [one sentence]
**Grain:** [one row = one what?]
**Updated:** [batch daily / streaming / etc.]

| Column | Type | Meaning | Gotchas |
|---|---|---|---|
| ... | ... | ... | [nulls, enums, deprecated values] |

**Joins:** [key relationships to other documented tables]
**Known issues:** [backfills, schema changes with dates, trust boundaries]
```

## Rules

- Document only tables your filed queries actually use. This is not a warehouse catalog — it is the minimum context to validate your own metrics.
- Source of truth is your data team's docs where they exist; this file records what the PM needs, with a link back.

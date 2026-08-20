# Queries — Curated, Blessed, Filed

The SQL (or Amplitude/Mixpanel query definitions) behind your metrics. The AI runs or reasons from what is filed here instead of inventing queries — that is the anti-hallucination mechanism for every data conversation.

**The curation rule:** you file it, your data person blesses it. They never work in this repo — you bring the query to them (or take theirs), get a yes, and record who and when in the header. A query without a verification header is a draft, and the AI should say so when using it.

## File naming

`[area]-[metric-or-question].sql` — e.g. `billing-churn-by-segment.sql`, `onboarding-completion-rate.sql`.
Non-SQL tools: same naming, `.md` extension, query definition inside.

## Required header — every file starts with this

```sql
-- What it computes: [one sentence]
-- Metric definition: Metrics/[area]/metrics.md
-- Verified by: [name/role] on [YYYY-MM-DD]   -- "UNVERIFIED — draft" until blessed
-- Caveats: [sampling, excluded rows, timezone, known drift — or "none known"]
```

## Rules

- Never modify a verified query silently — edit, mark `UNVERIFIED — draft`, re-bless.
- A metric definition in `Metrics/` that names a query which doesn't exist here is a gap worth flagging, not filling with invented SQL.

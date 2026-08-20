# Metrics — Definitions Only

One folder per product area, one `metrics.md` per folder. Definitions only — no SQL (that lives in `Queries/`), no table docs (that lives in `Schemas/`). The split is deliberate: "what does this metric mean?" should cost one small file, not the whole data layer.

```
Metrics/
├── onboarding/metrics.md
├── billing/metrics.md
└── ...
```

## Template — copy into `<area>/metrics.md`

```markdown
# Metrics — [Area]

## [Metric name]
- **What it measures:** [one sentence, plain language]
- **How it is calculated:** [in words, not SQL — numerator / denominator / window]
- **Current:** [value + as-of date, or "not tracked yet"]
- **Target:** [value + by when, or "aspirational"]
- **Query:** `Queries/[file].sql` [or "none filed yet"]
- **Dashboard:** [link, or see dashboards.md]
- **Owner's note:** [gotchas — sampling, known data issues, what this metric does NOT mean]
```

## Rules

- The PM owns these files. Definitions come from wherever your team defines truth (your data person, your BI tool) — you file them, they never edit here.
- A metric named in `S-Strategy/KPIs.md` should have its operational definition here. KPIs.md says what matters and the target; this layer says exactly how it is computed.
- New feature shipping? Its metrics get defined here **before** launch — the Launch-Coordinator gate checks.

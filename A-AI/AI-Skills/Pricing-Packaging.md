---
name: pricing-packaging
description: Design a value-based pricing model and packaging tiers for a product, feature, or plan.
user-invocable: false
---

# Skill: Pricing & Packaging

## Purpose
Turn a product's value into a pricing model and a packaging structure that a customer will actually buy.
Forces a value metric, value-based (not cost-plus) price points, and tiers gated on real value levers, then exposes the load-bearing assumptions so they can be tested before a price ships.

Pricing is a product decision, not a finance afterthought. This skill treats it as one.

## When to Use
- Pricing a new product, feature, or plan for the first time
- Repackaging or restructuring existing tiers
- Introducing a new pricing model (e.g. moving from per-seat to usage-based)
- Monetizing something currently free, or adding a paid tier to a free product
- Before any pricing change goes to leadership or to market

## Behavior Rules
- Require a **value metric** — the unit you charge for (seat, usage, outcome, flat) must map to value the customer receives, not to internal cost. No value metric = no pricing.
- **Value-based, not cost-plus.** Never anchor a price solely on cost to build or cost to serve. Cost sets the floor, not the price.
- Force **segmentation** — state who each tier is for. Reject one-size-fits-all pricing without an explicit reason.
- **Package tiers on a value lever**, not arbitrary caps. Each tier boundary must gate something the customer values more of, so upgrading feels like buying more value, not lifting a random limit.
- **No fabricated competitor prices or names.** Reference an alternative's price only if the user provided it or it is verifiable. Otherwise mark it `[needs input]` — never fill a price from memory.
- Link to a **Strategic Bet and a KPI** — name the business outcome this pricing is meant to drive (acquisition, expansion, monetization, retention). Pricing with no strategic anchor is guesswork.
- Surface **load-bearing assumptions** — willingness-to-pay is the usual one. Any price point that would break the model if wrong must be flagged and paired with a test.
- **Price points are hypotheses, not decisions.** Present them with a confidence level and a way to validate before rollout. Never present a price as settled.
- If cost-to-serve is provided, flag any tier where margin is thin or negative.

## Input Expectations
Provide:
- The product, feature, or plan being priced
- Target segment(s) and who buys vs who uses
- The value it delivers (the outcome the customer is paying for)
- The business goal (acquire / expand / monetize / retain)

Optional:
- Current pricing, if any
- Known competitor or alternative prices (only real ones)
- Cost-to-serve or margin constraints
- Any willingness-to-pay signal or research
- Constraints (billing system, contracts, regulatory)

## Output Structure

### Pricing & Packaging: [Product / Feature]

#### 1. Value & Buyer
- **Outcome paid for:** [What the customer is really buying — the result, not the feature]
- **Economic buyer vs user:** [Who approves spend / who uses it — may differ]
- **Willingness-to-pay signal:** [What they pay for the alternative today, or the cost of the problem — quantified where possible]
- **Strategic link:** [Bet # and the KPI this pricing is meant to move]

#### 2. Value Metric
- **The unit you charge for:** [Per seat / per usage / per outcome / flat / hybrid]
- **Why it aligns with value:** [How the customer's bill grows as they get more value]
- **Scaling behavior:** [What happens to the bill as the account grows — expansion path]

#### 3. Pricing Model
- **Model:** [Subscription / usage-based / tiered / freemium / one-time / hybrid]
- **Rationale:** [Why this model fits the buying behavior and the value metric — 2 bullets]

#### 4. Packaging (Tiers)
| Tier | For whom | Value lever that gates it | Headline features |
|------|----------|---------------------------|-------------------|
| [Good] | [Segment] | [What unlocks the next tier] | [1-2 differentiators] |
| [Better] | [Segment] | ... | ... |
| [Best] | [Segment] | ... | ... |

- **Add-ons (outside core tiers):** [If any]
- **Free / trial:** [What is free, and why it drives conversion — if applicable]

#### 5. Price Points
| Tier | Price | Value metric | Target segment | Confidence | Basis / anchor |
|------|-------|--------------|----------------|------------|----------------|
| ... | ... | ... | ... | High / Med / Low | [WTP data / alternative price / analogy / assumption] |

#### 6. Positioning
- **Why this price (one line):** [How price is framed against the value delivered]
- **Against alternatives:** [How it reads next to what the buyer uses today — only real references]

#### 7. Key Assumptions & Risks
| Assumption | Risk if wrong | Testable before launch? |
|-----------|---------------|-------------------------|
| [e.g. buyers will pay per outcome] | High / Med / Low | Yes / No |

#### 8. Test Before You Commit
- **How to validate:** [Pricing interviews, Van Westendorp, fake-door / pricing page test, sales conversations, cohort A/B]
- **What would change the model:** [The result that would force a rethink]
- **Decision gate:** [What must be true before this price ships]

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

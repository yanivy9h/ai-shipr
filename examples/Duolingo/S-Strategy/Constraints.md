# Constraints

Documents what limits the roadmap — team capacity, technical debt, budget, and org reality.
Agents read this when planning sprints or sequencing initiatives to avoid plans that can't ship.
Update when the team or resources change significantly.

---

## Team / Capacity
- Engineering capacity: 4 engineers (2 iOS, 1 Android, 1 backend). 1 sprint = 2 weeks. iOS and Android must ship in the same sprint — staggered releases create support overhead.
- Design capacity: 1 dedicated designer shared with two other teams. Design reviews happen Monday mornings — anything not in review by Thursday the week before will miss the sprint.
- PM capacity: 1 PM (Maya), supporting 1 associate PM on the social features track.

## Tech / Platform constraints
- Notification infrastructure: Adaptive timing requires a new ML model for send-time optimization. Data Science has capacity in Q2 but the model needs 6 weeks of training data before it can be validated. Cannot A/B test adaptive timing before the model exists — there's a sequence dependency.
- Streak backend: Streak logic lives in a legacy service that hasn't been touched in 3 years. Any streak repair feature requires backend work estimated at 2 sprints. The risk of regressions is real — needs dedicated QA.
- Experimentation platform: Duolingo's internal A/B platform (Birch) handles mobile experiments. Server-side experiments (notification timing) require a different setup — coordinate with Growth Eng before scoping.

## Business / Org constraints
- Super Duolingo monetization dependency: Streak Freeze is a paid feature. Any free streak repair experience must be gated for free users in a way that doesn't cannibalize Streak Freeze revenue. Finance review required before shipping.
- Q2 earnings call: DAU numbers are public and watched. Nothing ships to production in the 2 weeks before the Q2 earnings call (April 28). Coordinate all launch timing with this constraint.
- Localization: Any copy change ships in 40+ languages. Localization adds 1–2 weeks to any feature that includes new text. Copy must be locked before engineering completes — no last-minute wording changes.

> **© Yaniv Yaakubovich**
> Product Management & AI Consulting: [www.verve-pm.com](www.verve-pm.com)

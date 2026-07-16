# AI-SHIPR Setup Worksheet — Filled Example: Duolingo

This file mirrors the structure of `AI-SHIPR-Setup-Worksheet.md` with Duolingo answers in each section. Use it as a reference for the kind of answers a Worksheet expects — depth, voice, length.

To see what `Populate-Strategy` writes for you AFTER ingesting a filled Worksheet like this one, see `duolingo-example-output.md`.

**Context for this example:** the PM is on Duolingo's retention and monetization team. Solo individual PM, single product (the Duolingo learner app — not Super Duolingo as a separate product).

---

## Before You Start — Setup Mode

**Question 1 — Products: Are you setting up for one product or multiple products?**
Single product

**Question 2 — Team: Are you an individual PM or do you manage a team of PMs?**
Individual PM

---

## Part 1 — Your Product(s)

*User details (who, JTBD, pain, context) live in Part 6. This section is about the product itself.*

### Product A — Duolingo (Learner App)

**What does this product do? (1-2 sentences, as if explaining to a new hire)**
Duolingo is a free language-learning app built on short, gamified lessons. The product runs on a freemium model — the core experience is free with ads, and Duolingo Super removes ads and adds offline access for around $7/month.

**How does your company make money from this product?**
Two streams. The big one is Super Duolingo subscriptions — paying users who get ads removed, offline lessons, and a few quality-of-life features. The smaller stream is in-app ads served to free users between lessons. Family Plan is starting to grow but is still a smaller slice of revenue.

**Name 1-2 competitors or alternatives. What do users choose instead of you, and why?**
Babbel and Memrise are the closest direct competitors. People pick Babbel when they want something that feels more "serious" — structured grammar, real-world dialogue practice. Memrise leans into native-speaker video clips. But honestly, our biggest competitor is doing nothing — users who say "I should learn Spanish someday" and never start, or who start and quit by day 10.

---

## Part 2 — Your Strategy

### Product A Strategy

**What stage is this product at right now?**
Iterating

Iterating:
- What did the data show that changed your direction? The streak-freeze feature we shipped last quarter improved 7-day retention by ~3 points, but it didn't move 30-day retention. So we learned: protecting an existing streak isn't enough. The real drop-off happens AFTER a streak loss, when users don't feel like coming back to "restart from zero." We're pivoting from streak protection to streak recovery.
- What hypothesis are you currently testing? That users who lose a streak and receive a low-friction "repair" option within 48 hours will return at meaningfully higher rates than the control. Running an A/B test now on a subset of churning users.

**What is your north star metric? (the single number that best captures product health)**
DAU with a 7-day-or-longer streak. This is the single number that best captures whether the product is actually doing its job — getting people to come back daily long enough to learn anything.

**How are you currently tracking on that metric? (current value, if known)**
About 4.2M.

**Where do you want that metric to be in 6 months?**
6.5M by end of Q3.

**List 2-3 supporting metrics you track regularly:**
1. Day-30 retention: 18% today, target 28%.
2. Streak recovery rate (% of users who lose a streak and return within 48 hours): 31% today, target 45%.
3. Free-to-paid conversion (% of 30-day active free users who upgrade to Super): 6.2% today, target 9%.

**What are the 1-3 big bets you are making in the next 6 months?**

Bet 1: Streak mechanics are the primary retention lever. Users who hit a 7-day streak are 4x more likely to reach day 30. Every product decision should reduce friction around streak loss and accelerate streak recovery. This is the bet — not "engagement" generally, but the streak specifically.

Bet 2: Personalized lesson pacing reduces early drop-off. The biggest churn cliff is lessons 4-8. Users hit a difficulty spike or get bored repeating content they already know. If we detect prior knowledge and adapt pacing, we can save a meaningful chunk of week-1 churn.

Bet 3: Super conversion tied to learning milestones, not ads. Users convert when they feel invested in their progress — not when they're annoyed. We want to move the upgrade prompt from "after watching an ad" to "after completing a unit" or "at first streak milestone."

**For each bet, what does success look like? What signal tells you the bet is paying off?**

Bet 1 success signal: Day-30 retention moves from 18% to 28%. Streak recovery rate from 31% to 45%. Both numbers, not just one.

Bet 2 success signal: Drop-off rate in lessons 4-8 decreases by 30%. Week-1 lesson completion rate goes from 54% to 70%.

Bet 3 success signal: Free-to-paid conversion goes from 6.2% to 9%. CTR on the upgrade prompt goes up by 40%.

**What are you explicitly NOT doing in the next 6 months? (what have you ruled out, and why)**
- Replacing structured immersion or in-person classes for advanced learners — that's a different product.
- Building a live conversation or social network feature — too far from the core retention thesis.
- Expanding the content catalog to non-language subjects (math, music) — the core model isn't fully validated at scale yet, so it's premature.

---

## Part 3 — Your Constraints

### Product A Constraints

**What is your biggest resource constraint right now? (engineering capacity, budget, time, headcount)**
Engineering capacity. Growth engineering is shared with the monetization team and the discovery team. Realistically we get about 60% of one squad's bandwidth. That means we ship one major experiment per sprint, not three.

**What external factors could block your strategy? (market, regulation, dependencies, competitors)**
Push notification regulation. iOS has been tightening notification permissions and that's our primary re-engagement channel. If conversion-on-permission-prompt drops further, we lose the lever we rely on for streak recovery.

**What internal factors could block your strategy? (org politics, tech debt, team gaps)**
Data science prioritization. The streak-recovery test is one of three the team is supporting and we're not always first. Also there's tech debt on the notification scheduling layer that makes timing experiments slower than they should be.

---

## Part 4 — Your Role

**What is your title and actual scope of ownership?**
Senior PM, Retention & Monetization. I own the streak mechanics, re-engagement flows (notifications + email), the Super upgrade experience, and the paywall placement.

**What decisions do you own? What requires sign-off from others?**
I own: A/B test prioritization, streak mechanic changes, notification cadence and copy, paywall placement and upgrade flow design.
Sign-off needed: pricing changes (Director of Monetization), any change to how XP is calculated (Head of Learning Science), any visual change to the core lesson UI (Design Director).

**Who do you interface with most? (engineering, design, exec, sales, etc.)**
Growth engineering daily. Data science weekly. Marketing bi-weekly. Legal occasionally, mostly around notification compliance.

**What is your biggest challenge right now?**
Retention drops sharply between day 7 and day 30. Users survive the first week, feel momentum, then life happens, they miss a day, and they don't come back. We've shipped streak freezes and a basic repair flow but recovery is still only 31%. The hard part is I'm not sure if the problem is the mechanic design, the notification timing, or the emotional cost of losing a long streak. Each hypothesis points to a different solution and we're testing all three at once, which means our data is messy.

**Where do you spend most of your time currently?**
~40% on experimentation — designing, prioritizing, and reading A/B tests. ~25% in cross-functional meetings (engineering syncs, data science check-ins, marketing alignment). ~20% on roadmap and exec updates. ~15% on user research and qualitative signal.

**Where do you want to spend more time? Where do you want AI leverage?**
I want to spend more time on hypothesis design and synthesis — the front end of the experimentation loop where the leverage is highest. I want AI leverage on the back end: meeting notes, status updates, experiment summaries, weekly reviews. Anywhere I'm currently writing the same kind of doc twice a week.

**How do you prefer to operate? Pick 2: Urgency / Impact / Risk / Alignment / Strategic / Balanced**
Impact + Strategic. I want to optimize for what moves the metric long-term, not what's loudest this week.

**If running multiple products — how is your time split across them, roughly?**
N/A — single product.

*(Cross-product relationship questions live in Part 7 — answer them there if you run multiple products.)*

---

## Part 5 — Your Stakeholders

**Name your 3 most important stakeholders (people you need to align with or get decisions from):**

Stakeholder 1 — Sarah Chen, VP of Product
- Product relevance: Product A
- Their role in this product: Exec sponsor for the retention team; approves quarterly roadmap and resource allocation.
- What they care about most: Hitting the DAU target. She's been clear that 6.5M by Q3 is the bar that matters for the team's standing in the org.
- Their biggest concern about your current work: That we're not moving fast enough on the streak-recovery thesis. She thinks we should already have shipped two recovery experiments by now.
- What makes them hard to align: She prefers headline metrics and is allergic to nuance. Hard to explain why a 3-point lift on 7-day retention without movement on 30-day is still a learning, not a failure.

Stakeholder 2 — Marcus Liu, Head of Growth Engineering
- Product relevance: Product A
- Their role in this product: Owns the engineering capacity my experiments depend on.
- What they care about most: Experiment velocity and infrastructure reuse. He wants every test to build infra that the next test can use, not be a one-off.
- Their biggest concern about your current work: That we're proposing too many experiments and not designing them in a way that compounds. He's right.
- What makes them hard to align: He says yes verbally and pushes back later via priority lists. The actual alignment happens in his planning doc, not in our meetings.

Stakeholder 3 — Priya Iyer, Data Science Lead
- Product relevance: Product A
- Their role in this product: Owns the experimentation platform and the metric definitions. Her team reads results.
- What they care about most: Statistical rigor and clean experiment design. She'll block tests that don't have a clear primary metric and pre-registered guardrails.
- Their biggest concern about your current work: That we're testing three streak hypotheses at once and the results are getting confounded. She's been pushing for a stricter sequencing.
- What makes them hard to align: She prefers async written input over meetings. Aligning verbally rarely sticks; I need to document things into her experiment-design doc to make decisions hold.

---

## Part 6 — Your Users

### Product A Users

**Describe your primary user segment in detail:**
- Who they are (role, company type, context): Casual learners, mostly 25-40, mix of professional and personal motivations — a trip booked, a relationship, a vague "I should learn a language" pull. They are NOT advanced learners. They are people who have tried language apps before, often Duolingo specifically, and quit before day 30.
- Their job-to-be-done (what outcome they are trying to achieve): Build a daily language-learning habit that fits around the rest of their life, without it feeling like homework. They want to feel like they're making progress, not like they're being tested.
- Their biggest pain today: Friction at the moment of streak loss. They open the app intending to do the day's lesson, get interrupted by a kid or a meeting, miss the day. The next day the streak is gone and the emotional cost of restarting feels like "what was the point of the last 14 days." That's where they churn.
- What motivates them emotionally: Small visible wins. Green checkmarks. The streak number going up. Feeling like the kind of person who follows through on things. They are NOT motivated by leaderboards or social competition — that tends to backfire for this segment.
- Where & when they engage with your product (location, frequency, device, activity context — e.g., "In the lab daily, at a desktop PC, during live sessions with participants present"): Phone, in pockets of dead time — morning commute (~7:45-8:15), lunch break (~12:30-1:00), evening couch time (~9-10pm). Inconsistent timing day to day. They need something that fits around their life, not the other way around.

**Describe a secondary user segment if relevant:**
- Who they are: Streak purists. Longer-tenured users (200+ day streaks), often older skew (40-55), high LTV. Super Duolingo subscribers. Highly consistent — they have a fixed time each day and the app is part of their routine.
- Their job-to-be-done: Maintain the streak. The streak IS the goal for this segment — language learning is the byproduct, not the purpose. They use Streak Freeze proactively before travel.
- Their biggest pain: They don't have a product problem — they have a social one. They do their lesson alone and would love to know that someone they know is also learning. Mentions to friends have fallen flat.

---

## Part 7 — Your Portfolio *(complete only if running multiple products)*

*N/A — single product.*

---

## Part 8 — Your Team *(complete only if team_mode: lead AND you manage other PMs)*

*N/A — individual PM, not a team lead.*

---

## When You Are Done

This file is an EXAMPLE of how to fill `AI-SHIPR-Setup-Worksheet.md`. To set up your own AI-SHIPR:

1. Open `AI-SHIPR-Setup-Worksheet.md` (the empty template — not this file).
2. Fill in your own answers, using the depth and voice you see here as a guide.
3. Run `Populate-Strategy` and paste your filled Worksheet as input.
4. Review what Populate-Strategy writes (see `duolingo-example-output.md` for what to expect).

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

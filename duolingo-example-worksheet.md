# AI-SHIPR — Example: Duolingo

This file shows what a populated AI-SHIPR system looks like after completing the Setup Worksheet and running `Populate-Strategy`. Use it as a reference while filling in your own files.

**Duolingo** is the world's most downloaded language learning app. Users complete short, gamified lessons to learn a new language. The product runs on a freemium model — the core experience is free, with Duolingo Plus (Super) removing ads and adding offline access.

---

## S-Strategy/Vision.md

### Product in one sentence
Duolingo makes language learning free, effective, and addictive enough that people actually stick with it long enough to improve.

### Vision (2–5 lines)
Most people who want to learn a language never do — not because they lack motivation, but because they can't afford classes, can't find the time, and quit when it stops feeling fun. Duolingo's bet is that habit design beats curriculum design: if you show up every day for six months, you will learn. The streak, the XP, the leaderboard — these aren't decoration. They are the product. Over the next three years, Duolingo becomes the first language learning platform where the majority of users who reach a 100-day streak demonstrate measurable conversational ability — not just completion rates.

### What we will NOT do
- Replace structured immersion or in-person instruction for advanced learners
- Build a social network or live conversation matching feature in the near term
- Expand the content catalog to non-language subjects before the core learning model is fully validated at scale

---

## S-Strategy/KPIs.md

### North Star Metric
- Name: Daily Active Users (DAU) with a streak of 7+ days
- Definition: Number of users who complete at least one lesson per day and have done so for 7 consecutive days
- Current: 4.2M
- Target: 6.5M by end of Q3

### Supporting Metrics
1. Name: Day-30 retention
   - Definition: % of new users who are still active 30 days after signup
   - Current/Target: 18% → 28%

2. Name: Streak recovery rate
   - Definition: % of users who lose a streak and return within 48 hours
   - Current/Target: 31% → 45%

3. Name: Free-to-paid conversion
   - Definition: % of 30-day active users who upgrade to Super Duolingo
   - Current/Target: 6.2% → 9%

---

## S-Strategy/Strategic-Bets.md

### Bet 1 — Streak mechanics as the primary retention lever
- Why this matters: Users who maintain a 7-day streak are 4x more likely to reach day 30. The streak is not a vanity feature — it is the retention model. Every friction point that causes streak loss is a product failure, not a user failure.
- Who it serves: New users in their first 30 days; lapsed users returning after a break
- What success looks like: Day-30 retention improves from 18% to 28%; streak recovery rate reaches 45%
- Time horizon: Q2–Q3

### Bet 2 — Personalized lesson pacing reduces early drop-off
- Why this matters: The top drop-off point is lessons 4–8. Users hit a difficulty spike or repeat content they already know and disengage. Adaptive pacing — detecting what a user already knows and skipping ahead — removes the friction that kills early momentum.
- Who it serves: Users with prior language exposure who find the early lessons too slow
- What success looks like: Drop-off rate in lessons 4–8 decreases by 30%; average lesson completion rate in week 1 increases from 54% to 70%
- Time horizon: Q2

### Bet 3 — Super Duolingo conversion tied to learning milestones, not ads
- Why this matters: Users convert to paid when they feel invested in their progress — not when they are annoyed by ads. Surfacing the upgrade prompt at a meaningful moment (first streak milestone, first unit completion) will outperform the current ad-interruption model.
- Who it serves: Active free users who have completed at least one full unit
- What success looks like: Free-to-paid conversion increases from 6.2% to 9%; upgrade prompt click-through rate improves by 40%
- Time horizon: Q3

---

## R-Relationships/Me/PM-Profile.md

### My role in the team
- Responsibilities: Own the retention and monetization loop — streak mechanics, re-engagement flows, push notification strategy, and Super upgrade experience
- Decision ownership: A/B test prioritization, streak mechanic changes, notification cadence and copy, paywall placement and upgrade flow
- Interfaces with: Growth engineering (daily), data science (weekly), marketing (bi-weekly), legal for notification compliance (as needed)

### My biggest challenge right now
Retention drops sharply between day 7 and day 30. Users who survive the first week feel momentum — then life happens, they miss a day, lose their streak, and don't come back. We've shipped streak freezes and streak repair but the recovery rate is still only 31%. I'm not sure if the problem is the mechanic design, the notification timing, or the emotional cost of losing a long streak. Each hypothesis points to a different solution and we're testing all three at once, which means our data is messy.

### Where I spend most of my time
- ~40% experimentation — designing, prioritizing, and reading A/B tests
- ~30% cross-functional alignment — syncing with data science on signal reads and with engineering on sprint scope
- ~30% stakeholder communication — weekly growth reviews with VP, monthly board-ready metric updates

### Where I want leverage from AI-SHIPR
- Faster hypothesis discipline: I run a lot of tests but I'm not always honest with myself about what would actually falsify my assumption. I need a forcing function.
- Cleaner decision logs: When a test ends ambiguously, I make a call and move on. Six months later nobody remembers why. I want every close call documented with the reasoning.

### My operating preference
Data / Hypothesis

---

## Learning.md (sample entry)

**2025-11-12**
When a streak recovery rate test shows improvement in click-through but not in day-14 retention, the mechanic worked but the underlying motivation problem didn't. Users came back to save the streak — not because they wanted to learn. Flag this pattern: engagement metrics can mask retention problems. Always read the downstream metric before calling a test a win.

Pattern elevated to rule: A recovered streak that doesn't lead to a 7-day re-engagement window is a false positive. Measure re-engagement quality, not just re-engagement rate.

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

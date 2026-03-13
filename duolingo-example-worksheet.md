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

## S-Strategy/JTBD.md

*Generated by the `JTBD-Mapper` skill. Run after `Research-Synthesizer`, before defining Strategic Bets.*

### Core Job Statement

Maintain daily language learning practice in the gaps of an already full schedule — without losing the progress I have built when life gets in the way.

### Job Executor

A working adult (25–45) who wants to learn or maintain a foreign language but cannot commit to structured coursework. Completes sessions on commute, at lunch, or before bed. Measures success by whether they can say they are "actually learning" — not just opening an app.

### Job Context

Triggered when the user has chosen to learn a language but faces a recurring daily scheduling problem — fitting practice into days that are already overcommitted. Acute trigger: missing a day, feeling the streak is at risk, or hitting a difficulty spike that makes the session feel pointless.

### Job Dimensions

**Functional:**
Complete a short, meaningful practice session in under 10 minutes; resume cleanly after a break without losing context; know what to practice without having to decide.

**Emotional:**
Feel like they are genuinely improving — not just earning points; feel resilient when they miss a day rather than ashamed or defeated; feel the streak represents real progress, not just app-opening.

**Social:**
Be able to tell people they are "learning a language" without feeling like a fraud; demonstrate measurable improvement — even small — to others.

### Competing Alternatives

1. **Language classes / tutors** — Effective for learning; fails the job: too expensive, too scheduled, can't fit into the gaps of a workday.
2. **YouTube / podcasts** — Accessible; fails the job: passive consumption, no feedback loop, no way to gauge progress.
3. **Babbel / Rosetta Stone** — Similar format; fails the job: weaker habit mechanics, less addictive, higher price creates commitment anxiety.

### Top Unmet Needs

1. Know whether today's practice actually moved the needle — not just whether the session was completed.
2. Return after a gap without feeling like all progress is lost and having to restart.
3. Get practice that matches what they actually need today — not content they already know.

### Positioning Signal

Duolingo uniquely combines habit-design mastery (streaks, XP, social pressure) with zero-cost access — making it the only language learning product that competes credibly in the "dead time" slot at population scale.

### Confidence Level

High — grounded in published DAU behavioral data and VP-level growth review (Q3).

### Source Research

Q3 growth review data; streak analysis — 4.2M DAU with 7+ day streaks; streak recovery rate study (31%).

### Last Updated

2025-11-15

---

## S-Strategy/Opportunity-Tree.md

*Generated by the `Opportunity-Tree` skill. Runs after `JTBD-Mapper`. Feeds `H-Hypotheses/` and `I-Initiatives/`.*

# OST — Increase 7-day streak users from 4.2M to 6.5M by end of Q3

## Desired Outcome

Increase the number of users with an active 7-day streak from 4.2M to 6.5M by end of Q3.
(Source: S-Strategy/KPIs.md — North Star Metric)

---

### Opportunity 1: Users experience losing a streak as permanent failure — not a recoverable setback

**Evidence:** 31% streak recovery rate after a miss. Push notification data shows 54% open rate but only 31% return-to-app action. User interview signal: "Once I lose it, what's the point?"
**Impact:** High — streak loss is the dominant exit trigger in the Day 7→30 window.
**Confidence:** High — directly measurable; pattern validated across 3 cohorts.
**Priority Score:** 1 (High/High)

**Candidate Solutions:**
- A: 48-hour streak recovery window — active push notification reframes missing one day as recoverable; user can "repair" streak for 48h at no cost.
- B: "Streak reset ceremony" — remove the streak counter on miss day; replace with a "fresh start" moment that reframes loss as a new beginning rather than punishment.

**Riskiest Assumption (Solution A):** Users who receive the notification will choose to act on it — not dismiss it as another reminder they feel guilty ignoring.
**Riskiest Assumption (Solution B):** A reframed emotional experience of streak loss is achievable through design without undermining the streak's core motivational value for users who have not yet lost one.

---

### Opportunity 2: Users in lessons 4–8 hit content that does not match their existing knowledge level

**Evidence:** Lessons 4–8 are the top drop-off zone. Average completion rate week 1: 54%. Users with prior language exposure disproportionately represented in early exits.
**Impact:** High — directly depresses week-1 retention, which feeds the 30-day retention gap.
**Confidence:** Medium — drop-off data is strong; root cause (content mismatch vs. difficulty spike vs. motivation loss) not fully confirmed.
**Priority Score:** 2 (High/Medium)

**Candidate Solutions:**
- A: Placement test at signup — detect what the user already knows and skip to the right level before the first lesson.
- B: In-lesson adaptive branching — detect mastery signal mid-lesson; offer a "skip ahead" prompt without breaking the flow.

**Riskiest Assumption (Solution A):** Users will complete a placement test at signup without increasing drop-off at that exact step — the moment of highest churn risk in any onboarding flow.
**Riskiest Assumption (Solution B):** We can detect a mastery signal accurately enough mid-lesson that skipping ahead feels smart rather than confusing or arbitrary.

---

### Opportunity 3: Users cannot feel whether they are improving day to day

**Evidence:** Learning.md entry (2025-11-12): engagement metrics can mask retention problems — users who came back to save a streak, not because they wanted to learn, showed strong click-through but weak day-14 retention.
**Impact:** Medium — affects long-term retention beyond 30 days; less acute than Opportunities 1 and 2.
**Confidence:** Medium — signal is real, but size of addressable segment within the funnel is unconfirmed.
**Priority Score:** 3 (Medium/Medium)

**Candidate Solutions:**
- A: "Progress pulse" — weekly insight showing what the user can now say, read, or understand vs. 7 days ago. Framed as ability, not activity.

**Riskiest Assumption (Solution A):** Users care enough about longitudinal progress data to read it weekly — and it functions as a retention driver rather than a feature no one opens after the first time.

---

## Opportunity Ranking

| Rank | Opportunity | Impact | Confidence | Priority |
|------|-------------|--------|------------|----------|
| 1 | Streak loss feels like permanent failure | High | High | 1 |
| 2 | Content mismatch in lessons 4–8 | High | Medium | 2 |
| 3 | Users can't feel daily improvement | Medium | Medium | 3 |

## Recommended Focus

**Opportunity 1 — Streak recovery experience.**
Highest data confidence. Directly addresses the Day 7→30 retention gap. Intervention surface (notification + emotional reframe) is buildable within current sprint capacity. Moves the primary KPI (7-day streak users) faster than the alternatives.

## Gaps Flagged

Opportunity 3 (progress visibility) is under-researched at the individual user level. Flag for qualitative discovery before committing to a solution — progress perception may be segment-dependent (language level, prior exposure, session length).

## What Happens Next

**Top opportunity → H-Hypotheses/:**
We believe Day-30 retention will improve if users who miss a day receive a 48-hour streak recovery window with an active push notification that reframes the miss as recoverable — and that recovery rate increases from 31% to 45%.

**Top solution → I-Initiatives/ (when hypothesis validated):**
Initiative: Streak Recovery Window — linked to Bet 1 (Streak mechanics as the primary retention lever).

**Next experiment → P-Proof/:**
Run `Experiment-Designer` on riskiest assumption: "Users who receive the recovery notification will act on it — not dismiss it."

## Last Updated

2025-11-15

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

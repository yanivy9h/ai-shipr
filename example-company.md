# AI-SHIPR — Example: CourtIQ

This file shows what a populated AI-SHIPR system looks like after completing the Setup Worksheet and running `Populate-Strategy`. Use it as a reference while filling in your own files.

**CourtIQ** is a fictional app for youth basketball players (ages 10–18) to watch video drills and track their training progress. Coaches can assign drills and monitor player development.

---

## S-Strategy/Vision.md

### Product in one sentence
CourtIQ gives young basketball players access to professional drill videos they can train with on their own and track their improvement over time.

### Vision (2–5 lines)
Most youth players only get better during team practice — 2 hours a week with a coach watching. The other 22 hours are unstructured. CourtIQ turns solo practice into a structured training session: watch a drill, run it in your driveway, log your reps. Over 3 years, CourtIQ becomes the training platform that youth coaches assign and families subscribe to — the gap-filler between team sessions that actually moves a player's game.

### What we will NOT do
- Build live coaching or real-time video feedback (that's a different product)
- Serve professional or college players — the training model and content are built for youth
- Expand to other sports before basketball is solidly established

---

## S-Strategy/KPIs.md

### North Star Metric
- Name: Weekly Drill Completions (WDC)
- Definition: Number of drills logged as completed by active players in a given week
- Current: 3,200 WDC
- Target: 8,000 WDC by end of Q3

### Supporting Metrics
1. Name: 30-day player retention
   - Definition: % of players who log at least one drill in week 4 after signup
   - Current/Target: 34% → 55%
2. Name: Drill completion rate
   - Definition: % of started drills that get logged as completed (not just watched)
   - Current/Target: 41% → 65%
3. Name: Coach adoption rate
   - Definition: % of subscribed teams where a coach has assigned at least one drill
   - Current/Target: 22% → 50%

---

## S-Strategy/Strategic-Bets.md

### Bet 1 — Short-form drill videos built for phones
- Why this matters: Youth players watch on their phone in their driveway or gym. If a drill video is longer than 90 seconds or hard to follow on a small screen, they skip it. The content format is the product.
- Who it serves: Youth players aged 10–16 practicing solo
- What success looks like: Drill completion rate exceeds 65%; avg video watch-through rate above 80%
- Time horizon: Q2

### Bet 2 — Progress tracking that shows visible improvement
- Why this matters: Players quit apps when they can't see themselves getting better. A streak, a rep count, a "you've done this drill 8 times" signal is enough to create habit. Without it, the app is just YouTube.
- Who it serves: Players aged 13–18 who train consistently
- What success looks like: 30-day retention improves from 34% to 55%; avg sessions per active player per week increases from 1.4 to 3
- Time horizon: Q3

### Bet 3 — Coach assignment as the growth channel
- Why this matters: Families don't discover training apps — coaches do. If a coach assigns CourtIQ drills as homework, every player on the roster becomes a subscriber. Coach adoption is the distribution bet.
- Who it serves: Youth coaches running travel or academy programs (12–20 players per team)
- What success looks like: Coach adoption rate reaches 50%; coach-referred players have 2x the 30-day retention of organic signups
- Time horizon: Q3–Q4

---

## R-Relationships/Me/PM-Profile.md

### My role in the team
- Responsibilities: Own product end-to-end — content strategy, player experience, coach tools, and subscription growth
- Decision ownership: Feature scope, content format decisions, pricing experiments, kill/continue on growth bets
- Interfaces with: CEO/founder (weekly), 4 engineers (daily), 1 designer (daily), youth coaches and academy directors (biweekly discovery calls)

### My biggest challenge right now
Retention falls off a cliff after the first week. Players sign up, watch 3 or 4 drills, then disappear. We don't have enough data yet to know if it's the content, the habit loop, or just that parents signed up and the kids never opened the app. Every sprint decision right now is a bet on which of those three problems is the real one.

### Where I spend most of my time
- ~35% content and coach partnerships (sourcing drill creators, onboarding coaches to the assignment tool)
- ~35% discovery (player and parent interviews, usage data review)
- ~30% sprint management and prioritization decisions

### Where I want leverage from AI-SHIPR
- Faster decisions because: I'm making judgment calls every week on which retention problem to solve first, and I don't have a decision framework that forces me to be honest about what I know vs. what I'm assuming.
- Better alignment because: The founder wants feature updates, coaches want content updates, and investors want growth metrics — I need one structured update that speaks to all three.

### My operating preference
Impact / Risk

---

## Learning.md (sample entry)

**2024-03-04**
When running `Hypothesis-Builder` on an engagement problem, always test the habit loop hypothesis before the content quality hypothesis. Content is easier to fix — but if the habit loop is broken, better content won't save retention.

Pattern elevated to rule: Diagnose the retention layer before investing in the content layer. A player who doesn't come back on day 8 usually isn't a content problem.

---

> **© Yaniv Yaakubovich**
> Product Management & AI Consulting: [www.verve-pm.com](www.verve-pm.com)

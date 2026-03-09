# Meeting Log

## Meeting — 2026-02-28 — Retention Review with CEO

- Participants: Omer Levi (CEO), Dana Avraham (PM), Ron Mizrahi (Eng Lead)
- Initiative(s): INI-002 (Progress tracking — visible improvement)
- Decisions:
  - Agreed to prioritise progress tracking (INI-002) over coach assignment (INI-003) for Q1. Coach track moves to Q2 unless INI-002 stalls or gets blocked.
  - Short-form videos (INI-001) stays in sprint — already committed, not up for debate.
- Objections raised:
  - Ron flagged that the full progress screen (drill history + improvement graph) requires a new data aggregation layer — estimated 3-sprint effort, not 1.
  - Omer pushed back on the 3-sprint estimate: "We need something live before the Series A conversation."
- Action items:
  - Dana to scope a "streaks-only" minimal progress view that could ship in 1 sprint as a faster signal.
  - Ron to provide separate effort estimates for (a) streaks only, (b) drill history only, (c) full progress screen. Due by 2026-03-04.
  - Dana to decide by 2026-03-07 which version goes into the next sprint.
- Open loops:
  - Should the parent progress dashboard be free or premium-only? Omer wants it premium (revenue signal). Yael thinks it should be free for activation. Not resolved. Decision owner: Dana, by 2026-03-07.
  - Is parent visibility a feature of INI-002 or a separate initiative? TBD once scope is clearer.

---

## Meeting — 2026-03-03 — EXP-001 Day-7 Read

- Participants: Dana Avraham, Yael Shapiro (PMM), Ron Mizrahi (Eng Lead)
- Initiative(s): INI-001 — Short-form drill videos
- Context: First early-read checkpoint for EXP-001, the A/B test running since 2026-02-24. Day-7 data reviewed with ~240 users per arm.
- Signal:
  - Treatment (short-form) completion rate: 51%
  - Control (original) completion rate: 38%
  - Lift: +34% — directionally positive, below the 40% success threshold at this sample size
  - Average session length (treatment): 3.8 min vs. 11.4 min (control) — format change working
- Objections raised:
  - Yael pushed to announce the short-form feature publicly and send a launch email to the user base. "The signal is clear enough — why wait?"
  - Dana pushed back: 240 users/arm is below the 300 required for statistical confidence. Day-14 read is the decision gate, not day-7.
  - Ron flagged that Shooting and Finishing drills have not yet been converted to short-form — treatment arm is Ball Handling Foundation only. Cross-skill signal won't exist until the sprint after next.
- Decisions:
  - Hold public announcement until the day-14 read (2026-03-10). No launch email before then.
  - Yael to prepare two launch copy versions in parallel: (a) strong-signal version for ≥+40% lift, (b) soft-launch version for +15–40% lift.
- Action items:
  - Yael to have both copy versions ready by 2026-03-09.
  - Dana and Yael to align on exact announcement threshold by 2026-03-09.
  - Ron to confirm pipeline for Shooting Foundation conversion is ready to start sprint after next.
- Open loops:
  - At what exact lift threshold does Yael send the announcement? +40%? +30%? Not resolved. Decision owner: Dana, by 2026-03-09.
  - If day-14 lift is between +15–40%, does that count as a win? Or do we extend the test?

---

## Meeting — 2026-03-04 — INI-002 Scope Decision

- Participants: Dana Avraham, Ron Mizrahi (Eng Lead), Tamar Gold (Head of Product)
- Initiative(s): INI-002 — Progress tracking — visible improvement
- Context: Ron's effort estimates were due today (action item from the 2026-02-28 meeting). Goal: decide which version of the progress screen enters the next sprint.
- Ron's estimates (presented):
  - (a) Streaks-only — streak counter + days-since-last-practice: **1 sprint**
  - (b) Drill history only — list of completed drills, no graph: **2 sprints**
  - (c) Full progress screen — drill history + improvement graph + parent dashboard: **3–4 sprints**
- Objections raised:
  - Tamar: Streak counter alone is not a meaningful progress signal. It shows activity, not improvement. Risk: shipping "streaks-only" sets user expectations for a lightweight feature, then we struggle to reframe it when the real thing ships two sprints later. "We're potentially poisoning the concept before it lands."
  - Ron (supporting streaks-only): The data infrastructure for streaks already exists — `streakDays` is tracked per user in the DB. It's a frontend-only sprint. Drill history requires a new query layer.
- Decisions:
  - Ship streaks-only in the next sprint. Closes the Series A pressure signal. Dana will frame it as "first layer of the progress system" in comms to avoid setting wrong expectations.
  - Drill history (option b) enters the sprint after next.
  - Full progress screen (option c) deferred until post-Series A.
- Action items:
  - Dana to write the streaks-only spec by 2026-03-07.
  - Dana to send async Slack note to Omer with the decision + Series A framing by EOD 2026-03-04.
  - Ron to confirm frontend work scope for streaks by 2026-03-06.
- Open loops:
  - Parent progress dashboard (free vs. premium) — still unresolved. Dana's decision deadline is 2026-03-07. Will circulate async before then.
  - Does the streaks screen live on the player home tab or a separate "progress" tab? UX TBD — Dana to decide in spec.

---

## Meeting — 2026-03-05 — INI-003 Coach Strategy Alignment

- Participants: Dana Avraham, Omer Levi (CEO), Tamar Gold (Head of Product)
- Initiative(s): INI-003 — Coach assignment as growth channel
- Context: Framing the go-to-market model for the coach feature before spec work begins. Decision needed: freemium (coaches get free accounts with no gate) vs. invite-only beta (small cohort, manually onboarded).
- Arguments made:
  - Omer (freemium): "Coaches are our distribution channel. Every coach who adopts CourtIQ brings 8–12 players. We should make it as frictionless as possible. An invite-only gate will slow adoption and delay the signal we need."
  - Tamar (invite-only): "If 5 coaches have a rough first experience, they'll talk to each other at tournaments. We'll tank the word-of-mouth channel before it starts. The feature isn't built yet — we don't know what rough edges will exist. Better to get it right with a small group first."
- Decisions:
  - Invite-only beta: up to 5 coaches, manually onboarded by Dana. No self-serve signup for coaches in v1.
  - Hard activation gate: coach must send ≥3 drill invitations to players within their first 2 weeks. Coaches who don't hit this gate get a check-in call from Dana before week 3.
  - Success threshold to open freemium: if ≥70% of invited players activate (complete ≥1 assigned drill) within 30 days of invitation → open coach accounts to freemium at end of Q2 2026.
- Action items:
  - Dana to draft coach screener criteria by 2026-03-09 (coaching experience, tech comfort level, player roster size ≥8, active season).
  - Omer to identify 3 coach candidates from his network by 2026-03-09.
  - Dana to schedule a 30-min discovery call with at least 1 candidate before the spec is written.
- Open loops:
  - Who selects the final 5 coaches? Omer wants network picks. Dana wants screener-first. Not resolved — both will bring candidates; Dana has final say on fit.
  - How do coaches discover CourtIQ before the invite-only program opens? Inbound only, or does Yael run a teaser campaign? Not discussed — carry to next PMM sync.

---

## Meeting — 2026-03-09 — INI-001 Pre-Read-14 CEO Sync

- Participants: Dana Avraham, Omer Levi (CEO)
- Initiative(s): INI-001 — Short-form drill videos for mobile
- Context: Day-14 read on EXP-001 is scheduled for 2026-03-10. This sync is to brief Omer on the day-7 signal, align on the decision threshold, and get ahead of any Series A narrative questions before the results land.
- Agenda:
  1. Day-7 signal recap: +34% completion lift (51% vs 38%), session length 3.8 min vs 11.4 min — format change working
  2. Decision gate for day-14: ≥+40% lift → full rollout + public announcement; +15–40% → soft launch; <+15% → extend test
  3. Series A framing: if signal holds, short-form video completion rate becomes a WDC metric in the investor deck
  4. Open question for Omer: approval needed on announcement timing — does he want to be the one to post the launch announcement on social?
- What Omer needs going in: confirmation that the initiative is on track and that there's a clear number to watch on March 10. No ambiguity on what "success" means.
- Prep for Dana: Lead with the number (+34%), show the session length drop as proof of concept, frame day-14 as the real gate. Do not get pulled into feature details.

---

> **© Yaniv Yaakubovich**
> Product Management & AI Consulting: [www.verve-pm.com](www.verve-pm.com)

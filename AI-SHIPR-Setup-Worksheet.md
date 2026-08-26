# AI-SHIPR Setup Worksheet

Answer in plain language. No formatting required. No perfect answers.
The Populate Strategy prompt will convert your answers into structured files.

Set aside 30 minutes for a single product. Set aside 45-60 minutes for multiple products.
Do not skip questions — blank answers produce weak agent context.

---

## Before You Start — Setup Mode

Answer both questions. They are independent.

**Question 1 — Products: Are you setting up for one product or multiple products?**
Pick one: Single product / Multiple products

*Single product: fill Product A sections in Parts 1-3, skip Part 7.*
*Multiple products: fill one product section per product in Parts 1-3, complete Part 7 (Portfolio).*

---

**Question 2 — Team: does anyone else read product context that you maintain?**
Pick one: Solo PM / PM on a team / Team lead

*Solo PM: nobody maintains a shared org layer for you, and nobody reads one from you. Fill Parts 1-6, skip Part 8.*
*PM on a team: someone above you maintains a shared org layer that you read from. Fill Parts 1-6, skip Part 8.*
*Team lead: you maintain the shared org layer that other people read. Fill all parts including Part 8.*

**"Team lead" is about who reads your context, not head count.** It is the only option that writes a `shared/` folder for other instances to read, so pick it if anyone else needs the vision, strategy, bets and constraints you maintain. Six PMs, three engineering teams, or one designer working alongside you all count.

Leading engineering teams rather than PMs, or working with a designer, researcher or analyst who needs your context? That shape has its own install guide, including why you will want two folders rather than one: **verve-pm.com/ai-shipr-resources/lead-without-pms/**

---

### Setting up a whole team? Read this before anyone fills anything

**One worksheet per person. Each person answers about their own scope. Nobody fills it in on behalf of anyone else.**

This is not etiquette, it is how the machinery works. Populate-Strategy turns a worksheet into *that person's* files — one of them is literally `R-Relationships/Me/PM-Profile.md`, holding their biggest challenge, where their time goes, and what they optimise for. Every agent reads it before responding. Install one person's answers on five machines and all five instances behave as though they are that person.

| | The lead | Everyone else |
|---|---|---|
| **Question 2** | Team lead | PM on a team |
| **Parts 1-3** | Every product at portfolio altitude; org-level constraints | Their own product or surface, in depth |
| **Parts 4-5** | Their own role and stakeholders | Their own role and stakeholders |
| **Part 6** | Skip. Personas belong to whoever owns the product | Theirs, in depth. The highest-value part they fill |
| **Part 7** | Yes. This becomes the org layer | Skip, unless they run two or more products |
| **Part 8** | Yes. Only the lead fills this | Skip |
| **Part 9** | Yes, org-level tool stack | Yes, only where their tools differ from the org's |

"Everyone else" is not only product managers. A designer, researcher, data analyst or product marketer who needs the same product context gets the same install and fills the same column, with the strategy parts coming down from the lead's shared layer instead of being authored locally.

**Order matters: the lead goes first.** Their worksheet produces the org layer in `shared/`. Everyone else then reads that layer *before* filling their own worksheet, so their strategy comes out already aligned instead of needing reconciliation afterwards, and reconciliation after the fact is a rewrite, not a review.

Full rollout sequence, including who publishes what back up and what to do when a PM changes product or leaves: **verve-pm.com/ai-shipr-resources/team-rollout/**
Where the shared files physically live (Drive, SharePoint, Confluence, Notion): **verve-pm.com/ai-shipr-resources/team-collab/**

---

Populate-Strategy will read both answers and automatically set `product_mode` and `team_mode` in Settings.md.

---

## Part 1 — Your Product(s)

*Single product: fill Product A only.*
*Multiple products: fill one section per product. Add more sections if needed.*

*User details (who, JTBD, pain, context) live in Part 6. This section is about the product itself.*

### Product A — [Product Name]

**What does this product do? (1-2 sentences, as if explaining to a new hire)**


**How does your company make money from this product?**


**Name 1-2 competitors or alternatives. What do users choose instead of you, and why?**


---

### Product B — [Product Name] *(skip if single product)*

**What does this product do? (1-2 sentences, as if explaining to a new hire)**


**How does your company make money from this product?**


**Name 1-2 competitors or alternatives. What do users choose instead of you, and why?**


---

## Part 2 — Your Strategy

*Complete one section per product. Answer only the sub-questions that match your selected stage.*

### Product A Strategy

**What stage is this product at right now?**
Pick one: Discovery / Definition / Building / Launched / Iterating

Discovery:
- What triggered this product idea — customer conversation, market signal, exec directive, or internal hypothesis?
- What do you still need to learn before you can commit to building?
- Have you spoken to any target users yet? If yes, how many and what did you learn?

Definition:
- What has been validated from discovery — what do you now know is true?
- What is the biggest open question still blocking your requirements?
- Do you have a PRD or are you working toward one?

Building:
- What is the current sprint goal?
- What has shipped so far, if anything?
- What is the biggest risk to the current build timeline?

Launched:
- How long has it been live?
- What does your current metric data tell you?
- Are you in growth mode or fixing mode?

Iterating:
- What did the data show that changed your direction?
- What hypothesis are you currently testing?

**What is your north star metric? (the single number that best captures product health)**


**How are you currently tracking on that metric? (current value, if known)**


**Where do you want that metric to be in 6 months?**


**List 2-3 supporting metrics you track regularly:**
1.
2.
3.

**What are the 1-3 big bets you are making in the next 6 months?**
A bet is a strategic choice with meaningful uncertainty attached — not a roadmap item.

Bet 1:

Bet 2:

Bet 3:

**For each bet, what does success look like? What signal tells you the bet is paying off?**

Bet 1 success signal:

Bet 2 success signal:

Bet 3 success signal:

**What are you explicitly NOT doing in the next 6 months? (what have you ruled out, and why)**


---

### Product B Strategy *(skip if single product)*

**What stage is this product at right now?**
Pick one: Discovery / Definition / Building / Launched / Iterating

Discovery:
- What triggered this product idea?
- What do you still need to learn before you can commit to building?
- Have you spoken to any target users yet? If yes, how many and what did you learn?

Definition:
- What has been validated from discovery?
- What is the biggest open question still blocking your requirements?
- Do you have a PRD or are you working toward one?

Building:
- What is the current sprint goal?
- What has shipped so far, if anything?
- What is the biggest risk to the current build timeline?

Launched:
- How long has it been live?
- What does your current metric data tell you?
- Are you in growth mode or fixing mode?

Iterating:
- What did the data show that changed your direction?
- What hypothesis are you currently testing?

**What is your north star metric?**


**How are you currently tracking on that metric?**


**Where do you want that metric to be in 6 months?**


**List 2-3 supporting metrics you track regularly:**
1.
2.
3.

**What are the 1-3 big bets you are making in the next 6 months?**

Bet 1:

Bet 2:

Bet 3:

**For each bet, what does success look like?**

Bet 1 success signal:

Bet 2 success signal:

Bet 3 success signal:

**What are you explicitly NOT doing in the next 6 months?**


---

## Part 3 — Your Constraints

*Complete one section per product.*

### Product A Constraints

**What is your biggest resource constraint right now? (engineering capacity, budget, time, headcount)**


**What external factors could block your strategy? (market, regulation, dependencies, competitors)**


**What internal factors could block your strategy? (org politics, tech debt, team gaps)**


---

### Product B Constraints *(skip if single product)*

**What is your biggest resource constraint right now?**


**What external factors could block your strategy?**


**What internal factors could block your strategy?**


---

## Part 4 — Your Role

**What is your title and actual scope of ownership?**


**What decisions do you own? What requires sign-off from others?**


**Who do you interface with most? (engineering, design, exec, sales, etc.)**


**What is your biggest challenge right now?**


**Where do you spend most of your time currently?**


**Where do you want to spend more time? Where do you want AI leverage?**


**How do you prefer to operate? Pick 2: Urgency / Impact / Risk / Alignment / Strategic / Balanced**


**If running multiple products — how is your time split across them, roughly?**
(e.g., 60% Product A, 40% Product B. Leave blank if single product.)

*(Cross-product relationship questions live in Part 7 — answer them there if you run multiple products.)*

---

## Part 5 — Your Stakeholders

**Name your 3 most important stakeholders (people you need to align with or get decisions from):**

*If running multiple products: note which product each stakeholder primarily relates to, or mark as "cross-product" if they span both.*

Stakeholder 1 — Name, role:
- Product relevance: (Product A / Product B / Cross-product)
- Their role in this product: (e.g., exec sponsor / approves roadmap / domain expert)
- What they care about most:
- Their biggest concern about your current work:
- What makes them hard to align:

Stakeholder 2 — Name, role:
- Product relevance: (Product A / Product B / Cross-product)
- Their role in this product:
- What they care about most:
- Their biggest concern about your current work:
- What makes them hard to align:

Stakeholder 3 — Name, role:
- Product relevance: (Product A / Product B / Cross-product)
- Their role in this product:
- What they care about most:
- Their biggest concern about your current work:
- What makes them hard to align:

---

## Part 6 — Your Users

*Complete one section per product.*

### Product A Users

**Describe your primary user segment in detail:**
- Who they are (role, company type, context):
- Their job-to-be-done (what outcome they are trying to achieve):
- Their biggest pain today:
- What motivates them emotionally:
- Where & when they engage with your product (location, frequency, device, activity context — e.g., "In the lab daily, at a desktop PC, during live sessions with participants present"):

**Describe a secondary user segment if relevant:**
- Who they are:
- Their job-to-be-done:
- Their biggest pain:

---

### Product B Users *(skip if single product)*

**Describe your primary user segment in detail:**
- Who they are (role, company type, context):
- Their job-to-be-done:
- Their biggest pain today:
- What motivates them emotionally:
- Where & when they engage with your product (location, frequency, device, activity context):

**Describe a secondary user segment if relevant:**
- Who they are:
- Their job-to-be-done:
- Their biggest pain:

---

## Part 7 — Your Portfolio *(complete only if running multiple products)*

*This section feeds the Portfolio-Strategist agent and cross-product `/today` briefings.*

**What is the relationship between your products?**
(Same user base / same tech stack / shared budget / one feeds the other / completely independent)


**Do they share any stakeholders, budget, or engineering resources?**


**What is your biggest cross-product tension right now?**
(e.g., one product is pulling more attention than it deserves, or a shared resource is bottlenecking both)


**If you had to pick one product to focus on this quarter, which would it be — and why?**
(This reveals your unstated priorities. It is important context for Portfolio-Strategist.)


**Are there any initiatives or bets that span both products?**


**How do you currently switch context between products?**
(e.g., separate sessions, separate days, ad hoc. This helps the system reflect your actual rhythm.)


---

---

## Part 8 — Your Team *(complete only if `team_mode: lead`)*

*This section is for anyone who maintains the shared org layer that other people read: a VP over a team of PMs, or a Director over engineering teams with a designer, researcher or analyst alongside.*

*Read "PM" below as "whoever owns the work". That may be a product manager, an engineering squad, or a non-PM collaborator. Answer about the people you actually have, not the ones the wording implies.*

*If you are one person managing multiple products and nobody reads context from you, use Part 7 (Portfolio) instead and skip this section.*

**What is your team structure? (who or which teams sit under you, and what does each own)**


**What bet does each of them own, or support? (name the person or team, and the bet)**


**What is the biggest challenge you face as a lead right now?**


**Who needs the most support right now, and why?**


**What is the biggest gap in your team: skill, capacity, or coverage?**


**Are there any open headcount needs? If so, what bet would the new hire own?**


**How do you prefer to run 1:1s? (what structure works best for you)**


---

## Part 9 — Your Tools

*One line each, factual, no thinking required. Leave blank what you don't use. These answers configure the Integrations block in Settings.md and produce your personal connection checklist (see `Connections.md`) — nothing here blocks setup, and no IT approval is needed to finish this worksheet.*

**Where does your team keep code? (GitHub, GitLab, Bitbucket, other / none)**


**Where do tickets live? (Jira, Linear, Azure DevOps, other / none)**


**Where do product docs and PRDs live? (Notion, Confluence, Google Drive, SharePoint, other)**


**Where do product analytics live? (Amplitude, Mixpanel, a warehouse like Snowflake/BigQuery, a BI tool, other / none yet)**


**Where does user research live? (Dovetail, Qualtrics, a Drive folder, other / none yet)**


**What records and transcribes your meetings? (Zoom, Fireflies, tl;dv, Granola, manual notes)**


**Does your team use Slack, Teams, or neither for product discussions?**


---

## When You Are Done

Run the `Populate-Strategy.md` prompt and paste this entire worksheet as input.

**Single product** — it will generate ready-to-file content for:
- `S-Strategy/Vision.md`
- `S-Strategy/Product.md`
- `S-Strategy/KPIs.md`
- `S-Strategy/Strategic-Bets.md`
- `S-Strategy/Constraints.md`
- `R-Relationships/Me/PM-Profile.md`
- `R-Relationships/Users/Personas.md`
- `R-Relationships/Stakeholders/Stakeholders.md`

**Multiple products** — it will also generate:
- `shared/Constraints.md` ← shared capacity, budget, cross-product rules
- `shared/Stakeholders.md` ← stakeholders that span both products
- `shared/Portfolio-Roadmap.md` ← draft cross-product roadmap (refine with Portfolio-Strategist)
- One full strategy layer per product in its own subfolder (`product-a/S-Strategy/`, `product-b/S-Strategy/`, etc.)

**Team lead** — it will also generate the org layer your PMs read at the start of every session:
- `shared/Vision.md`
- `shared/Strategy.md`
- `shared/OKRs.md` ← draft, refine with `OKR-Partner`
- `shared/Strategic-Bets.md`
- `shared/Portfolio-Roadmap.md`
- `shared/Constraints.md`
- `R-Relationships/Team/Roster.md`

**PM on a team** — it will read `../vp/shared/` first and flag anything in your answers that conflicts with the org layer, before generating your files. It never writes to `shared/`; only the lead does.

Populate-Strategy will also update `Settings.md` automatically:
- Sets `product_mode: single` or `product_mode: multi` based on Question 1
- Sets `team_mode: solo`, `team_mode: individual`, or `team_mode: lead` based on Question 2
- Sets the `Integrations` block and `meeting_tool` from Part 9, and produces your personal connection checklist from `Connections.md` — ordered by your product stage, with the compliance question to bring to IT for each

Review each output before filing. Correct anything that misses your intent.
Then run `Structural-Integrity-Auditor` on the Strategy layer before moving to Day 2.

---

> Part of the **AI-SHIPR** product management system
> Built by **Yaniv Yaakubovich**
> Product Management & AI Consulting: www.verve-pm.com

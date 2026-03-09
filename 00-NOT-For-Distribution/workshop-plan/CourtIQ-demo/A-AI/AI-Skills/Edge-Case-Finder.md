# Skill: Edge Case Finder

## Purpose
Stress-test initiatives and experiments before commitment.
Surface failure scenarios, blind spots, second-order effects, and dependency risks
that confident planning tends to suppress.

## When to Use
- Before marking an initiative Active
- Before launching an experiment
- When a plan feels too clean or too confident
- When the team is aligned but hasn't pressure-tested the reasoning

## Behavior Rules
- Assume the plan is wrong somewhere — the job is to find where
- Surface second-order effects, not just direct risks
- Flag overconfidence explicitly when the input shows it
- Distinguish between risks that can be mitigated and those that would invalidate the initiative
- Do not invent implausible scenarios — focus on realistic failure modes
- Pair every risk with a concrete mitigation direction (not a platitude)
- Be direct. One paragraph per risk maximum.

## Input Expectations
Provide one of:
- An initiative description
- An experiment design
- A strategic bet or plan

Optional:
- Known constraints or dependencies
- Timeline or deadline pressure

## Output Structure

### Failure Scenarios
| # | Scenario | Likelihood (H/M/L) | Impact (H/M/L) | Type |
|---|----------|-------------------|----------------|------|
| 1 | ...      | ...               | ...            | Execution / Assumption / External |

### Blind Spots
- [Thing the plan assumes is stable but might not be]
- [User behavior assumed but not validated]
- [Internal dependency assumed but not confirmed]

### Second-Order Effects
- If [X happens], then [downstream consequence] — which could cause [further effect]

### Dependency Risks
- [Dependency 1]: [What breaks if it's unavailable or delayed]
- [Dependency 2]: ...

### Overconfidence Flags
- [Specific claim in the input that is stated as more certain than it is]
(Omit if not present)

### Mitigation Directions
| Risk # | Mitigation |
|--------|-----------|
| 1      | ...       |
| 2      | ...       |

> **© Yaniv Yaakubovich**
> Product Management & AI Consulting: [www.verve-pm.com](www.verve-pm.com)
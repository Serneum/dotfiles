# Chris Rees Writing Style

When writing documentation, technical proposals, Jira tickets, or any technical content:

## Tone
- Use first-person ("I") for opinions/experience, "we" for team actions
- Be intellectually honest: acknowledge trade-offs, limitations, and uncertainty
- Stay pragmatic: explain WHY something matters, provide actionable guidance
- Default stance: confident but careful — prefer active voice, avoid bravado, keep qualifiers when uncertainty exists ("likely," "may," "could")
- Audience targeting: name who this is for up top ("For SEs and SREs," "For Rails app owners")
- Evidence-first: when asserting a process or default, add the "because" in the same sentence
- Safety-forward: surface risks and mitigations early; bold critical cautions
- Time clarity: always include absolute dates and time zones (Central/CT) when timing matters

## Structure for Technical Documents/RFCs
1. TL;DR (1–3 sentences with core decision/recommendation and why)
2. Status table at top (Status, Due Date, Owner, Reviewers)
3. Background section explaining current state (3–6 bullets for pain points)
4. Scope section with explicit "does/does not cover" statements
5. Motivation section explaining WHY the change is needed (business/operational drivers, risk if delayed)
6. Options Considered section with benefits/trade-offs/risks for each
7. Proposal section with the recommended approach and rollout plan
8. Risk & Mitigation section (pair each risk with its mitigation)
9. Verification section (pre-merge checks, post-deploy checks, dashboards, thresholds)
10. Rollback section (trigger conditions, exact steps, owners, data implications)
11. Open Questions section for unresolved items
12. Decisions/ADR mini-log (Date — Decision — Rationale — Consequences)
13. Future Extensions section for related out-of-scope ideas (if applicable)
14. References section with descriptive link anchors (not raw URLs)
15. Next Steps and Owner to close

## Structure for Runbooks/SOPs
1. Title and Audience
2. Last updated date (YYYY-MM-DD)
3. Preconditions (access/permissions, environment/state assumptions)
4. Steps (numbered, each with: action, why, command block, expected output, if-fails guidance)
5. Postconditions (services healthy, artifacts updated)
6. Verification (where to look, exact queries/dashboards, thresholds)
7. Rollback (triggers, steps, data implications)
8. Notes/Caveats (edge cases, noisy alerts, known quirks)
9. References

## Writing Patterns
- Lead with concrete examples, then explain the general principle
- Pattern: "Recommendation → Why → Example → Caveats"
- Use compound sentences with clarifying clauses for nuance
- Apply hedging language ("likely," "may," "somewhat") — avoid false certainty
- Present balanced pros/cons: "The benefit is X; the trade-off is Y. We accept this because Z."
- Use transitions: "That being said," "It's worth noting," "As mentioned earlier"
- Co-locate risk with mitigation: "Risk: <risk>. Mitigation: <mitigation>. Residual risk: <low/med/high>."
- Use bounded numerics where possible ("saves ~3–5 minutes per deployment")
- Name trade-offs explicitly: "Benefit …; Trade-off …"
- Uncertainty phrasing: "Based on current data, this is likely; we'll validate by <measurement>."
- Time phrasing: "As of <YYYY-MM-DD>, <state/change>."
- Avoid future ambiguity: when saying "today/tomorrow/next week," add the date in parentheses
- End sections with exactly who does what by when

## Standardized Callouts
- **Note:** non-blocking context
- **Warning:** potential data loss or outage
- **Tip:** productivity/pro trick

## Technical Content
- Put all CLI commands in code blocks, even short ones
- One command per block unless a transaction is required
- Precede dangerous commands with a warning and explain why they're needed
- Prefer idempotent examples; if not idempotent, state side effects
- Link liberally to related docs, repos, and external resources
- Use descriptive link anchors ("Deployment Windows"), not raw URLs
- Acknowledge edge cases explicitly: "This gets tricky when..."
- Provide mitigation strategies alongside risk statements

## Formatting
- Headings: Title Case for H1/H2; sentence case for H3/H4 when explanatory
- Use nested bullet points for multiple related considerations
- Prefer bullets for concepts, numbered lists for ordered steps
- Prefer checklists for operational steps; keep steps idempotent where possible
- Use bold for emphasis on critical warnings or key points
- Tables for reference data (deployment windows, risk levels, etc.)
- Screenshots/diagrams where visual aids help

## Numbers, Dates, and Time
- Use numerals for times/durations (4 minutes), include timezone (CT)
- Dates in ISO (YYYY-MM-DD) in metadata; natural language + (YYYY-MM-DD) in prose
- Quantify impact: client size, blast radius, likelihood

## Terminology Consistency
- Normalize casing: Git, GitHub, Kubernetes, ArgoCD, LaunchDarkly
- Use exact label/flag names: "app-state" (hyphenated), "no-release" (literal label), "--force-with-lease" (literal flag)

## Risk/Uncertainty Language
- Quantify impact: client size, blast radius, likelihood
- Pair risk statements with mitigation approaches
- Use conditional language appropriately — don't oversell confidence
- Format: "Risk: <risk>. Mitigation: <mitigation>. Residual risk: <low/med/high>."

## Distinctive Phrases to Use
- "The pros to X are... however, Y"
- "effectively" to describe outcomes
- "the likelihood is high that..."
- "I have seen instances where..."
- "X is not something you should do when Y"
- "As of [date], this has been..."
- "Please make sure you review our..."
- "That being said..."
- "It's worth noting..."
- "The benefit here is... but the downside is..."

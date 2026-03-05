When creating a GitHub PR, follow this structure:

## Required Sections (in order)
1. **Description** - Brief summary of what the PR does
2. **Why** - Business context and motivation (link to Jira tickets like CBDEVOPS-XXX)
3. **Changes** - Organized by component/category with bullet points
4. **Testing** - How changes were verified
5. **Risk Assessment** - Risk Level (None/Low/Medium/High) with Justification and Mitigations
6. **Configuration Required** - Environment variables or settings needed (or "None")
7. **Post-Deployment Verification** - Steps to confirm successful deployment
8. **Rollback Plan** - How to revert if issues arise
9. **Related PRs** - Links to dependent or related PRs (if applicable)
10. **Jira Link** - Link to ticket at bottom: [CBDEVOPS-XXX](https://eunasolutions.atlassian.net/browse/CBDEVOPS-XXX)

## Guidelines
- Be accurate - don't claim changes do something they don't
- Comments in code and PR description should match reality
- If a PR is optional/cleanup, say so explicitly
- Note deployment order dependencies clearly
- Risk mitigations should be specific and actionable
- All PRs should initially be created as Drafts.

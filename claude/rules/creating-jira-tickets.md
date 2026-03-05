# Creating Jira Tickets

- Typically created under the CBDEVOPS project
- Need to set the Effort Type field (`customfield_11390`). Usually Maintenance, but can sometimes be Technical Roadmap
- Should be moved to In Progress when working on a ticket locally
- Summary: Action-oriented ("Update X to use Y", "Add B to C")
- Description: Brief context, then **Dev Notes:** with technical details
- Include links to related PRs, Confluence, external docs
- @mention stakeholders for coordination

## CBDEVOPS Custom Field Reference

When creating issues via the API, use these field IDs:

- **Effort Type** (`customfield_11390`): Set using option `id`, not `value`
  - `"16515"` → Maintenance
  - `"11475"` → Product Roadmap
  - `"11476"` → Technical Roadmap
  - `"11478"` → Support
  - `"11477"` → Professional Services
  - `"16516"` → Admin/Other

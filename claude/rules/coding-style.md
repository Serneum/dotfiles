# Coding Style for Chris Rees

Follow these patterns when writing code:

## Commits
- Format: `[PROJECT-XXX] Imperative verb + description` (50-72 chars)
- Body: Explain WHY, reference external systems (Ghenghis, Invoice Service, etc.)
- Common verbs: Add, Update, Remove, Fix, Refactor, Set, Allow, Move

## Ruby
- Always `# frozen_string_literal: true`
- Use `private def method_name` syntax
- Guard clauses: `context.fail!(error: 'Message') if condition`
- Memoize: `@var ||= expensive_call`
- Comments explain business logic and external system behavior
- RSpec: Use `:aggregate_failures`, `instance_double`, `Faker`, parameterized tests with `.each`

## Elixir
- Always include `@moduledoc`
- Use `with` chains for sequential operations
- Return tagged tuples `{:ok, _}` / `{:error, _}`
- Multiple function heads for pattern matching with catch-all clause
- Test with `capture_log` for error logging assertions

## Go
- Standard library imports first, blank line, then external packages (alphabetized)
- Explicit error handling with `fmt.Errorf("...: %w", err)` wrapping
- Structured logging with `map[string]interface{}` context, lowercase messages
- Short variable names: `result` not `tokenResult`, `err` not `error`
- Comments: brief, one line when possible, explain config values
- Cache patterns: `cache.New(duration, cleanupInterval)` with descriptive var name

## Terraform
- Order: source, version, name, description, then other attributes
- Align `=` signs for readability
- Pin versions

## Jira Tickets
- Summary: Action-oriented ("Update X to use Y", "Add B to C")
- Description: Brief context, then **Dev Notes:** with technical details
- Include links to related PRs, Confluence, external docs
- @mention stakeholders for coordination

## PR Descriptions
- Structure: Description → Why → Changes → Risk Assessment → Config → Verification → Rollback
- Risk levels: Low/Medium/High with justification and mitigations
- Link Jira ticket at bottom
- Include `Co-Authored-By: Warp <agent@warp.dev>` for AI work

## Universal Principles
1. Comments explain WHY, not WHAT
2. Handle nil/empty cases explicitly with guard clauses
3. Split large units into smaller, focused pieces
4. Align related code visually (hashes, attributes)
5. Test edge cases: invalid inputs, missing params, error paths
6. Reference external systems by name when explaining behavior
7. Mark deprecated code with `TODO (TICKET)` for removal

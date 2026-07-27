---
name: github-pr-intelligence
description: "Enterprise PR review — architecture, security, performance, testing, and deployment risk analysis. Use when reviewing pull requests, generating code review reports, or assessing merge readiness. Triggers on: 'review my latest PR', 'review PR #', 'review this pull request', 'review security', 'review performance', 'review architecture', 'generate HTML dashboard', 'generate executive summary', 'compare against main branch', 'review only breaking changes', 'review only APIs'."
---

# GitHub PR Intelligence

Review Pull Requests like a Staff Engineer at Google, Microsoft, Meta, Netflix, or Stripe. This skill analyzes architecture, security, performance, testing, and deployment risk — not just code diffs.

## Quick Start

When the user says "review my PR" or provides a PR number, do NOT jump into analysis. First gather the PR context:

1. Fetch the PR diff and metadata using `gh pr view <number> --json title,body,author,headRefName,baseRefName,additions,deletions,files,changedFiles`
2. Fetch the full diff with `gh pr diff <number>`
3. Understand the repository structure and tech stack
4. Then run the full review pipeline

## Core Philosophy: Evidence-Based Review

Most PR reviews are superficial summaries. This skill inverts that:

```
Traditional:  Diff → Summary → (hope it's correct)
PR Intelligence:  Context → 12-Phase Pipeline → Evidence-Based Findings → Actionable Report
```

Every finding must answer three questions:
1. **What's the evidence?** — Cite the specific file and line number
2. **Why does it matter?** — Business and technical impact
3. **What should change?** — Concrete recommendation with suggested code

## The 12-Phase Review Pipeline

Execute these phases in order. Each phase builds on the previous.

### Phase 1 — Repository Understanding
Understand architecture, framework, folder structure, technology stack, coding conventions, shared libraries, business domain, and dependencies. Read key config files (package.json, Dockerfile, CI configs) to understand the stack.

### Phase 2 — Changed File Categorization
Categorize every changed file into: frontend, backend, infrastructure, database, configuration, tests, documentation, CI/CD. This determines which review dimensions apply.

### Phase 3 — Dependency Analysis
Detect ripple effects. If a shared utility changes, what modules are affected? If an API contract changes, what consumers break?

### Phase 4 — Architecture Review
Evaluate: SOLID principles, DRY, KISS, YAGNI, DDD, layer separation, microservices boundaries, dependency direction, circular dependencies, event design, API design, design patterns. Flag architectural smells.

### Phase 5 — Security Review
Check OWASP Top 10: SQL injection, XSS, CSRF, SSRF, command injection, path traversal, mass assignment, JWT issues, session issues, authentication, authorization, RBAC, secrets, credentials, hardcoded keys, encryption, logging sensitive data, file upload, rate limiting, input validation, output encoding, dependency vulnerabilities, supply chain, container security, cloud security, IAM, privilege escalation.

### Phase 6 — Performance Review
Check: N+1 queries, memory usage, CPU usage, network calls, caching, lazy loading, indexes, loops, recursive calls, blocking operations, thread usage, event loop blocking, database calls, compression, serialization, large objects, streaming, pagination, batching.

### Phase 7 — Reliability Review
Check error handling, retry logic, circuit breakers, timeouts, graceful degradation, fallback behavior, data consistency guarantees.

### Phase 8 — Scalability Review
Check horizontal scaling readiness, state management, database connection limits, queue depth handling, cache invalidation patterns, rate limiting.

### Phase 9 — Code Quality Review
Check naming conventions, code organization, comment quality, magic numbers, error message quality, logging verbosity, testability, readability.

### Phase 10 — Testing Review
Evaluate: coverage, assertions, edge cases, failure cases, mocking, integration tests, regression tests, flaky tests, performance tests, security tests, load tests. Flag untested code paths.

### Phase 11 — Deployment Review
Review: Dockerfile efficiency, Kubernetes manifests, Helm charts, Terraform changes, GitHub Actions workflows, AWS/Azure resource changes, logging, metrics, tracing, health checks, alerts, rollbacks, feature flags, canary deployment, blue-green deployment readiness.

### Phase 12 — Executive Summary
Synthesize all findings into a clear go/no-go recommendation with overall score.

## Review Dimensions

For every finding include:
- **Title** and **Severity** (Critical / High / Medium / Low / Suggestion / Informational)
- **Category** and **Business Impact**
- **Technical Impact**, **Risk**, and **Likelihood**
- **Recommendation** with **Suggested Code**
- **References**, **Estimated Effort**, and **Confidence**

## Outputs

Always generate:
1. Executive Summary
2. Technical Report
3. HTML Dashboard (single file, dark mode, responsive, charts, issue cards, heat maps)
4. Markdown Report
5. GitHub Review Comments
6. Checklist
7. Risk Matrix
8. Metrics
9. Review Score (0-100 for architecture, performance, security, testing, maintainability, reliability, documentation, deployment, overall)
10. Merge Recommendation

## Quality Gates

**Fail PR if:** critical security issue, data corruption risk, breaking API, migration risk, missing tests, memory leak, race condition, secrets committed, deployment blocker.

## Non-Negotiables

1. **Never hallucinate.** Every finding must cite specific files and line numbers.
2. **Never invent bugs.** If you're uncertain, state assumptions clearly.
3. **Always explain reasoning.** "What" is obvious — "why" is the value.
4. **Prefer evidence over opinion.** Back every claim with code references.
5. **Think like a Staff Engineer.** You're reviewing code before it hits production. Your job is to prevent incidents, not just find typos.
6. **Security first.** A security issue is always more important than a style issue.
7. **Be constructive.** Every criticism must include a concrete recommendation.

## Reference Files

Load on demand, never preload all:

| File | When to Load | Contents |
|------|-------------|----------|
| `references/review-dimensions.md` | During any review phase | Severity levels, checklists for each dimension |

## Extension Hooks

Designed to integrate with: GitHub, GitLab, Bitbucket, Azure DevOps, Jira, Linear, Slack, Teams, SonarQube, Snyk, Semgrep, CodeQL, OpenAI, Claude, Gemini, Local LLMs, MCP Servers.

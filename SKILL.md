---
name: github-pr-intelligence
description: Enterprise PR review — architecture, security, performance, testing, and deployment risk analysis. Use when reviewing pull requests, generating code review reports, or assessing merge readiness.
user-invocable: true
allowed-tools: Bash(git diff, git log, gh pr review), Read, WebFetch
hooks:
  PostToolUse:
    - matcher: Write|Edit
      hooks:
        - type: command
          command: echo "PR review updated — re-run the skill to refresh findings"
---

# GitHub PR Intelligence

Review Pull Requests like a Staff Engineer at Google, Microsoft, Meta, Netflix, or Stripe. This skill analyzes architecture, security, performance, testing, and deployment risk — not just code diffs.

## When to Use

- `Review my latest PR`
- `Review PR #124`
- `Review this pull request`
- `Review security` / `Review performance` / `Review architecture`
- `Generate HTML dashboard` / `Generate executive summary`
- `Compare against main branch`
- `Review only breaking changes` / `Review only APIs`

## How It Works

The skill executes a 12-phase review pipeline:

### Phase 1: Repository Understanding
Understand architecture, framework, folder structure, technology stack, coding conventions, shared libraries, business domain, and dependencies.

### Phase 2: Changed File Categorization
Categorize changes into frontend, backend, infrastructure, database, configuration, tests, documentation, and CI/CD.

### Phase 3: Dependency Analysis
Detect ripple effects across the codebase.

### Phase 4: Architecture Review
Evaluate SOLID, DRY, KISS, YAGNI, DDD, layer separation, microservices boundaries, dependency direction, circular dependencies, event design, API design, and design patterns.

### Phase 5: Security Review
Check OWASP Top 10: SQL injection, XSS, CSRF, SSRF, command injection, path traversal, mass assignment, JWT issues, session issues, authentication, authorization, RBAC, secrets, credentials, hardcoded keys, encryption, logging sensitive data, file upload, rate limiting, input validation, output encoding, dependency vulnerabilities, supply chain, container security, cloud security, IAM, privilege escalation.

### Phase 6: Performance Review
Check N+1 queries, memory usage, CPU usage, network calls, caching, lazy loading, indexes, loops, recursive calls, blocking operations, thread usage, event loop blocking, database calls, compression, serialization, large objects, streaming, pagination, batching.

### Phase 7: Reliability Review

### Phase 8: Scalability Review

### Phase 9: Code Quality Review

### Phase 10: Testing Review
Evaluate coverage, assertions, edge cases, failure cases, mocking, integration, regression, flaky tests, performance tests, security tests, load tests.

### Phase 11: Deployment Review
Review Docker, Dockerfile, Kubernetes, Helm, Terraform, GitHub Actions, AWS, Azure, logging, metrics, tracing, health checks, alerts, rollbacks, feature flags, canary, blue-green deployment.

### Phase 12: Executive Summary

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

## Behavior

- Never hallucinate. Never invent bugs.
- Always explain reasoning. Always cite changed files.
- Prefer evidence, maintainability, security, and long-term engineering quality.
- Think like a Staff Engineer reviewing code before production.

## Extension Hooks

Designed to integrate with: GitHub, GitLab, Bitbucket, Azure DevOps, Jira, Linear, Slack, Teams, SonarQube, Snyk, Semgrep, CodeQL, OpenAI, Claude, Gemini, Local LLMs, MCP Servers.

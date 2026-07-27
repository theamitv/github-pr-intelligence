# GitHub PR Intelligence

> Enterprise PR review — architecture, security, performance, testing, and deployment risk analysis.

Review Pull Requests like a Staff Engineer at Google, Microsoft, Meta, Netflix, or Stripe. This skill analyzes architecture, security, performance, testing, and deployment risk — not just code diffs.

## What It Does

- **12-Phase Review Pipeline** — Repository understanding → file categorization → dependency analysis → architecture → security → performance → reliability → scalability → code quality → testing → deployment → executive summary
- **Multi-Domain Expertise** — Covers OWASP Top 10, SOLID principles, N+1 queries, Docker/K8s security, and more
- **Rich Outputs** — Executive summary, technical report, HTML dashboard, GitHub review comments, risk matrix, merge recommendation
- **Quality Gates** — Automatically flags PRs with critical issues, data corruption risks, breaking API changes, secrets committed

## Install

```bash
npx skills add theamitv/github-pr-intelligence
```

## Usage

```
Review my latest PR
Review PR #124
Review security only
Generate HTML dashboard
Compare against main branch
```

## File Structure

```
github-pr-intelligence/
├── SKILL.md                    # Main orchestrator
├── references/
│   └── review-dimensions.md    # Severity levels and checklists
├── examples/
│   └── usage.md                # Usage examples
└── scripts/
    └── review.sh               # PR data collection script
```

## License

MIT

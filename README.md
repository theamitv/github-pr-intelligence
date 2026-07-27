# GitHub PR Intelligence

Enterprise-grade AI-powered Pull Request review skill for Claude Code.

## Overview

GitHub PR Intelligence reviews Pull Requests like a Staff Engineer — analyzing architecture, security, performance, testing, and deployment risk. It doesn't just summarize code changes; it reasons about maintainability, scalability, and production readiness.

## Features

- **12-Phase Review Pipeline**: Repository understanding → file categorization → dependency analysis → architecture → security → performance → reliability → scalability → code quality → testing → deployment → executive summary
- **Multi-Domain Expertise**: Covers OWASP Top 10, SOLID principles, N+1 queries, Docker/K8s security, and more
- **Rich Outputs**: Executive summary, technical report, HTML dashboard, GitHub review comments, risk matrix, merge recommendation
- **Quality Gates**: Automatically flags PRs with critical issues, data corruption risks, breaking API changes, secrets committed, etc.

## Installation

```bash
# Clone to your Claude Code skills directory
git clone https://github.com/your-org/github-pr-intelligence.git ~/.claude/skills/github-pr-intelligence
```

Or add as a submodule to your project:
```bash
git submodule add https://github.com/your-org/github-pr-intelligence.git .claude/skills/github-pr-intelligence
```

## Usage

Invoke in Claude Code:

```
Review my latest PR
Review PR #124
Review security only
Generate HTML dashboard
Compare against main branch
```

## Requirements

- Claude Code CLI
- `gh` CLI installed and authenticated (for GitHub PR access)
- Git access to the target repository

## Structure

```
github-pr-intelligence/
├── SKILL.md              # Core skill instructions
├── README.md             # This file
├── references/           # Detailed reference documentation
│   └── review-dimensions.md
├── examples/             # Usage examples
│   └── usage.md
└── scripts/              # Utility scripts
    └── review.sh
```

## License

MIT

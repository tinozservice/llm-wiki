---
title: Claude Opus
source: https://www.anthropic.com/claude/opus
author:
  - "[[Anthropic AI]]"
published: 2026-09-22
created: 2026-10-08
description: Hybrid reasoning model built for serious coding and AI agents, featuring a 1M context window.
tags:
  - clippings
---
## Announcements

- NEW
	Claude Opus 5.5
	We’re introducing Claude Opus 5.5. It performs at the level of Claude Fable 5.1 on most work and costs 40% less to run than Opus 5.
	[
	Read more
	](https://www.anthropic.com/claude-opus-5-5)
- Claude Opus 5
	A step-change improvement for the Opus tier: stronger coding, more capable agents, and sharper professional work.
	[
	Read more
	](https://www.anthropic.com/news/claude-opus-5)
- Claude Opus 4.8
	May 28, 2026
	Stronger across coding, agentic tasks, and professional work, Opus 4.8 has the consistency and autonomy to keep working on long-running tasks.
	[
	Read more
	](https://www.anthropic.com/news/claude-opus-4-8)
- Claude Opus 4.7
	Apr 16, 2026
	Claude Opus 4.7 brings stronger performance across coding, vision, and complex multi-step tasks. It’s more thorough and consistent on difficult work, with better results across professional knowledge work.
	[
	Read more
	](https://www.anthropic.com/news/claude-opus-4-7)
- Claude Opus 4.6
	Feb 5, 2026
	Claude Opus 4.6 is our most capable model to date. Building on the intelligence of Opus 4.5, it brings new levels of reliability and precision to coding, agents, and enterprise workflows.
	[
	Read more
	](https://www.anthropic.com/news/claude-opus-4-6)

## Availability and pricing

Claude Opus 5.5 is our strongest Opus model yet, powering long-running, highly capable agents while delivering improvements in coding and professional work.

For business users and consumers who want to collaborate with a powerful model on complex tasks, Opus 5.5 is available on Claude for Pro, Max, Team, and Enterprise users.

For developers interested in building AI solutions that demand strong intelligence, Opus 5.5 is available on the Claude Platform natively, and in Amazon Web Services, Google Cloud, and Microsoft Foundry. Pricing for Opus 5.5 will cost an estimated 40% less to run than Opus 5 for typical workloads billed by token. Opus 5.5 costs$4 per million input tokens and $20 per million output tokens, 20% below Opus 5. [Cache reads](https://platform.claude.com/docs/en/build-with-claude/prompt-caching), which are a large share of the cost of long-running agentic work, also now cost 60% less than Opus 5, at $0.20 per million tokens. To learn more, check out our [pricing page](https://claude.com/pricing#api). To get started, use `claude-opus-5-5` via the [Claude API](https://platform.claude.com/docs/en/about-claude/models/overview).

Fast mode for Opus 5.5 is also available now in Claude Code and on the Claude Platform with up to 2.5x faster speed. It costs $8 per million input tokens and $40 per million output tokens.

For workloads that need to run in the US, US-only inference is available at 1.1x pricing for input and output tokens. [Learn more](https://platform.claude.com/docs/en/build-with-claude/data-residency).

## Use cases

Claude Opus 5.5 is our most capable Opus model yet for coding, agents, and knowledge work. It costs less per token than Opus 5 and uses fewer tokens per task, so work on the Claude Platform, in Claude Code, and in the Claude apps costs about 40% less for work billed by token than on Opus 5.

Opus 5.5 also communicates more clearly. It leads with what matters, avoids jargon, and follows your writing rules, which makes it a better partner over long sessions. Key use cases include:

### Advanced coding

Opus 5.5 is our strongest Opus model for agentic coding. It handles long-running work in large codebases, including building features, debugging, refactoring, and code review. It finds the root cause before changing anything, checks its work as it goes, and explains its changes in plain language, so engineers can review and trust them quickly.

### Agents

Opus 5.5 is the Opus tier’s strongest agentic model, reliably orchestrating complex multi-tool tasks. It plans deliberately, coordinates subagents, uses memory to learn across sessions, and drives long-running work forward with minimal oversight. Along the way, it reports back clearly on what it did, what it found, and what it needs next.

### Enterprise workflows

Opus 5.5 is built to be the enterprise daily driver, powering agents that run projects end-to-end. It follows instructions precisely, stays in scope, and produces professional-grade spreadsheets, slides, and docs that are ready to use.

### Financial analysis

Opus 5.5 brings deeper reasoning and precision to financial workflows. It reads dense filings, models, and charts accurately, carries context across an entire deal or reporting cycle, and handles the nuance of compliance-sensitive work, with clear summaries of what it found and how it got there.

### Vision & computer use

Opus 5.5 is our best Opus model for vision and computer use. It reads dense documents, charts, screenshots, and diagrams at high fidelity, making it reliable for document extraction, visual analysis, and interpreting complex real-world imagery. Opus 5.5 brings deep reasoning to computer use, handling multi-step tasks that span multiple applications and require planning and judgment.

## Benchmarks

Claude Opus 5.5 delivers the intelligence and reliability to be your daily driver for serious coding and knowledge work.

![](https://www.anthropic.com/_next/image?url=https%3A%2F%2Fwww-cdn.anthropic.com%2Fimages%2F4zrzovbb%2Fwebsite%2Fdc0c3b4c8b63872b717f3c7a28c7f3b3fc4a3fba-2160x1932.png&w=3840&q=75)

Unless otherwise noted, all Claude Opus 5.5 results use adaptive thinking at max effort. Terminal-Bench 4.0 results are reported for Claude Opus 5.5 at xhigh effort and GPT-6 Astra at high effort, as reported by OpenAI; these represent each model’s highest score. Claude Opus 5.5 was evaluated with its production safeguards enabled. When they intervened, cybersecurity tasks were completed by Claude Opus 4.8, and biology and frontier LLM development tasks were completed by Claude Opus 5. This likely reduces Claude Opus 5.5’s performance on these benchmarks. 1 Terminal-Bench 4.0: The standard error is ±2.6 pts for Claude Opus 5.5 and ±1.6–2 pts for the other Claude models. The public leaderboard (5 trials/task, Claude Code harness) reports Claude Opus 5 at 51.8%; our setup reproduces it at 52.3%, within noise. GPT-6 Astra and GPT-5.6 Sol figures are as reported by OpenAI. 2 AutomationBench: AutomationBench results were run and reported by Zapier. These runs were performed without fallback models, so safeguard interventions were considered failures—this resulted in a lower score than Claude Opus 5.5 would achieve in practice. Claude Opus 5.5 results come from Zapier’s own evaluation during early access. Results for Opus 5, GPT-5.6 Sol, and GPT-6 Astra come from Zapier’s public leaderboard. 3 Terminal-Bench-Science 0.1: The standard error is ±3.5–5 pts per model. The public leaderboard (3 trials/task, Claude Code harness) reports Claude Opus 5 at 30.0%; our setup reproduces it at 29.0%, within noise. The GPT-6 Astra figure is as reported by OpenAI.

## Trust and safety

Extensive testing and evaluation ensures the release of Opus 5.5 meets Anthropic’s standards for safety, security, and reliability. The accompanying [system card](https://www.anthropic.com/claude-opus-5-5-system-card) covers safety results in depth.

## Safeguards

Opus 5.5 is the first Opus model to launch with a similar class of safeguards to Fable 5.1 in cybersecurity, biology, and anti-distillation. As our models grow more powerful, stricter safeguards are one way we prevent new capabilities from becoming tools for misuse.

## Hear from our customers

01 / 21

## Frequently asked questions

We offer Claude models across the spectrum of speed, price, and performance. We recommend Opus 5.5 as your daily driver for coding and knowledge work—particularly production-ready code, complex document creation, and computer use.

Pricing depends on how you want to use Opus 5.5. To learn more, check out our [pricing page](https://claude.com/pricing#api).
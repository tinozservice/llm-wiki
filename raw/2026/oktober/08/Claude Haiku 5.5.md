---
title: Claude Haiku 5.5
source: https://platform.claude.com/docs/en/models/haiku-5-5/overview
author:
  - "[[Anthropic AI]]"
published:
created: 2026-10-08
description: "Claude Haiku 5.5 at a glance: what it's for, model IDs on every platform, context window, output limits, pricing, availability, and the guides and resources for building with it."
tags:
  - clippings
---
## Overview

Claude Haiku 5.5 is built for high-volume, latency-sensitive work such as classification, routing, extraction, and subagent tasks. It supports adaptive thinking with the effort parameter, a 1M token context window, and up to 128k output tokens. It uses the same newer tokenizer as Claude 4.7 and later models, so the same text counts as approximately 30% more tokens than on Claude Haiku 4.5. Its thinking blocks work only in the account that produced them, or in an account linked to it.

For code changes, see the [migration guide](https://platform.claude.com/docs/en/models/haiku-5-5/migration-guide). For model IDs, pricing, and limits, see the [Claude Haiku 5.5 overview](https://platform.claude.com/docs/en/models/haiku-5-5/overview). For prompting guidance, see [Prompting Claude Haiku 5.5](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-haiku-5-5).

[What's new in Claude Haiku 5.5](https://platform.claude.com/docs/en/models/haiku-5-5/whats-new-haiku-5-5)

## How it compares

| Model | Context | Max output | Price / MTok | Latency | Thinking | Default effort | Knowledge cutoff |
| --- | --- | --- | --- | --- | --- | --- | --- |
| [Claude Fable 5.1](https://platform.claude.com/docs/en/models/fable-5-1/overview) | 1M | 128K | $10 / $50 | Slower | Adaptive (always on) | `high` | Jun 2026 |
| [Claude Opus 5.5](https://platform.claude.com/docs/en/models/opus-5-5/overview) | 1M | 128K | $4 / $20 | Moderate | Adaptive (always on) | `medium` | Jun 2026 |
| [Claude Sonnet 5.5](https://platform.claude.com/docs/en/models/sonnet-5-5/overview) | 1M | 128K | $2 / $10 | Fast | Adaptive | `high` | Jun 2026 |
| Claude Haiku 5.5This model | 1M | 128K | From $0.10 / $0.50 | Fastest | Adaptive | `medium` | Jun 2026 |

## Specifications

### Model IDs

### Pricing

Input

$0.10 / MTok for prompts up to 100,000 tokens$0.50 / MTok for prompts over 100,000 tokens

Output

$0.50 / MTok for prompts up to 100,000 tokens$2.50 / MTok for prompts over 100,000 tokens

[5m cache write](https://platform.claude.com/docs/en/build-with-claude/prompt-caching)

$0.125 / MTok for prompts up to 100,000 tokens$0.625 / MTok for prompts over 100,000 tokens

[1h cache write](https://platform.claude.com/docs/en/build-with-claude/prompt-caching)

$0.20 / MTok for prompts up to 100,000 tokens$1 / MTok for prompts over 100,000 tokens

[Cache read](https://platform.claude.com/docs/en/build-with-claude/prompt-caching)

$0.01 / MTok for prompts up to 100,000 tokens$0.05 / MTok for prompts over 100,000 tokens

[Batch API](https://platform.claude.com/docs/en/build-with-claude/batch-processing)

50% discount on input and output

[Full price list](https://platform.claude.com/docs/en/about-claude/pricing)

### Capabilities

[Context window](https://platform.claude.com/docs/en/build-with-claude/context-windows)

1M tokens

Max output

128K tokens

[Max output (Batch API, beta)](https://platform.claude.com/docs/en/build-with-claude/batch-processing#extended-output-beta)

300K tokens

[Thinking](https://platform.claude.com/docs/en/build-with-claude/thinking)

Adaptive

[Default effort](https://platform.claude.com/docs/en/build-with-claude/effort)

`medium`

Comparative latency

Fastest

Input → output

Text and images → text

Reliable knowledge cutoff

Jun 2026

Training data cutoff

Jun 2026

### Availability

[Status](https://platform.claude.com/docs/en/about-claude/model-deprecations)

Active (latest)

Released

October 7, 2026

Retirement

Not sooner than October 7, 2027

Platforms

Claude API [Amazon Bedrock](https://platform.claude.com/docs/en/build-with-claude/claude-in-amazon-bedrock) [Google Cloud](https://platform.claude.com/docs/en/build-with-claude/claude-on-vertex-ai) [Microsoft Foundry](https://platform.claude.com/docs/en/build-with-claude/claude-in-microsoft-foundry) [Claude Platform on AWS](https://platform.claude.com/docs/en/build-with-claude/claude-platform-on-aws)

## Good to know

- Adaptive thinking is on by default. Control thinking depth with the [effort parameter](https://platform.claude.com/docs/en/build-with-claude/effort).
- Omit `temperature`, `top_p`, and `top_k`, since a non-default value for any of them returns a 400 error.
- On the [Message Batches API](https://platform.claude.com/docs/en/build-with-claude/batch-processing#extended-output-beta), Claude Haiku 5.5 supports up to 300k output tokens with the `output-300k-2026-03-24` beta header.
- Query limits and capabilities programmatically with the [Models API](https://platform.claude.com/docs/en/api/models/list).

## Resources

[Prompting Claude Haiku 5.5](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-haiku-5-5)

Behavioral differences and prompting patterns specific to Claude Haiku 5.5.

[Reduce latency](https://platform.claude.com/docs/en/test-and-evaluate/strengthen-guardrails/reduce-latency)

Choose a model and effort level, shape prompts, and stream output for faster responses.

[Adaptive thinking](https://platform.claude.com/docs/en/build-with-claude/thinking)

Claude Haiku 5.5 determines when and how much to think. Steer depth with `effort`.

[Context windows](https://platform.claude.com/docs/en/build-with-claude/context-windows)

1M tokens. How the window is counted and managed.

## Reference

[System prompt](https://platform.claude.com/docs/en/release-notes/system-prompts/claude-haiku-5-5)

The system prompt Claude Haiku 5.5 uses on claude.ai and the Claude apps.

[System card](https://www.anthropic.com/document/claude-haiku-5-5-system-card)

Safety evaluations and deployment decisions for Claude Haiku 5.5.

[Pricing](https://platform.claude.com/docs/en/about-claude/pricing)

Full price list, including batch discounts and prompt caching rates.

[Model IDs and versioning](https://platform.claude.com/docs/en/about-claude/models/model-ids-and-versions)

How model IDs, aliases, and pinned snapshots work.

[Model deprecations](https://platform.claude.com/docs/en/about-claude/model-deprecations)

Lifecycle status and retirement commitments for every Claude model.

## Overview

Claude Opus 5.5 is built for long-running agentic coding and knowledge work, priced at $4 / $20 USD per million input / output tokens. Four breaking changes affect code already running on Claude Opus 5: [thinking can't be disabled](https://platform.claude.com/docs/en/models/opus-5-5/whats-new-opus-5-5#thinking-cant-be-disabled), [forced tool use returns an error](https://platform.claude.com/docs/en/models/opus-5-5/whats-new-opus-5-5#forced-tool-use-is-not-supported), [thinking blocks are tied to the model and the conversation](https://platform.claude.com/docs/en/models/opus-5-5/whats-new-opus-5-5#thinking-blocks-are-tied-to-the-model-that-produced-them), and, on the Claude API and Google Cloud, [the earlier `computer_20251124` computer use tool is not accepted](https://platform.claude.com/docs/en/models/opus-5-5/whats-new-opus-5-5#computer-20251124-is-not-supported). The first three also apply on Claude Fable 5.1. A further change alters the response shape without failing any request: [text between tool calls comes back in `thinking` blocks](https://platform.claude.com/docs/en/models/opus-5-5/whats-new-opus-5-5#text-between-tool-calls) whose text is empty at the default `display` setting. An application that streams that text to its users as progress updates goes quiet between tool calls until it sets a `display` value that returns the text.

[What's new in Claude Opus 5.5](https://platform.claude.com/docs/en/models/opus-5-5/whats-new-opus-5-5)

## How it compares

| Model | Context | Max output | Price / MTok | Latency | Thinking | Default effort | Knowledge cutoff |
| --- | --- | --- | --- | --- | --- | --- | --- |
| [Claude Fable 5.1](https://platform.claude.com/docs/en/models/fable-5-1/overview) | 1M | 128K | $10 / $50 | Slower | Adaptive (always on) | `high` | Jun 2026 |
| Claude Opus 5.5This model | 1M | 128K | $4 / $20 | Moderate | Adaptive (always on) | `medium` | Jun 2026 |
| [Claude Sonnet 5.5](https://platform.claude.com/docs/en/models/sonnet-5-5/overview) | 1M | 128K | $2 / $10 | Fast | Adaptive | `high` | Jun 2026 |
| [Claude Haiku 5.5](https://platform.claude.com/docs/en/models/haiku-5-5/overview) | 1M | 128K | From $0.10 / $0.50 | Fastest | Adaptive | `medium` | Jun 2026 |

## Specifications

### Model IDs

### Pricing

Input

$4 / MTok

Output

$20 / MTok

[5m cache write](https://platform.claude.com/docs/en/build-with-claude/prompt-caching)

$5 / MTok

[1h cache write](https://platform.claude.com/docs/en/build-with-claude/prompt-caching)

$8 / MTok

[Cache read](https://platform.claude.com/docs/en/build-with-claude/prompt-caching)

$0.20 / MTok

[Batch API](https://platform.claude.com/docs/en/build-with-claude/batch-processing)

50% discount on input and output

[Full price list](https://platform.claude.com/docs/en/about-claude/pricing)

### Capabilities

[Context window](https://platform.claude.com/docs/en/build-with-claude/context-windows)

1M tokens

Max output

128K tokens

[Max output (Batch API, beta)](https://platform.claude.com/docs/en/build-with-claude/batch-processing#extended-output-beta)

300K tokens

[Thinking](https://platform.claude.com/docs/en/build-with-claude/thinking)

Adaptive (always on)

[Default effort](https://platform.claude.com/docs/en/build-with-claude/effort)

`medium`

Comparative latency

Moderate

Input → output

Text and images → text

Reliable knowledge cutoff

Jun 2026

Training data cutoff

Jun 2026

### Availability

[Status](https://platform.claude.com/docs/en/about-claude/model-deprecations)

Active (latest)

Released

September 22, 2026

Retirement

Not sooner than September 22, 2027

Platforms

Claude API [Amazon Bedrock](https://platform.claude.com/docs/en/build-with-claude/claude-in-amazon-bedrock) [Google Cloud](https://platform.claude.com/docs/en/build-with-claude/claude-on-vertex-ai) [Microsoft Foundry](https://platform.claude.com/docs/en/build-with-claude/claude-in-microsoft-foundry) [Claude Platform on AWS](https://platform.claude.com/docs/en/build-with-claude/claude-platform-on-aws)

## Good to know

- Adaptive thinking is always on and can't be turned off. Control thinking depth with the [effort parameter](https://platform.claude.com/docs/en/build-with-claude/effort).
- On the [Message Batches API](https://platform.claude.com/docs/en/build-with-claude/batch-processing#extended-output-beta), Claude Opus 5.5 supports up to 300k output tokens with the `output-300k-2026-03-24` beta header.
- The minimum cacheable prompt length is 512 tokens. See [Prompt caching](https://platform.claude.com/docs/en/build-with-claude/prompt-caching#cache-limitations).
- Query limits and capabilities programmatically with the [Models API](https://platform.claude.com/docs/en/api/models/list).

## Resources

[Prompting Claude Opus 5.5](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-opus-5-5)

Behavioral differences and prompting patterns specific to Claude Opus 5.5.

[Effort](https://platform.claude.com/docs/en/build-with-claude/effort)

The control for thinking depth, latency, and cost. Choose a level per workload.

[Adaptive thinking](https://platform.claude.com/docs/en/build-with-claude/thinking)

How adaptive thinking works and how thinking blocks are preserved.

[Fast mode](https://platform.claude.com/docs/en/build-with-claude/fast-mode)

Lower-latency Claude Opus 5.5 on the Claude API (research preview), priced separately.

## Reference

[System prompt](https://platform.claude.com/docs/en/release-notes/system-prompts/claude-opus-5-5)

The system prompt Claude Opus 5.5 uses on claude.ai and the Claude apps.

[System card](https://www.anthropic.com/claude-opus-5-5-system-card)

Safety evaluations and deployment decisions for Claude Opus 5.5.

[Pricing](https://platform.claude.com/docs/en/about-claude/pricing)

Full price list, including batch discounts and prompt caching rates.

[Model IDs and versioning](https://platform.claude.com/docs/en/about-claude/models/model-ids-and-versions)

How model IDs, aliases, and pinned snapshots work.

[Model deprecations](https://platform.claude.com/docs/en/about-claude/model-deprecations)

Lifecycle status and retirement commitments for every Claude model.

## Overview

Claude Fable 5.1 extends Claude Fable 5 at the same input and output prices, with cache reads at a quarter of the cost, and brings stronger long-running agentic coding, multistep research, and document, spreadsheet, and slide work. For most workloads, start with Claude Opus 5.5 (see [Choosing a model](https://platform.claude.com/docs/en/about-claude/models/choosing-a-model)). Use Claude Fable 5.1 for demanding reasoning and long-horizon agentic work, or when your evals on Claude Opus 5.5 at higher effort still fall short. Claude Mythos 5.1 offers the same capabilities only to organizations verified through Anthropic's verification programs, such as the [Cyber Verification Program](https://support.claude.com/en/articles/14604842).

If you already call Claude Fable 5, three changes are breaking: [forced tool use returns an error](https://platform.claude.com/docs/en/models/fable-5-1/whats-new-fable-5-1#forced-tool-use-is-not-supported), [earlier models can't read its thinking blocks](https://platform.claude.com/docs/en/models/fable-5-1/whats-new-fable-5-1#thinking-blocks-are-tied-to-the-model-that-produced-them), and [editing earlier turns invalidates thinking blocks](https://platform.claude.com/docs/en/models/fable-5-1/whats-new-fable-5-1#editing-earlier-turns-invalidates-thinking-blocks). Five are additive: [per-message effort](https://platform.claude.com/docs/en/models/fable-5-1/whats-new-fable-5-1#change-effort-mid-conversation-beta) (beta), [turn-scoped system messages](https://platform.claude.com/docs/en/models/fable-5-1/whats-new-fable-5-1#turn-scoped-system-messages-beta) (beta), [readable progress updates between tool calls](https://platform.claude.com/docs/en/models/fable-5-1/whats-new-fable-5-1#progress-updates-between-tool-calls-beta) (`display: "updates"`, beta), a [lower cache read price](https://platform.claude.com/docs/en/models/fable-5-1/whats-new-fable-5-1#pricing), and [content provenance](https://platform.claude.com/docs/en/models/fable-5-1/whats-new-fable-5-1#content-provenance).

[What's new in Claude Fable 5.1](https://platform.claude.com/docs/en/models/fable-5-1/whats-new-fable-5-1)

## Claude Fable 5.1 and Claude Mythos 5.1

[Claude Mythos 5.1](https://platform.claude.com/docs/en/models/mythos-5-1/overview) offers the same capabilities only to organizations verified through Anthropic's verification programs, such as the [Cyber Verification Program](https://support.claude.com/en/articles/14604842). It shares Claude Fable 5.1's specifications and pricing. To request access, apply to the program that covers your use case, or contact your Anthropic, AWS, or Google Cloud account team.

## How it compares

| Model | Context | Max output | Price / MTok | Latency | Thinking | Default effort | Knowledge cutoff |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Claude Fable 5.1This model | 1M | 128K | $10 / $50 | Slower | Adaptive (always on) | `high` | Jun 2026 |
| [Claude Opus 5.5](https://platform.claude.com/docs/en/models/opus-5-5/overview) | 1M | 128K | $4 / $20 | Moderate | Adaptive (always on) | `medium` | Jun 2026 |
| [Claude Sonnet 5.5](https://platform.claude.com/docs/en/models/sonnet-5-5/overview) | 1M | 128K | $2 / $10 | Fast | Adaptive | `high` | Jun 2026 |
| [Claude Haiku 5.5](https://platform.claude.com/docs/en/models/haiku-5-5/overview) | 1M | 128K | From $0.10 / $0.50 | Fastest | Adaptive | `medium` | Jun 2026 |

## Specifications

### Model IDs

### Pricing

Input

$10 / MTok

Output

$50 / MTok

[5m cache write](https://platform.claude.com/docs/en/build-with-claude/prompt-caching)

$12.50 / MTok

[1h cache write](https://platform.claude.com/docs/en/build-with-claude/prompt-caching)

$20 / MTok

[Cache read](https://platform.claude.com/docs/en/build-with-claude/prompt-caching)

$0.25 / MTok

[Batch API](https://platform.claude.com/docs/en/build-with-claude/batch-processing)

50% discount on input and output

[Full price list](https://platform.claude.com/docs/en/about-claude/pricing)

### Capabilities

[Context window](https://platform.claude.com/docs/en/build-with-claude/context-windows)

1M tokens

Max output

128K tokens

[Thinking](https://platform.claude.com/docs/en/build-with-claude/thinking)

Adaptive (always on)

[Default effort](https://platform.claude.com/docs/en/build-with-claude/effort)

`high`

Comparative latency

Slower

Input → output

Text and images → text

Reliable knowledge cutoff

Jun 2026

Training data cutoff

Jun 2026

### Availability

[Status](https://platform.claude.com/docs/en/about-claude/model-deprecations)

Active (latest)

Released

September 1, 2026

Retirement

Not sooner than September 1, 2027

Platforms

Claude API [Amazon Bedrock](https://platform.claude.com/docs/en/build-with-claude/claude-in-amazon-bedrock) [Google Cloud](https://platform.claude.com/docs/en/build-with-claude/claude-on-vertex-ai) [Microsoft Foundry](https://platform.claude.com/docs/en/build-with-claude/claude-in-microsoft-foundry) [Claude Platform on AWS](https://platform.claude.com/docs/en/build-with-claude/claude-platform-on-aws)

## Resources

[Prompting Claude Fable 5.1](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-fable-5-1)

Model-specific prompting guidance for long-horizon and agentic work.

[Claude Fable 5.1 migration guide](https://platform.claude.com/docs/en/models/fable-5-1/migration-guide)

What changes when you move from Claude Fable 5, Claude Opus 5, or Claude Opus 4.8.

[Preserved thinking](https://platform.claude.com/docs/en/build-with-claude/thinking#preserved-thinking)

When this model's thinking blocks stay usable: across model switches and across changes to the conversation.

[Per-message effort](https://platform.claude.com/docs/en/build-with-claude/effort#change-effort-mid-conversation-beta)

Change the effort level partway through a conversation without invalidating the prompt cache.

[Refusals and fallback](https://platform.claude.com/docs/en/build-with-claude/refusals-and-fallback)

Handle classifier refusals and retry on another Claude model.

[Adaptive thinking](https://platform.claude.com/docs/en/build-with-claude/thinking)

The only thinking mode on Claude Fable 5.1. Steer depth with `effort`.

## Reference

[System prompt](https://platform.claude.com/docs/en/release-notes/system-prompts/claude-fable-5-1)

The system prompt Claude Fable 5.1 uses on claude.ai and the Claude apps.

[System card](https://www.anthropic.com/claude-fable-5-1-mythos-5-1-system-card)

Safety evaluations and deployment decisions for Claude Fable 5.1 and Claude Mythos 5.1.

[Pricing](https://platform.claude.com/docs/en/about-claude/pricing)

Full price list, including batch discounts and prompt caching rates.

[Model IDs and versioning](https://platform.claude.com/docs/en/about-claude/models/model-ids-and-versions)

How model IDs, aliases, and pinned snapshots work.

[Model deprecations](https://platform.claude.com/docs/en/about-claude/model-deprecations)

Lifecycle status and retirement commitments for every Claude model.
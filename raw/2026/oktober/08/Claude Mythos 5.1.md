---
title: Claude Mythos 5.1
source: https://platform.claude.com/docs/en/models/mythos-5-1/overview
author:
  - "[[Anthropic AI]]"
published:
created: 2026-10-08
description: "Claude Mythos 5.1 at a glance: the same model as Claude Fable 5.1, available only to organizations verified through Anthropic's verification programs. Model IDs, specifications, pricing, and how to request access."
tags:
  - clippings
---
Claude Mythos 5.1 is available only to organizations verified through Anthropic’s verification programs, such as the [Cyber Verification Program](https://support.claude.com/en/articles/14604842). It has the same specifications and pricing as Claude Fable 5.1. To request access, apply to the program that covers your use case.

[See Claude Fable 5.1](https://platform.claude.com/docs/en/models/fable-5-1/overview)

## How it compares

| Model | Context | Max output | Price / MTok | Latency | Thinking | Default effort | Knowledge cutoff |
| --- | --- | --- | --- | --- | --- | --- | --- |
| [Claude Fable 5.1](https://platform.claude.com/docs/en/models/fable-5-1/overview) | 1M | 128K | $10 / $50 | Slower | Adaptive (always on) | `high` | Jun 2026 |
| Claude Mythos 5.1This model | 1M | 128K | $10 / $50 | Slower | Adaptive (always on) | `high` | Jun 2026 |
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

## Reference

[Migrating from Claude Mythos 5](https://platform.claude.com/docs/en/models/fable-5-1/migration-guide#migrating-from-claude-mythos-5-to-claude-mythos-5-1)

What changes when you move from Claude Mythos 5.

[System card](https://www.anthropic.com/claude-fable-5-1-mythos-5-1-system-card)

Safety evaluations and deployment decisions for Claude Fable 5.1 and Claude Mythos 5.1.

[Pricing](https://platform.claude.com/docs/en/about-claude/pricing)

Full price list, including batch discounts and prompt caching rates.

[Model IDs and versioning](https://platform.claude.com/docs/en/about-claude/models/model-ids-and-versions)

How model IDs, aliases, and pinned snapshots work.

[Model deprecations](https://platform.claude.com/docs/en/about-claude/model-deprecations)

Lifecycle status and retirement commitments for every Claude model.

Each Claude model ID identifies a pinned version of the model. When you use a model ID in an API request, the underlying model remains constant for the lifetime of that ID. This guarantee covers model IDs, not the convenience aliases that the Claude API accepts for some earlier models (see [Before the 4.6 generation](#before-the-4-6-generation)).

## Model ID format

Claude model IDs follow a versioned naming scheme.

### The 4.6 generation and later

Starting with the Claude 4.6 generation, model IDs use a dateless format:

```
claude-{name}-{major}[-{minor}]
```

Major-version releases such as Claude Sonnet 5 and Claude Opus 5 omit the minor segment.

For example: `claude-sonnet-4-6`, `claude-sonnet-5`, `claude-opus-4-6`, `claude-opus-4-7`, `claude-opus-4-8`, and `claude-opus-5`

On Amazon Bedrock, the corresponding format is:

```
anthropic.claude-{name}-{major}[-{minor}]
```

For example: `anthropic.claude-sonnet-4-6`, `anthropic.claude-sonnet-5`, `anthropic.claude-opus-4-7`, `anthropic.claude-opus-4-8`, `anthropic.claude-opus-5`

Claude Opus 4.6 is the last Bedrock model ID to include the `-v1` suffix (`anthropic.claude-opus-4-6-v1`). Anthropic dropped the suffix starting with Claude Sonnet 4.6.

On Google Cloud, the format matches the Claude API.

### Before the 4.6 generation

Models before the 4.6 generation include a snapshot date in the ID:

```
claude-{name}-{major}-{minor}-{YYYYMMDD}
```

For example: `claude-sonnet-4-5-20250929`, `claude-haiku-4-5-20251001`

On Amazon Bedrock, these use the format:

```
anthropic.claude-{name}-{major}-{minor}-{YYYYMMDD}-v1:0
```

For example: `anthropic.claude-sonnet-4-5-20250929-v1:0`

On Google Cloud, the date is separated with `@`:

```
claude-{name}-{major}-{minor}@{YYYYMMDD}
```

For example: `claude-haiku-4-5@20251001`

On the Claude API, these models also have shorter aliases (for example, `claude-sonnet-4-5`) that point to the most recent dated snapshot for that minor version.

## Dateless IDs are pinned snapshots

A common misconception is that dateless model IDs such as `claude-sonnet-4-6` behave as evergreen pointers that route to the latest or best-performing version. That is not the case.

For the 4.6 generation and later, the dateless ID is the canonical model ID for that release. It maps to a single, fixed model snapshot. Anthropic does not update the weights or configuration of an existing model ID. When an updated version is available, it ships under a new model ID.

This differs from the dateless aliases that exist on the Claude API for earlier models. An alias such as `claude-sonnet-4-5` is a convenience pointer that resolves to the most recent dated snapshot for that minor version. A 4.6-generation ID such as `claude-sonnet-4-6` is not an alias. It is the snapshot.

Every model ID, whether dated or dateless, has its own distinct deprecation and retirement schedule.

## Model weights versus serving infrastructure

Model weights are fixed for a given ID, but the serving infrastructure around the model can change over time. This infrastructure includes components such as the request router, safety classifiers, and sampling logic.

Occasionally, infrastructure updates produce minor differences in observable behavior even when the model ID and weights have not changed. If you notice unexpected behavioral differences on a previously stable model ID, an infrastructure update is the most likely cause.

## Current model IDs

For the full list of current model IDs and their Amazon Bedrock and Google Cloud equivalents, see [Models overview](https://platform.claude.com/docs/en/models/overview).

[Claude Haiku 5.5 System Card](https://www.anthropic.com/document/claude-haiku-5-5-system-card)

Detailed documentation of Claude Haiku 5.5.

[Claude Opus 5.5 System Card](https://www.anthropic.com/claude-opus-5-5-system-card)

Detailed documentation of Claude Opus 5.5.

[Claude Fable 5.1 and Mythos 5.1 System Card](https://www.anthropic.com/claude-fable-5-1-mythos-5-1-system-card)

Detailed documentation of Claude Fable 5.1 and Claude Mythos 5.1.

[Claude Opus 5 System Card](https://www.anthropic.com/claude-opus-5-system-card)

Detailed documentation of Claude Opus 5.

[Claude Sonnet 5 System Card](https://www.anthropic.com/claude-sonnet-5-system-card)

Detailed documentation of Claude Sonnet 5.

[Claude Fable 5 and Mythos 5 System Card](https://www.anthropic.com/claude-fable-5-mythos-5-system-card)

Detailed documentation of Claude Fable 5 and Claude Mythos 5.

[Claude Opus 4.8 System Card](https://www.anthropic.com/claude-opus-4-8-system-card)

Detailed documentation of Claude Opus 4.8.

[Claude Opus 4.7 System Card](https://www.anthropic.com/claude-opus-4-7-system-card)

Detailed documentation of Claude Opus 4.7.

[Claude Mythos Preview System Card](https://www.anthropic.com/claude-mythos-preview-system-card)

Detailed documentation of Claude Mythos Preview.

[Claude Sonnet 4.6 System Card](https://www.anthropic.com/claude-sonnet-4-6-system-card)

Detailed documentation of Claude Sonnet 4.6.

[Claude Opus 4.6 System Card](https://www.anthropic.com/claude-opus-4-6-system-card)

Detailed documentation of Claude Opus 4.6.

[Claude Opus 4.5 System Card](https://www.anthropic.com/claude-opus-4-5-system-card)

Detailed documentation of Claude Opus 4.5.

[Claude Haiku 4.5 System Card](https://www.anthropic.com/claude-haiku-4-5-system-card)

Detailed documentation of Claude Haiku 4.5.

[Claude Sonnet 4.5 System Card](https://www.anthropic.com/claude-sonnet-4-5-system-card)

Detailed documentation of Claude Sonnet 4.5.

[Claude Opus 4.1 System Card](https://www.anthropic.com/claude-opus-4-1-system-card)

Detailed documentation of Claude Opus 4.1.

[Claude 4 System Card](https://www.anthropic.com/claude-4-system-card)

Detailed documentation of Claude 4 models.

[Claude Sonnet 3.7 System Card](https://www.anthropic.com/claude-3-7-sonnet-system-card)

System card for Claude Sonnet 3.7 with performance and safety details.

[Claude Haiku 3.5 and Sonnet 3.5 System Card](https://www-cdn.anthropic.com/c7822cdc35ad788ec87e14b3a9d45010f1f86c38.pdf)

Detailed documentation of Claude Haiku 3.5 and Claude Sonnet 3.5.

Detailed documentation of Claude 3 models including latest 3.5 addendum.

Detailed documentation of Claude 2 models.
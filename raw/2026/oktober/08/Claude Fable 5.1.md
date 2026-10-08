---
title: Claude Fable 5.1
source: https://platform.claude.com/docs/en/models/fable-5-1/overview
author:
  - "[[Anthropic AI]]"
published:
created: 2026-10-08
description: "Claude Fable 5.1 at a glance: what it's for, model IDs on every platform, context window, output limits, pricing, availability, and resources for building with it."
tags:
  - clippings
---
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

## Establish key criteria

When choosing a Claude model, consider first evaluating these factors:

- **Capabilities:** What specific features or capabilities will you need the model to have to meet your needs?
- **Speed:** How quickly does the model need to respond in your application? Claude Opus 5.5, Claude Opus 5, and Claude Opus 4.8 support [fast mode](https://platform.claude.com/docs/en/build-with-claude/fast-mode) (research preview), which delivers up to 2.5x higher output speed at premium pricing.
- **Cost:** What's your budget for both development and production usage?
- **Effort:** Several Claude models support an [effort parameter](https://platform.claude.com/docs/en/build-with-claude/effort) that trades intelligence for latency and cost within a single model. Tuning effort is often a better lever than switching models. On Claude Fable 5.1 and Claude Opus 5, start with the default (`high`) and adjust up or down based on your evals. On Claude Opus 5.5 and Claude Haiku 5.5 the default is `medium`; start there and adjust the same way. On Claude Opus 4.8 and Claude Opus 4.7, the `xhigh` effort level, between `high` and `max`, is the best setting for most coding and agentic use cases.

---

## Choose the best model to start with

There are two general approaches you can use to start testing which Claude model best works for your needs.

### Option 1: Start efficiency-first

For many applications, starting with a faster, more cost-effective model like Claude Haiku 5.5 can be the optimal approach:

1. Begin implementation with Claude Haiku 5.5.
2. Test your use case thoroughly.
3. Evaluate if performance meets your requirements.
4. Upgrade only if necessary for specific capability gaps.

This approach allows for quick iteration, lower development costs, and is often sufficient for many common applications. This approach is best for:

- Initial prototyping and development
- Applications with tight latency requirements
- Cost-sensitive implementations
- High-volume, straightforward tasks

### Option 2: Start capability-first

For complex tasks where intelligence and advanced capabilities are paramount, you may want to start capability-first: implement with the strongest starting point for your task, then optimize to more efficient models down the line:

1. Implement with Claude Opus 5.5.
2. [Optimize your prompts](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/prompting-claude-opus-5-5) for this model.
3. Evaluate if performance meets your requirements.
4. Consider increasing efficiency by lowering [effort](https://platform.claude.com/docs/en/build-with-claude/effort) or downgrading models over time with greater workflow optimization.
5. If your evals at `xhigh` or `max` effort still fall short on demanding reasoning or long-horizon agentic work, move to [Claude Fable 5.1](https://platform.claude.com/docs/en/models/fable-5-1/whats-new-fable-5-1).

This approach is best for:

- Complex reasoning tasks
- Scientific or mathematical applications
- Tasks requiring nuanced understanding
- Applications where accuracy outweighs cost considerations
- Advanced coding and high-autonomy agentic work

**Claude Opus 5.5** (`claude-opus-5-5`) is built for long-running agentic coding and knowledge work, with [adaptive thinking](https://platform.claude.com/docs/en/build-with-claude/thinking) always on. If your integration forces tool use (`tool_choice` of type `any` or `tool`), turns thinking off, or uses the `computer_20251124` computer use tool, see [Breaking changes](https://platform.claude.com/docs/en/models/opus-5-5/whats-new-opus-5-5#breaking-changes) before switching.

**Claude Fable 5.1** (`claude-fable-5-1`) is Anthropic's most capable model open to all customers. It extends Claude Fable 5 with stronger long-running agentic coding, knowledge work, and research at the same input and output prices, with cache reads at a quarter of the cost. **Claude Mythos 5.1** (`claude-mythos-5-1`) offers the same capabilities only to organizations verified through Anthropic's verification programs, such as the [Cyber Verification Program](https://support.claude.com/en/articles/14604842). Both models use always-on [adaptive thinking](https://platform.claude.com/docs/en/build-with-claude/thinking). See [What's new in Claude Fable 5.1](https://platform.claude.com/docs/en/models/fable-5-1/whats-new-fable-5-1) for details.

For context windows, output limits, and prices, see the [model comparison table](https://platform.claude.com/docs/en/models/overview#latest-models-comparison).

## Model selection matrix

Most workloads start with Claude Opus 5.5.

| When you need... | Consider starting with... | Example use cases |
| --- | --- | --- |
| The highest available capability | Claude Fable 5.1 | Agent sessions that run for hours, multistep deep research, analysis carried through to a finished document, spreadsheet, or deck |
| Complex agentic coding and enterprise work | Claude Opus 5.5 | Multihour autonomous coding agents, large-scale refactoring, complex systems engineering, vision-heavy workflows, computer use |
| Speed and capability for everyday coding, agent, and enterprise workloads | Claude Sonnet 5.5 | Code generation, data analysis, content creation, visual understanding, agentic tool use |
| The lowest latency and price | Claude Haiku 5.5 | Real-time applications, high-volume intelligent processing, cost-sensitive deployments needing strong reasoning, sub-agent tasks |

---

## Decide whether to upgrade or change models

To determine if you need to upgrade or change models, you should:

1. [Create benchmark tests](https://platform.claude.com/docs/en/test-and-evaluate/develop-tests) specific to your use case - having a good evaluation set is the most important step in the process.
2. Test with your actual prompts and data.
3. Compare performance across models for:
	- Accuracy of responses
		- Response quality
		- Handling of edge cases
4. Weigh performance and cost tradeoffs.

## Combine models

Multi-model strategies pair a lower-cost model with a frontier model so that most tokens are billed at the lower rate. The two common patterns are an executor that escalates hard decisions to an advisor, and an orchestrator that delegates bulk work to lower-cost workers. See [Optimizing for cost and intelligence](https://platform.claude.com/docs/en/about-claude/models/optimizing-for-cost-and-intelligence) for both strategies, measured examples, and implementation options.

## Next steps

[Model comparison chart](https://platform.claude.com/docs/en/models/overview)

See detailed specifications and pricing for the latest Claude models

[What's new in Claude Fable 5.1](https://platform.claude.com/docs/en/models/fable-5-1/whats-new-fable-5-1)

Built for demanding reasoning and long-horizon agentic work

[What's new in Claude Opus 5.5](https://platform.claude.com/docs/en/models/opus-5-5/whats-new-opus-5-5)

The latest Opus model: breaking changes, new features, and behavior differences

[What's new in Claude Sonnet 5.5](https://platform.claude.com/docs/en/models/sonnet-5-5/whats-new-sonnet-5-5)

The latest Sonnet model: breaking changes, new features, and behavior differences

[Start building](https://platform.claude.com/docs/en/get-started)

Get started with your first API call

## Compare models

If you're unsure which model to use, start with [Claude Opus 5.5](https://platform.claude.com/docs/en/models/opus-5-5/overview) for most workloads. Use [Claude Fable 5.1](https://platform.claude.com/docs/en/models/fable-5-1/overview) for demanding reasoning and long-horizon agentic work, or when your evals on Claude Opus 5.5 at higher effort still fall short. All current models support text and image input, text output, multilingual capabilities, vision, and tool use. Each model's page lists the platforms it's available on.

|  | [Claude Fable 5.1](https://platform.claude.com/docs/en/models/fable-5-1/overview) For demanding reasoning and long-horizon agentic work | [Claude Opus 5.5](https://platform.claude.com/docs/en/models/opus-5-5/overview) For long-running agentic coding and knowledge work | [Claude Sonnet 5.5](https://platform.claude.com/docs/en/models/sonnet-5-5/overview) The best combination of speed and intelligence | [Claude Haiku 5.5](https://platform.claude.com/docs/en/models/haiku-5-5/overview) For high-volume, latency-sensitive tasks such as classification, extraction, and routing |
| --- | --- | --- | --- | --- |
| Comparative latency | Slower | Moderate | Fast | Fastest |
| Pricing | $10 / input MTok$50 / output MTok | $4 / input MTok$20 / output MTok | $2 / input MTok$10 / output MTok | From $0.10 / input MTokFrom $0.50 / output MTok |
| Claude API ID | claude-fable-5-1 | claude-opus-5-5 | claude-sonnet-5-5 | claude-haiku-5-5 |
| Capabilities |  |  |  |  |
| Thinking | Adaptive (always on) | Adaptive (always on) | Adaptive | Adaptive |
| Default effort | `high` | `medium` | `high` | `medium` |
| Context window | 1M tokens | 1M tokens | 1M tokens | 1M tokens |
| Max output | 128K tokens | 128K tokens | 128K tokens | 128K tokens |
| Reliable knowledge cutoff | Jun 2026 | Jun 2026 | Jun 2026 | Jun 2026 |
| Additional details |  |  |  |  |

Once you've picked a model, [learn how to make your first API call](https://platform.claude.com/docs/en/get-started). To understand how model IDs, aliases, and snapshots work, see [Model IDs and versioning](https://platform.claude.com/docs/en/about-claude/models/model-ids-and-versions); for the reliable-knowledge and training-data cutoffs behind each model, see [Anthropic's Transparency Hub](https://www.anthropic.com/transparency).

## Using the Models API

You can query model capabilities and token limits programmatically with the [Models API](https://platform.claude.com/docs/en/api/models/list). The response includes `max_input_tokens`, `max_tokens`, and a `capabilities` object for every available model.

Each model in the response also has a `line` field, which names the model line it belongs to. Claude Opus 4.5 and Claude Opus 4.6 both report `opus`. Use `line` to group models, for example, in a model picker. `line` is `null` when a model belongs to no line. Read `line` instead of inferring it from the model's `id`. Anthropic might add more lines, so don't treat the set of values as fixed.

Each model's `capabilities` object includes `thinking.types.disabled`, which reports whether the model accepts `thinking: {type: "disabled"}`, the setting that [turns thinking off](https://platform.claude.com/docs/en/build-with-claude/thinking#turning-thinking-off). `supported` is `false` when the model rejects `"disabled"` with a 400 error, and `true` on a model that doesn't support thinking. Even when `supported` is `true`, the API can still reject a `"disabled"` request for another reason. One such reason is an [effort](https://platform.claude.com/docs/en/build-with-claude/effort) level that the model doesn't allow with thinking off.

Each model's `capabilities` object also includes `server_tools`, which reports whether the model accepts the [web search](https://platform.claude.com/docs/en/agents-and-tools/tool-use/web-search-tool) and [code execution](https://platform.claude.com/docs/en/agents-and-tools/tool-use/code-execution-tool) tools. It doesn't cover other server tools, such as web fetch. `server_tools.web_search.supported` and `server_tools.code_execution.supported` are `true` when the model accepts at least one version of that tool, not necessarily every version. `server_tools.supported` is `true` when the model accepts at least one of the two tools. Even when a tool is supported, your organization's settings can still cause a request that uses it to fail. For example, an administrator can [disable web search](https://platform.claude.com/docs/en/agents-and-tools/tool-use/web-search-tool#how-to-use-web-search).

The top-level `code_execution` capability is a different check. It reports whether code that Claude runs in the code execution tool can call the request's other tools, as in [programmatic tool calling](https://platform.claude.com/docs/en/agents-and-tools/tool-use/programmatic-tool-calling). For Claude Haiku 4.5, for example, the Models API reports `server_tools.code_execution.supported` as `true` and `code_execution.supported` as `false`.

## Prompt and output performance

Current Claude models excel in:

- **Performance:** Top-tier results in reasoning, coding, multilingual tasks, long-context handling, honesty, and image processing. See [Prompting best practices](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/claude-prompting-best-practices) for general and model-specific prompting guidance.
- **Engaging responses:** Claude models are ideal for applications that require rich, human-like interactions. If you prefer more concise responses, adjust your prompts to guide the model toward the desired output length. Refer to the [prompt engineering guides](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering) for details.
- **Output quality:** When migrating from a previous model generation, you may notice larger improvements in overall performance. If you're on Claude Opus 5 or earlier, see the [Claude Opus 5.5 migration guide](https://platform.claude.com/docs/en/models/opus-5-5/migration-guide).

## Get started with Claude

If you're ready to start exploring what Claude can do for you, dive in! Whether you're a developer looking to integrate Claude into your applications or a user wanting to experience the power of AI firsthand, the following resources can help.

[Intro to Claude](https://platform.claude.com/docs/en/intro)

Explore Claude's capabilities and development flow.

[Quickstart](https://platform.claude.com/docs/en/get-started)

Learn how to make your first API call in minutes.

[Choosing a model](https://platform.claude.com/docs/en/about-claude/models/choosing-a-model)

Establish criteria and pick the right model for your use case.

[Pricing](https://platform.claude.com/docs/en/about-claude/pricing)

Complete pricing, including batch discounts and prompt caching rates.

[Model deprecations](https://platform.claude.com/docs/en/about-claude/model-deprecations)

Lifecycle status and retirement commitments for every model.

Craft and test prompts directly in your browser.

Looking to chat with Claude? Visit [claude.ai](https://claude.ai/). If you have questions, reach out to the [support team](https://support.claude.com/) or the [Discord community](https://www.anthropic.com/discord).
---
title: Models overview
source: https://platform.claude.com/docs/en/models/overview
author:
  - "[[Anthropic AI]]"
published:
created: 2026-10-08
description: Claude is a family of state-of-the-art large language models developed by Anthropic. This guide introduces the available models and compares their performance.
tags:
  - clippings
---
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

Lifecycle status and retirement commitments for every model.

Craft and test prompts directly in your browser.

Looking to chat with Claude? Visit [claude.ai](https://claude.ai/). If you have questions, reach out to the [support team](https://support.claude.com/) or the [Discord community](https://www.anthropic.com/discord).
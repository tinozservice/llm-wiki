---
title: Choosing the right model
source: https://platform.claude.com/docs/en/about-claude/models/choosing-a-model
author:
  - "[[Anthropic AI]]"
published:
created: 2026-10-08
description: Choosing a Claude model means balancing capabilities, speed, and cost. This guide covers the questions to ask, two ways to pick a starting model, and how to test the choice.
tags:
  - clippings
---
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

Lifecycle status and retirement commitments for every model.

Craft and test prompts directly in your browser.

Looking to chat with Claude? Visit [claude.ai](https://claude.ai/). If you have questions, reach out to the [support team](https://support.claude.com/) or the [Discord community](https://www.anthropic.com/discord).
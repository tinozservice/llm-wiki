---
title: Cerebras Choose a Model
source: https://inference-docs.cerebras.ai/models/choose-a-model
author:
published:
created: 2026-10-01
description: Find the right open-source model for your workload on Cerebras, including alternatives for Claude, GPT, and Gemini.
tags:
  - clippings
---
Not sure where to start? [Ask the assistant](https://inference-docs.cerebras.ai/models/choose-a-model?assistant=Which%20model%20should%20I%20use%3F) — it can recommend a model based on your use case.

Use this guide to find the right model for your use case on Cerebras. All models listed below are available through **[Dedicated Inference](https://inference-docs.cerebras.ai/dedicated/overview)** for enterprise workloads with reserved capacity. A subset is also accessible through **Shared Inference** with no additional setup.

For architectural guidance on getting the most out of Cerebras speed, see [Designing for Cerebras](https://inference-docs.cerebras.ai/resources/designing-for-cerebras).

| Category | Use Case | Large (>200B) | Medium (20B–200B) | Small (<20B) | Why Cerebras? |
| --- | --- | --- | --- | --- | --- |
| Code & Development | Code generation & reasoning | [Kimi K2.7 Code](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [GLM 5.1](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [MiniMax M2.5](https://inference-docs.cerebras.ai/dedicated/overview#supported-models) | [Qwen 3.8 27B](https://inference-docs.cerebras.ai/models/qwen-3.8-27b) *(Public)*   [Gemma 4 31B](https://inference-docs.cerebras.ai/dedicated/overview#supported-models) |  | Reason through entire codebases, including complex requirements, dependencies, and edge cases, without disrupting developer workflows. |
|  | Code completion & bug fixing | [MiniMax M2.5](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [Kimi K2.7 Code](https://inference-docs.cerebras.ai/dedicated/overview#supported-models) | [Qwen 3.8 27B](https://inference-docs.cerebras.ai/models/qwen-3.8-27b) *(Public)*   [Gemma 4 31B](https://inference-docs.cerebras.ai/dedicated/overview#supported-models) |  | Generate, critique, and repair code at the speed you type. |
|  | Terminal tasks | [GLM 5.1](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [Kimi K2.7 Code](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [MiniMax M2.5](https://inference-docs.cerebras.ai/dedicated/overview#supported-models) | [Qwen 3.8 27B](https://inference-docs.cerebras.ai/models/qwen-3.8-27b) *(Public)*   [GPT OSS 120B](https://inference-docs.cerebras.ai/models/openai-oss) *(Public)* |  | Agents can reason between commands, inspect results, and continue acting while the experience remains interactive. |
|  | Long-horizon autonomous coding | [Kimi K2.7 Code](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [GLM 5.1](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [MiniMax M2.5](https://inference-docs.cerebras.ai/dedicated/overview#supported-models) |  |  | Run long agent loops with strong open-source models, reducing hours of work to minutes. |
| AI-Powered Apps | Agents with tool use | [Kimi K2.7 Code](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [GLM 5.1](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [MiniMax M2.5](https://inference-docs.cerebras.ai/dedicated/overview#supported-models) | [Qwen 3.8 27B](https://inference-docs.cerebras.ai/models/qwen-3.8-27b) *(Public)*   [GPT OSS 120B](https://inference-docs.cerebras.ai/models/openai-oss) *(Public)* |  | Make more tool calls, complete more plan, act, and observe loops, and attempt more recoveries in a single user turn. |
|  | Professional workflows | [Kimi K2.6](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [GLM 5.1](https://inference-docs.cerebras.ai/dedicated/overview#supported-models) | [Qwen 3.8 27B](https://inference-docs.cerebras.ai/models/qwen-3.8-27b) *(Public)*   [Gemma 4 31B](https://inference-docs.cerebras.ai/dedicated/overview#supported-models) |  | Complete more planning, comparison, and verification steps in the same time window. |
|  | Summarization | [Kimi K2.6](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [GLM 5.1](https://inference-docs.cerebras.ai/dedicated/overview#supported-models) | [Gemma 4 31B](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [GPT OSS 120B](https://inference-docs.cerebras.ai/models/openai-oss) *(Public)* |  | Process longer contexts and synthesize information without making users wait. |
|  | Conversational chat | [MiniMax M2.5](https://inference-docs.cerebras.ai/dedicated/overview#supported-models) | [GPT OSS 120B](https://inference-docs.cerebras.ai/models/openai-oss) *(Public)* |  | Create responsive, natural conversations for consumer-facing assistants. |
|  | Low-latency NLU & extraction |  | [Gemma 4 31B](https://inference-docs.cerebras.ai/dedicated/overview#supported-models) |  | Extract and validate structured data fast enough for production workflows. |
| Vision & Multimodal | Vision & document understanding | [Kimi K2.7 Code](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [Kimi K2.6](https://inference-docs.cerebras.ai/dedicated/overview#supported-models) | [Qwen 3.8 27B](https://inference-docs.cerebras.ai/models/qwen-3.8-27b) *(Public)*   [Gemma 4 31B](https://inference-docs.cerebras.ai/dedicated/overview#supported-models) |  | Richer reasoning across text, image, and other inputs while keeping multimodal workflows responsive. |

Looking for the full dedicated model catalog? See [Dedicated Inference](https://inference-docs.cerebras.ai/dedicated/overview).

## Migrate from Closed Models

If you’re moving from Claude, GPT, or Gemini, here are open-source alternatives available on Cerebras.

| Provider | Closed Source | Use Case | Open Source Alternatives |
| --- | --- | --- | --- |
| Claude | Claude Opus 4.8 | Multi-hour coding agents, complex multi-file refactors, and difficult reasoning tasks where end-to-end correctness is critical | [Kimi K2.6](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [Kimi K2.7 Code](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [GLM 5.1](https://inference-docs.cerebras.ai/dedicated/overview#supported-models) |
|  | Claude Sonnet 5 | Daily coding and IDE-adjacent agent loops that balance speed and intelligence | **Primary:** [GLM 5.1](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   **Fallbacks:** [Kimi K2.7 Code](https://inference-docs.cerebras.ai/dedicated/overview#supported-models), [Qwen 3.8 27B](https://inference-docs.cerebras.ai/models/qwen-3.8-27b) *(Public)* |
|  | Claude Haiku 4.5 | Customer support, classification, extraction, short-form generation, and subagents in multi-agent systems | [Gemma 4 31B](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [GPT OSS 120B](https://inference-docs.cerebras.ai/models/openai-oss) *(Public)*   [MiniMax M2.5](https://inference-docs.cerebras.ai/dedicated/overview#supported-models) |
| OpenAI GPT | GPT 5.6 Terra | Balanced reasoning and coding for subagents in agentic systems | [Kimi K2.6](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [Kimi K2.7 Code](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [GLM 5.1](https://inference-docs.cerebras.ai/dedicated/overview#supported-models) |
|  | GPT 5.6 Luna | Classification, extraction, ranking, and low-cost coding subagents | [Qwen 3.8 27B](https://inference-docs.cerebras.ai/models/qwen-3.8-27b) *(Public)* |
|  | GPT 5.4 Nano/Mini | Balanced reasoning and coding, subagents in agentic systems, and structured tasks | [MiniMax M2.5](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [Gemma 4 31B](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [GPT OSS 120B](https://inference-docs.cerebras.ai/models/openai-oss) *(Public)* |
| Gemini | Gemini 3.1 Pro | Image understanding for coding, document analysis, and scientific reasoning | [Kimi K2.6](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [GLM 5.1](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [Qwen 3.8 27B](https://inference-docs.cerebras.ai/models/qwen-3.8-27b) *(Public)* |
|  | Gemini 3.5 Flash Lite | Low-latency multimodal chat and tool use for real-time experiences | [Gemma 4 31B](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [GPT OSS 120B](https://inference-docs.cerebras.ai/models/openai-oss) *(Public)*   [MiniMax M2.5](https://inference-docs.cerebras.ai/dedicated/overview#supported-models)   [Qwen 3.8 27B](https://inference-docs.cerebras.ai/models/qwen-3.8-27b) *(Public)* |

Explore the full model catalog under [Dedicated Inference](https://inference-docs.cerebras.ai/dedicated/overview), or get started with the [Quickstart](https://inference-docs.cerebras.ai/quickstart).
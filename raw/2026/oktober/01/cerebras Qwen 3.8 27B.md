---
title: "cerebras Qwen 3.8 27B"
source: "https://inference-docs.cerebras.ai/models/qwen-3.8-27b"
author:
published:
created: 2026-10-01
description: "Alibaba's 27B dense multimodal model for agentic coding, tool use, research, and long-running workflows. It accepts text and image inputs and supports configurable reasoning."
tags:
  - "clippings"
---
Model ID

### Model Stats

SPEED

~1850

tokens/sec

CONTEXT WINDOW

Free64k tokens

Paid128k tokens

MAX OUTPUT

Free32k tokens

Paid40k tokens

MODALITY

InputText, Image

OutputText

### Pricing

per million tokens

Input

$0.99

Output

$1.49

Developer pricing. For volume discounts and enterprise features, see our [pricing page](https://www.cerebras.ai/pricing).

### Model Notes

Reasoning is enabled by default at `high`. Set `reasoning_effort` to `none` to disable it. See the [reasoning guide](https://inference-docs.cerebras.ai/capabilities/reasoning).

Image inputs are supported only through Chat Completions and must be base64-encoded PNG or JPEG data URIs. External image URLs, image detail controls, image generation, video, and audio are not supported. See the [Image Inputs guide](https://inference-docs.cerebras.ai/capabilities/image-inputs).

Structured outputs and tool calling with `strict: true` are supported. See the [Structured Outputs guide](https://inference-docs.cerebras.ai/capabilities/structured-outputs) for current schema support and limitations.

Chat Completions returns text only. The Completions endpoint does not support images, reasoning controls, structured chat messages, or tools.

### Rate Limits

Tier

Requests / min

Uncached tokens / min

Total tokens / min

Daily tokens

Images / request

Free Trial

5

30K

90K

1M

2

Developer

300

150K

750K

N/A

10

### Endpoints

- [Chat Completions](https://inference-docs.cerebras.ai/api-reference/chat-completions) `/v1/chat/completions`
- [Completions](https://inference-docs.cerebras.ai/api-reference/completions) `/v1/completions`

### Capabilities

- Image Inputs
- Reasoning
- Streaming
- Sampling Controls
- Structured Outputs
- Tool Calling
- Parallel Tool Calling
- Prompt Caching

### Need Higher Limits?

Reach out for custom pricing with our Enterprise tier for higher rate limits and dedicated support.
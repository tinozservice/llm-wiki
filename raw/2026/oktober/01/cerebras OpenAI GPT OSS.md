---
title: cerebras OpenAI GPT OSS
source: https://inference-docs.cerebras.ai/models/openai-oss
author:
  - "[[cerebras.ai]]"
published:
created: 2026-10-01
description: This model excels at efficient reasoning across science, math, and coding applications. It's ideal for real-time coding assistance, processing large documents for Q&A and summarization, agentic research workflows, and regulated on-premises workloads.
tags:
  - clippings
---
Model ID

### Model Stats

SPEED

~3000

tokens/sec

CONTEXT WINDOW

Free65k tokens

Paid131k tokens

MAX OUTPUT

Free32k tokens

Paid40k tokens

MODALITY

InputText

OutputText

### Pricing

per million tokens

Input

$0.35

Output

$0.75

Developer pricing. For volume discounts and enterprise features, see our [pricing page](https://www.cerebras.ai/pricing).

### Model Notes

Use the `reasoning_effort` parameter to control reasoning for this model. The default effort level is `medium`. Learn more in our [reasoning guide](https://inference-docs.cerebras.ai/capabilities/reasoning#gpt-oss:-reasoning_effort).

When `min_tokens` is set, the model may generate EOS (End of Sequence) tokens which may cause parser failures. **Use at your own risk.**

This model may call tools that aren't directly specified due to its training. Monitor for non-approved tools and reprompt with "you're hallucinating a tool call" to help the model self-correct and stick to provided tools.

For this model, our API maps the "system" role to developer-level instructions in our prompt hierarchy. See our [OpenAI Compatibility guide](https://inference-docs.cerebras.ai/resources/openai#developer-role) for more details.

In Chat Completions, standard sampling controls are supported, including `temperature`, `top_p`, `frequency_penalty`, `presence_penalty`, `seed`, and `logit_bias`. See the [Chat Completions API reference](https://inference-docs.cerebras.ai/api-reference/chat-completions) for parameter details.

### Rate Limits

Tier

Requests / min

Input tokens / min

Daily tokens

Free Trial

5

30k

1M

Developer

1K

1M

N/A

### Endpoints

- [Chat Completions](https://inference-docs.cerebras.ai/api-reference/chat-completions) `/v1/chat/completions`
- [Completions](https://inference-docs.cerebras.ai/api-reference/completions) `/v1/completions`

### Capabilities

- Reasoning
- Streaming
- Sampling Controls
- Structured Outputs
- Tool Calling
- Prompt Caching

### Need Higher Limits?

Reach out for custom pricing with our Enterprise tier for higher rate limits and dedicated support.
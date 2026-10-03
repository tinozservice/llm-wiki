---
title: cerebras Reasoning
source: https://inference-docs.cerebras.ai/capabilities/reasoning
author:
  - "[[cerebras.ai]]"
published:
created: 2026-10-01
description: Control reasoning effort, response format, and multi-turn reasoning behavior.
tags:
  - clippings
---
Reasoning models generate intermediate thinking tokens before their final response. Model families differ in whether reasoning can be disabled, how effort levels behave, and how reasoning is returned.

| Model | Default | `reasoning_effort` | Disable reasoning | Availability |
| --- | --- | --- | --- | --- |
| [`qwen-3.8-27b`](https://inference-docs.cerebras.ai/models/qwen-3.8-27b) | `high` | `none`, `low`, `medium`, `high` | Set `reasoning_effort` to `none` | Shared Inference |
| `kimi-k2.7-code` | Always enabled | Accepted but ignored | Not supported | Customer trials only |
| [`gpt-oss-120b`](https://inference-docs.cerebras.ai/models/openai-oss) | `medium` | `low`, `medium`, `high` | Not supported | Shared Inference |
| [`gemma-4-31b`](https://inference-docs.cerebras.ai/dedicated/overview#supported-models) | Disabled | `none`, `low`, `medium`, `high` | Set `reasoning_effort` to `none` | Dedicated Inference |

Reasoning tokens count toward `max_completion_tokens` and the completion-token usage reported by the API.

## Reasoning format

Use `reasoning_format` to control how supported models return reasoning.

| Format | Behavior |
| --- | --- |
| `parsed` | Returns reasoning separately in `choices[0].message.reasoning` or streaming `choices[0].delta.reasoning` |
| `raw` | Prepends reasoning to the final content when the model supports it |
| `hidden` | Omits reasoning text while still generating and counting reasoning tokens |
| `none` | Uses the model’s default response format |

Format support is model-specific:

| Model | Default response behavior | `raw` | `hidden` |
| --- | --- | --- | --- |
| `qwen-3.8-27b` | Reasoning returned separately | Does not change the separated response format | Not supported |
| `kimi-k2.7-code` | `parsed` | Supported | Not supported |
| `gpt-oss-120b` | Parsed reasoning | Supported | Supported |
| `gemma-4-31b` | Reasoning disabled until enabled | Not supported | Not supported |

For `kimi-k2.7-code`, do not combine `reasoning_format` set to `raw` with `response_format` types `json_object` or `json_schema`.

### Parsed response

```python
from cerebras.cloud.sdk import Cerebras

client = Cerebras()

response = client.chat.completions.create(
    model="qwen-3.8-27b",
    messages=[{"role": "user", "content": "Which is larger, 9.11 or 9.9? Explain."}],
    reasoning_format="parsed",
)

print(response.choices[0].message.reasoning)
print(response.choices[0].message.content)
```

For streaming responses, reasoning arrives in `choices[0].delta.reasoning` and final-answer text arrives in `choices[0].delta.content`.

## Qwen 3.8 27B

`qwen-3.8-27b` enables reasoning by default at `high` effort.

| Value | Behavior |
| --- | --- |
| `none` | Disables reasoning |
| `low` | Selects Qwen’s low reasoning mode |
| `medium` | Selects Qwen’s medium reasoning mode |
| `high` | Selects Qwen’s native `xhigh` mode and is the default |

Effort levels select reasoning modes. They do not reserve or guarantee an exact reasoning-token budget.

```python
response = client.chat.completions.create(
    model="qwen-3.8-27b",
    messages=[{"role": "user", "content": "Find the bug in this concurrency design."}],
    reasoning_effort="high",
)
```

To disable reasoning for a simpler request:

```python
response = client.chat.completions.create(
    model="qwen-3.8-27b",
    messages=[{"role": "user", "content": "Return only the word ready."}],
    reasoning_effort="none",
)
```

Do not send Qwen-native parameters such as `disable_reasoning`, `enable_thinking`, `preserve_thinking`, or `thinking_budget`. Use `reasoning_effort` and `clear_thinking` instead.

### Multi-turn reasoning and clear\_thinking

Chat Completions is stateless, so your application must resend conversation history. When you include an earlier assistant message with its `reasoning` field, `clear_thinking` controls whether Qwen receives that historical reasoning:

| Value | Behavior |
| --- | --- |
| `false` or omitted | Preserves historical assistant reasoning. This is the default. |
| `true` | Removes historical assistant reasoning before the model is prompted. Assistant final-answer content remains in the history. |

```python
from cerebras.cloud.sdk import Cerebras

client = Cerebras()

messages = [{"role": "user", "content": "Design a retry strategy for this job queue."}]
first = client.chat.completions.create(
    model="qwen-3.8-27b",
    messages=messages,
)

assistant = first.choices[0].message
messages.extend([
    {
        "role": "assistant",
        "content": assistant.content,
        "reasoning": assistant.reasoning,
    },
    {"role": "user", "content": "Now account for duplicate delivery."},
])

# Preserve the earlier reasoning. This is also the default when omitted.
preserved = client.chat.completions.create(
    model="qwen-3.8-27b",
    messages=messages,
    clear_thinking=False,
)

# Use the same visible conversation, but remove earlier reasoning from the prompt.
cleared = client.chat.completions.create(
    model="qwen-3.8-27b",
    messages=messages,
    clear_thinking=True,
)
```

## Kimi K2.7 Code

`kimi-k2.7-code` is currently available only for customer trials. Reasoning is always enabled. The API accepts `reasoning_effort` for client compatibility but ignores its value, including `none`.

```python
response = client.chat.completions.create(
    model="kimi-k2.7-code",
    messages=[{"role": "user", "content": "Review this patch for race conditions."}],
    reasoning_effort="low",  # Accepted, but does not change Kimi's reasoning behavior.
    reasoning_format="parsed",
)
```

Kimi defaults to parsed reasoning and also supports `raw`. It does not support `hidden`. `clear_thinking` is not implemented and should not be sent.

## GPT OSS 120B

Use `reasoning_effort` to select `low`, `medium`, or `high`. The default is `medium`.

```python
response = client.chat.completions.create(
    model="gpt-oss-120b",
    messages=[{"role": "user", "content": "Explain quantum entanglement."}],
    reasoning_effort="medium",
)
```

GPT OSS supports parsed, raw, and hidden reasoning formats. When using `raw`, reasoning and final content are concatenated without separators.

## Gemma 4 31B

Reasoning is disabled by default for `gemma-4-31b`.

| Value | Behavior |
| --- | --- |
| `none` | Reasoning disabled and is the default |
| `low`, `medium`, or `high` | Reasoning enabled. The three active values currently behave equivalently. |

Gemma 4 does not support `raw`, `hidden`, or `clear_thinking`.

```python
response = client.chat.completions.create(
    model="gemma-4-31b",
    messages=[{"role": "user", "content": "Solve this step by step."}],
    reasoning_effort="medium",
)
```

## OpenAI client parameters

`reasoning_effort` is a standard OpenAI client parameter. Pass Cerebras-specific parameters such as `reasoning_format` and `clear_thinking` through `extra_body`. See [OpenAI Compatibility](https://inference-docs.cerebras.ai/resources/openai#pass-non-standard-parameters).
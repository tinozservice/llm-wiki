---
title: "Token Harbor docs Prompt caching on Claude"
source: "https://tokenharbor.ai/docs/api/prompt-caching"
author:
  - "[[Token Harbor]]"
published:
created: 2026-10-02
description: "Claude bills a reused prompt at a tenth. Token Harbor marks the reusable part for you when your client does not — on both endpoints. What that covers, what it does not, and how to check."
tags:
  - "clippings"
---
## Prompt caching on Claude

Claude does not cache on its own. Something has to mark where the reusable part of a prompt ends; everything before that mark is billed at a tenth on later turns — a twenty-fifth on Claude Fable 5.1. A client that places the mark gets a very large discount on a long conversation. A client that does not pays full price for the same tokens, every turn, forever.

Most OpenAI-shaped clients do not place it, because the field is Anthropic's and has no place in the OpenAI request format.

## What Token Harbor does for you

**When your request carries no cache marks of its own, we add one.** This happens on both endpoints — `/v1/chat/completions` and `/v1/messages` — and on the web chat. You do not need to change your client, and you do not need to switch endpoints to get it.

We only do it where reuse is near certain: the request carries tools, or the conversation is already three messages deep, and the reusable prefix is over about 1,200 tokens. A cache *write* costs 1.25×, so marking a one-shot request would make it more expensive, not less. When in doubt we leave your request alone.

**If you send your own `cache_control`, we never touch it.** One mark anywhere — on a tool, a system block, a message block — and the request is yours to control.

## What is covered

|  |  |
| --- | --- |
| Claude | Tools and system prompt always; **conversation history on some connections and not others** |
| Every non-Claude model | Nothing to do — they cache automatically or not at all |

A Claude request may be served over more than one connection, and they do not all cache the same amount. Which one serves a given request can change without notice, so the coverage above is a floor, not a promise.

If you want the conversation history cached with certainty, place your own mark: it works everywhere, it overrides ours, and it does not depend on which connection you happen to get.

## Placing your own mark

The standard pattern for a growing conversation is one mark on the last content block of each request. Keep it there as the conversation grows — do not remove earlier ones, and do not try to move it by hand.

```
{
  "model": "claude-fable-5.1",
  "messages": [
    { "role": "user", "content": "…" },
    { "role": "assistant", "content": "…" },
    {
      "role": "user",
      "content": [
        { "type": "text", "text": "…", "cache_control": { "type": "ephemeral" } }
      ]
    }
  ]
}
```

`/v1/chat/completions` accepts `cache_control` on a content block even though it is not an OpenAI field — we forward it rather than dropping it.

Two limits worth knowing, both Anthropic's: at most **four** marks per request counted across tools, system and messages; and a cache lookup walks back at most **20 content blocks** to find the previous entry. A single turn that emits more than twenty blocks — an agent making many tool calls — can step past its own previous mark, and the fix is a second mark part-way through.

## Checking whether it worked

Every response carries the numbers:

```
"usage": {
  "input_tokens": 812,
  "cache_creation_input_tokens": 11702,
  "cache_read_input_tokens": 0
}
```
- `cache_creation_input_tokens` — written this turn, billed at 1.25×
- `cache_read_input_tokens` — read from cache, billed at 0.1× (0.025× on Fable 5.1)

On the second turn of a conversation you should see `cache_read` climb and `input_tokens` stay small. **If `cache_read` is stuck at the same number while your input grows, only your static prefix is being cached** — that is the symptom of the history not being covered, and the fix is the mark above.

Cached entries live for 5 minutes, refreshed on each hit.

## A note on other gateways

Comparing cache ratios between providers is only meaningful when the request is the same. A client sending Anthropic-native requests places its own marks, and any gateway passing those through will report high ratios. The same client in OpenAI-compatible mode sends no marks at all, and what you are then comparing is each gateway's own behaviour, not the model's.
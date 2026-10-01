---
title: "Token Harbor docs Models"
source: "https://tokenharbor.ai/docs/api/models"
author:
  - "[[Token Harbor]]"
published:
created: 2026-10-02
description: "The live catalog and how we bill per token."
tags:
  - "clippings"
---
## Models

Every model wired into Token Harbor is listed on [/models](https://tokenharbor.ai/models). One Universal Key gets you all of them — no per-vendor signup, no per-vendor balance to keep topped up.

## How we bill

**Metered per token, no flat per-turn fee.** Every call costs:

```
cost = (input_tokens × upstream_in_per_1m + output_tokens × upstream_out_per_1m)
       / 1,000,000
       × (1 + markup_pct / 100)
```
- `upstream_*_per_1m` — the vendor's published input/output price for the model. Visible on every [/models](https://tokenharbor.ai/models) card.
- `markup_pct` — Token Harbor's per-model markup over upstream. Default is 0% today.

There is no volume discount and no per-turn fee: the per-token price on the model's card is the whole price.

**What counts as `input_tokens`.** Token counts come from the upstream provider's own usage report on the final request body.

- **Direct model calls** — when you name a specific model id, your `system` and `messages` are forwarded byte-for-byte. The gateway adds nothing, so you are billed for exactly the tokens you sent plus the tokens the model returned.

Three caching layers further reduce real billed amount:

| Layer | Triggered when | What it saves |
| --- | --- | --- |
| **Upstream cache** (vendor side) | Long repeated prefixes (≥1024 tokens). Marked with the `Upstream cache` badge on [/models](https://tokenharbor.ai/models). | ~90% off the cached input portion. |
| **Semantic cache** (Token Harbor) | Same/very-similar question seen recently. | 100% — billed $0, no upstream call. |
| **Exact cache** (Token Harbor) | Same model + same messages + same sampling within 5 minutes. | 100% — billed $0, no upstream call. |

Cache savings show as a green dollar line on [/dashboard/usage](https://tokenharbor.ai/dashboard/usage) under Today's Usage.

## Knowing what you're paying

- [/models](https://tokenharbor.ai/models) shows every model's live price, release date, and knowledge cutoff.
- [/v1/models](https://tokenharbor.ai/v1/models) returns the same data as JSON for SDKs that pre-fetch the catalog.
- [/dashboard/usage](https://tokenharbor.ai/dashboard/usage) shows your last 100 requests with the exact tokens-in / tokens-out / cost-paid for each one. Export to CSV from there.

## Bypassing or forcing cache

Per-request control via header:

| Header | Behaviour |
| --- | --- |
| `X-TH-Cache-Control: bypass` | Skip lookup. The response is still written into the exact cache so the *next* identical request can hit. |
| `X-TH-Cache-Control: force-refresh` | Skip lookup AND skip write. Pure passthrough — useful for testing/fresh-roll scenarios. |

When a response is served from cache, the route adds `X-TH-Cache-Layer: exact` (or `semantic`) so your client can tell.

## Context limits

We never truncate your conversation. Each request goes straight to the upstream; if the upstream refuses with `context_length_exceeded`, that error is forwarded verbatim.
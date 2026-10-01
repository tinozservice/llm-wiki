---
title: "Token Harbor docs Rate limits"
source: "https://tokenharbor.ai/docs/api/rate-limits"
author:
  - "[[Token Harbor]]"
published:
created: 2026-10-02
description: "How many requests you can send, per account and per IP — and why paid accounts have no request-rate limit at all."
tags:
  - "clippings"
---
## Rate limits

These limits apply to the API: `/v1/chat/completions`, `/v1/messages`, `/v1/responses` and `/v1/images/generations`. Web chat has its own, listed on [Web chat limits](https://tokenharbor.ai/docs/web-chat/limits).

## Paid accounts

An account with an active Pass, or any account that has topped up its wallet, has **no requests-per-minute or requests-per-hour limit**.

## Free accounts

- **60 requests/minute and 1,800 requests/hour** per account, shared across all your API keys and all models.
- **100 requests/minute and 3,000 requests/hour** per IP address.
- Image generation: **10 requests/minute and 150 requests/hour**.
- The free promotional models have no extra per-model limit — only the account limits above.

## Concurrency

There is no limit on concurrent requests, on any plan.

## What counts as a request

Each API call is one request. In agent tools — Claude Code, Codex, Cursor, opencode and the rest — every tool-call round trip is its own call, so a single task can use several requests.

## When you go over

You get HTTP `429` with a `Retry-After` header. Wait that many seconds and send the request again; the agent tools above do this for you.

## Key limits are spending caps

The limits you set on an API key in the [dashboard](https://tokenharbor.ai/dashboard/api-keys) are caps in USD, not request rates. They stop a key once it has spent that much.
---
title: "Token Harbor docs How we measure speed"
source: "https://tokenharbor.ai/docs/api/speed"
author:
  - "[[Token Harbor]]"
published:
created: 2026-10-02
description: "The usage page reports two speeds per request — how fast the model wrote, and how fast it read your prompt. Both are measured the same way for every model. Here is the exact arithmetic, and why a number here can differ from one a vendor publishes."
tags:
  - "clippings"
---
## How we measure speed

Every request on your [usage page](https://tokenharbor.ai/dashboard/usage) carries a speed figure. There are two of them, they answer different questions, and neither is an estimate — both come from timestamps taken on the connection that served your request.

## The headline: tokens per second

```
tok/s  =  output tokens  ÷  generation time
```

**Generation time** is the stretch during which words were actually arriving: the total time the upstream response took, minus the wait before its first token. If a reply took 12.0 seconds and the first token arrived after 4.0, the generation time is 8.0 seconds — and 1,000 output tokens over that is 125 tok/s.

**Output tokens** is everything the model produced, including hidden reasoning tokens on models that think before answering. Both are billed as output, so both are counted here. Hovering the output column breaks out the split.

## The second line: prefill, or the wait

Under the headline you will see one of two things.

**`15.6k tok/s prefill`** — how fast the model read your prompt:

```
prefill  =  prompt tokens  ÷  time to first token
```

Prompt tokens include any served from cache. A 77,000-token prompt whose first token came back in 4.9 seconds was read at about 15,600 tokens a second. This is the half of the work a long-context agent spends most of its time on, and it is reported the way inference benchmarks report it.

**`4.3s to first`** — the same fact stated as a wait, shown when the prompt is under 16,000 tokens.

Below that size, time-to-first-token is not a reading measurement. It sits at roughly two to six seconds no matter how small the request, because what it measures is the round trip and the queue rather than the prompt. Dividing a 32-token prompt by it yields "48 tok/s", which is both true and useless — it reads as though the model were slower than it is. Measured across 24 hours of live traffic, prefill by prompt size:

| Prompt size | Prefill rate |
| --- | --- |
| under 200 tokens | 30 tok/s |
| 200 – 1k | 147 tok/s |
| 1k – 4k | 616 tok/s |
| 4k – 16k | 2,887 tok/s |
| 16k – 64k | 9,536 tok/s |
| over 64k | 21,720 tok/s |

(Median, measured over 24 hours of live traffic across all models.)

16k is where the figure stops describing latency and starts describing throughput, so that is where we switch. In that same window it covered 71% of requests.

## The two are never added together

Reading 77,000 tokens in 4.9s and writing 1,000 in 8.0s does not make a model that runs at 8,400 tokens a second. Adding them produces a real number for a question nobody asked, and it would be read as a writing speed. They stay separate.

## Why a row sometimes shows a dash

If the generation phase measured under 200 milliseconds, we print `—` instead of a rate.

Some upstreams buffer a whole reply and flush it in one frame. When that happens the first token and the last token arrive together, the generation phase collapses to a few milliseconds, and the division prints something like "22,000 tok/s". That is not a generation rate — it is the shape of the delivery. We would rather say nothing than say that. It affects about 3% of requests, almost all of them short ones.

A dash also appears when there is nothing to divide: the request failed before a model answered, or it returned no output tokens at all.

## What the clock includes

Both clocks start when we open the connection to the model provider and stop when its response ends. What is inside:

- queueing and inference at the provider that served this request

What is outside:

- your network round trip to us
- our routing, authentication and billing work
- the time your own client takes to consume the stream

So the figure is about the model, not about us. If a request felt slower than the speed shown, the gap is in one of the three lines above — most often the third, since a client that pauses between chunks stretches wall-clock time without touching generation time.

## Why this can differ from a published figure

Vendors quote speeds from a controlled setup: a short prompt, a warm dedicated endpoint, one request at a time, no competing load. We compute the same ratio — output tokens over generation time — but from one real request, sent at the moment you sent it, through whichever provider was serving that model then.

Two consequences worth knowing:

- **The provider varies.** Most models are reachable through more than one upstream, and they are not equally fast. The provider that served a given request is shown in its row.
- **A single request is a sample.** Queue depth moves minute to minute. Judge a model on the spread of a few hundred of your own rows, not on one.

We do not adjust, smooth, or round these numbers in our favour. The dash is there for the same reason: a figure we cannot measure honestly is not printed.
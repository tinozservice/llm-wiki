---
title: Cerebras Cloud. limits
source: https://cloud.cerebras.ai/platform/org_redacted/project/prj_redacted/limits
author:
  - "[[cerebras.ai]]"
published:
created: 2026-10-01
description: Cerebras Inference AI is the fastest in the world.
tags:
  - clippings
---
Models available to your organization with their rate limits. To view usage, visit the [Analytics tab.](https://cloud.cerebras.ai/platform/org_redacted/analytics)

<table><thead><tr><th>Model</th><th>Max Context Length</th><th>Max Completion Tokens</th><th>Type</th><th>Quota</th></tr></thead><tbody><tr><td rowspan="4"><p>qwen-3.8-27blatest release</p></td><td rowspan="4">131,072</td><td rowspan="4">40,960</td><td>Requests</td><td><p>minute:450day:648,000</p></td></tr><tr><td>Total tokens</td><td><p>minute:750,000day:1,080,000,000</p></td></tr><tr><td>Uncached tokens</td><td><p>minute:150,000day:216,000,000</p></td></tr><tr><td>Images</td><td><p>input per request:10</p><a href="https://inference-docs.cerebras.ai/capabilities/image-inputs">Learn more about image input support</a></td></tr><tr><td rowspan="3"><p>gpt-oss-120b</p></td><td rowspan="3">131,000</td><td rowspan="3">40,000</td><td>Requests</td><td><p>minute:5day:2,400</p></td></tr><tr><td>Total tokens</td><td><p>minute:90,000day:3,000,000</p></td></tr><tr><td>Uncached tokens</td><td><p>minute:30,000day:1,000,000</p></td></tr></tbody></table>

Please note:
1. You may experience rate limits over shorter time intervals. For example, a rate limit of 60 requests per minute (RPM) may be enforced as 1 requests per second. This also helps us mitigate against misuse and make sure everybody gets fair access to the platform.
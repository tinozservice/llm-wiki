---
title: "OpenAI Dev — API Models (katalog)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openai, api, models]
---

# OpenAI Dev — API Models (katalog)

- **Sumber**: developers.openai.com/api/docs/models
- **Penulis**: OpenAI
- **URL**: <https://developers.openai.com/api/docs/models>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenAI Dev. OpenAI API. models.md`

## TL;DR

Katalog model API: **flagship** — `gpt-6-astra` ($10/$50; cutoff 30 Apr 2026), `gpt-6.1-sol` ($2/$10), `gpt-6-luna` ($0.10/$0.50) — semuanya **konteks 1,05M**, max output 128K, text+image input, tools: Functions/Web search/File search/Computer use. **Specialized**: `gpt-5.6-cyber` (Daybreak, cyber defender), **GPT-Rosalind** (life sciences), image models, `gpt-4o-mini-tts`.

## Key points

- Semua model terbaru: text+image input, text output, multilingual, vision; tersedia via Responses API + SDK.
- Reasoning effort per model: Astra `low…max`; Sol `low…max`; Luna `none…max`.

## Notable quotes

> "Start with GPT-6 Astra for complex reasoning and coding, choose GPT-6.1 Sol to balance intelligence and cost, or use GPT-6 Luna for cost-sensitive, high-volume workloads."

## What this changes

- Melengkapi [entitas OpenAI](../entities/openai.md).
- Tidak ada kontradiksi.

## Related

- [OpenAI](../entities/openai.md)
- [OpenAI API — Pricing](openai-dev-pricing.md) · [GPT-6 Luna](openai-dev-gpt-6-luna.md)

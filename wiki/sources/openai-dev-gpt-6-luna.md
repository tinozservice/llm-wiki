---
title: "OpenAI Dev — GPT-6 Luna (halaman model API)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openai, api, gpt-6-luna]
---

# OpenAI Dev — GPT-6 Luna (halaman model API)

- **Sumber**: developers.openai.com/api/docs/models/gpt-6-luna
- **Penulis**: OpenAI
- **URL**: <https://developers.openai.com/api/docs/models/gpt-6-luna>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenAI Dev. GPT-6 Luna Model  OpenAI API.md`

## TL;DR

Spesifikasi API `gpt-6-luna` (resmi): **$0.10/$0.50** per 1M token; cached input **$0.01**; cache writes **$0.125**; **konteks 1.050.000 token**; max output **128K**; knowledge cutoff 18 Mei 2026; input text+image, output text; reasoning `none/low/medium(default)/high/xhigh/max`; tools Responses API lengkap (web/file search, image gen, code interpreter, hosted shell, apply patch, skills, computer use, MCP, tool search).

## Key points

- Prompt >272K input token: **2× harga input & cache, 1.5× output** untuk seluruh request; regional processing +10%; Batch & Flex = 50% Standard; **Fast mode = 2×**.
- Chat Completions hanya mendukung function calling dengan `reasoning_effort=none`; Responses API untuk tools lengkap.
- Rate limit per tier API: Build 5K RPM/2M TPM; Launch 10K/10M; Grow 30K/180M (Free tidak didukung).
- Endpoint luas: live, chat, responses, realtime (+translation/transcription), assistants, batch, fine-tuning (tidak didukung), embeddings, images, videos, speech/transcription/translation, moderations.

## Notable quotes

> "Prompts with more than 272K input tokens are priced at 2x input and cache rates and 1.5x output for the full request."

## What this changes

- Data resmi untuk [Perbandingan GPT-6 Luna](../analyses/perbandingan-gpt-6-luna.md) (konteks 1,05 jt; cutoff; rate limit per tier).
- Melengkapi [entitas OpenAI](../entities/openai.md).
- Tidak ada kontradiksi.

## Related

- [OpenAI](../entities/openai.md) · [Perbandingan GPT-6 Luna](../analyses/perbandingan-gpt-6-luna.md)
- [OpenAI API — Pricing](openai-dev-pricing.md)

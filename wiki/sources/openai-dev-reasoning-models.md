---
title: "OpenAI Dev — Reasoning Models (panduan)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openai, api, reasoning]
---

# OpenAI Dev — Reasoning Models (panduan)

- **Sumber**: developers.openai.com/api/docs/guides/reasoning
- **Penulis**: OpenAI
- **URL**: <https://developers.openai.com/api/docs/guides/reasoning>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenAI Dev. Reasoning models  OpenAI API.md`

## TL;DR

Panduan reasoning: model memakai **reasoning token** internal sebelum menjawab (planning, tool use, memulihkan ambiguitas). `reasoning.effort` (Responses) / `reasoning_effort` (Chat Completions): `none/minimal/low/medium/high/xhigh/max` (tergantung model). **GPT-6 Astra tidak mendukung `none`** (HTTP 400); **GPT-6.1 Sol tidak mendukung `none`/`minimal`** dan default `medium`; GPT-5.5 default `medium`. Responses API lebih baik untuk reasoning & wajib untuk function calling di Astra/Sol.

## Key points

- Tabel effort: none (latensi, tanpa reasoning), low (tool use/planning ringan), medium (default paling seimbang), high (debugging/planning berat), xhigh (riset panjang/review), max (paling kompleks).
- **Reasoning mode** (GPT-5.6 & GPT-6): `standard` (default) vs `pro` — mode memilih eksekusi, effort mengontrol kedalaman; pro menambah kerja model & ditagih di tarif token standar.
- Reasoning token tidak terlihat via API tetapi menempati konteks dan **ditagih sebagai output**; lihat `output_tokens_details`.
- GPT-5.6+: default membawa reasoning turn sebelumnya (`reasoning.context` untuk memilih perilaku lama).
- Kontrol biaya: `max_output_tokens` (termasuk reasoning token); sisakan ruang konteks.

## Notable quotes

> "While reasoning tokens are not visible via the API, they still occupy space in the model's context window and are billed as output tokens."

## What this changes

- Melengkapi [entitas OpenAI](../entities/openai.md) & [Perbandingan GPT-6 Luna](../analyses/perbandingan-gpt-6-luna.md) (detail effort/cache).
- Tidak ada kontradiksi.

## Related

- [OpenAI](../entities/openai.md)
- [OpenAI API — Models](openai-dev-models.md) · [GPT-6 Luna](openai-dev-gpt-6-luna.md)

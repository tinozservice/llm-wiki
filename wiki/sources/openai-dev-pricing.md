---
title: "OpenAI Dev — API Pricing (harga resmi)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openai, api, pricing]
---

# OpenAI Dev — API Pricing (harga resmi)

- **Sumber**: developers.openai.com/api/docs/pricing
- **Penulis**: OpenAI
- **URL**: <https://developers.openai.com/api/docs/pricing>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenAI Dev. OpenAI API. Priceing.md`

## TL;DR

Daftar harga API resmi OpenAI per 1M token (short context): **gpt-6-astra $10/$50** (cached $1; cache write $12.50; long context 2× input/$75 out), **gpt-6.1-sol $2/$10** (cached $0.10), **gpt-6-luna $0.10/$0.50** (cached $0.01), gpt-6-sol $2/$10, gpt-5.6-sol $4/$20, gpt-5.6-terra $2/$12, gpt-5.6-luna $0.20/$1.20, gpt-5.5 $5/$30, gpt-5.5-pro & gpt-5.4-pro $30/$180, dst. Model lama (gpt-3.5 dst.) masih dicantumkan.

## Key points

- **Cache writes = 1.25× input** (mis. Astra $12.50); cached input = 10% input (kecuali tercantum lain).
- **Long context** (>272K) memakai kolom kedua (mis. Astra $20/$75).
- **Uplift 10%**: regional processing (data residency) & FedRAMP; "Priority processing" → **Fast mode** (30 Jul 2026); promo GPT-5.6 Sol berlaku ≥21 Nov 2026.
- **Cyber models**: gpt-5.6-cyber & gpt-5.5-cyber $12.50/$75.
- **GPT-Live-1** voice: $0.05/menit (per detik, backend terpisah); realtime audio $32/$64 per 1M (text $4/$24); transcription ~$0.003–0.006/menit; image gen gpt-image-2.5-flare/sunburst image $8/$30 (text $5).
- **Tools**: web search $10/1k calls; containers $0.03–1.92 per 20 menit; file search $0.10/GB-hari + $2.50/1k calls; embedding $0.02–0.13; moderation gratis.
- Fine-tuning **di-wind-down** (tidak untuk pengguna baru).

## Notable quotes

> "Regional processing (data residency) endpoints are charged a 10% uplift."

## What this changes

- **Data resmi** untuk analisis harga wiki ([Perbandingan GPT-6 Luna](../analyses/perbandingan-gpt-6-luna.md) — konfirmasi $0.10/$0.50 resmi + cache read $0.01/write $0.125).
- Tidak ada kontradiksi.

## Related

- [OpenAI](../entities/openai.md) · [Perbandingan GPT-6 Luna](../analyses/perbandingan-gpt-6-luna.md)
- [OpenAI API — Models](openai-dev-models.md)

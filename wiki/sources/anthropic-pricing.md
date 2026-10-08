---
title: "Anthropic docs — Pricing (harga API resmi)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [anthropic, claude, pricing, docs]
---

# Anthropic docs — Pricing (harga API resmi)

- **Sumber**: platform.claude.com — dokumentasi *Pricing* (klip juga memuat bagian spec Haiku 5.5 & Opus 5.5 dari docs model)
- **Penulis**: Anthropic
- **URL**: <https://platform.claude.com/docs/en/about-claude/pricing>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/Claude. Pricing.md`

## TL;DR

Daftar harga resmi Anthropic per 1M token — harga dasar, cache write/read, batch, long context, tool, sampai Managed Agents:

| Model | Input | Output | 5m write | 1h write | Cache hit |
| --- | --- | --- | --- | --- | --- |
| Fable 5.1 / Mythos 5.1 | $10 | $50 | $12.50 | $20 | $0.25 (0,025×) |
| Opus 5.5 | $4 | $20 | $5 | $8 | $0.20 (0,05×) |
| Sonnet 5.5 | $2 | $10 | $2.50 | $4 | $0.10 (0,05×) |
| Haiku 5.5 (≤100K prompt) | $0.10 | $0.50 | $0.125 | $0.20 | $0.01 |
| Haiku 5.5 (>100K prompt) | $0.50 | $2.50 | $0.625 | $1 | $0.05 |

## Key points

- **Multiplier cache**: write 5-menit **1,25×**, write 1-jam **2×**; cache read standar **0,1×**, tetapi **0,025×** di Fable/Mythos 5.1 dan **0,05×** di Opus/Sonnet 5.5. Multiplier menumpuk dengan batch & data residency. Ada mode **automatic caching** (satu field `cache_control`) dan breakpoint eksplisit; minimum cacheable 512 token (Opus 5.5).
- **Batch API**: diskon **50%** input+output (Fable 5.1 $5/$25; Opus 5.5 $2/$10; Sonnet 5.5 $1/$5).
- **Long context**: model 4.6+ (kecuali Haiku 5.5) memakai **1M konteks di harga standar**; Haiku 5.5 bertingkat di 100K token.
- **Tokenizer baru**: Claude 4.7+ (dan Mythos Preview) menghasilkan **~30% lebih banyak token** untuk teks yang sama vs tokenizer lama (Sonnet 4.6 dan sebelumnya).
- **Fast mode**: Opus 5.5 $8/$40; Opus 5/Opus 4.8 $10/$50; hanya Claude API first-party; menumpuk dengan cache & residency; tidak bisa digabung Batch.
- **Data residency**: `inference_geo: "us"` = **1,1×** untuk semua kategori token (juga US Data Zone di Foundry).
- **Billing cloud**: Claude Platform on AWS & Microsoft Foundry memakai **CCU $0,01** (hourly metering via marketplace, postpaid); Bedrock & Google Cloud punya harga sendiri.
- **Tool pricing**: web search **$10 per 1.000 pencarian**; web fetch tanpa biaya tambahan; code execution **gratis** bila bersama web search/fetch, jika tidak $0,05/jam/container setelah **1.550 jam gratis/bulan/org** (minimum 5 menit); overhead system prompt tool ±286 token (Opus/Sonnet 5.5), Bash +325 token (Opus 5/4.8/4.7), computer toolset ±4.500 token, browser toolset ±6.600 token.
- **Claude Managed Agents**: token standar + **runtime $0,08/session-hour** (hanya status `running`); tanpa diskon batch/cloud.
- Rate limit tier: **Start / Build / Scale**; diskon volume dinegosiasikan; pengguna baru dapat kredit gratis kecil.
- Klip juga memuat spec **Haiku 5.5** (rilis 7 Okt 2026; retirement ≥ 7 Okt 2027) dan **Opus 5.5** (rilis 22 Sep 2026; retirement ≥ 22 Sep 2027; output batch beta 300K).

## Notable quotes

> "A cache hit costs 10% of the standard input price, which means caching pays off after one cache read for the 5-minute duration."

## What this changes

- **Verifikasi paritas**: Opus 5.5 $4/$20 dan Sonnet 5.5 $2/$10 = persis listing [Token Harbor](../entities/token-harbor.md)/[Zen](../entities/opencode-zen.md)/[Nous Portal](../entities/hermes-agent.md) di wiki; Fast mode resmi $8/$40 (2×) menjelaskan varian `claude-opus-5-fast` ([Puter](../sources/puter-tutorial-claude.md)).
- Catatan: docs Token Harbor menulis cache read Claude 0,1× (0,025× Fable 5.1) — resmi kini juga punya tier **0,05×** untuk Opus/Sonnet 5.5; perbandingan dicatat di [Anthropic](../entities/anthropic.md).
- Memperkaya [Prompt Caching](../concepts/prompt-caching.md) dengan tarif resmi per model.
- Tidak ada kontradiksi keras.

## Related

- [Anthropic](../entities/anthropic.md)
- [Models overview](anthropic-models-overview.md) · [Plans & pricing](anthropic-plans-pricing.md)
- [Prompt Caching](../concepts/prompt-caching.md)

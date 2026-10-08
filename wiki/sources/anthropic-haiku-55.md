---
title: "Anthropic docs — Claude Haiku 5.5"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [anthropic, claude, haiku, model]
---

# Anthropic docs — Claude Haiku 5.5

- **Sumber**: platform.claude.com — dokumentasi model *Claude Haiku 5.5 overview*
- **Penulis**: Anthropic
- **URL**: <https://platform.claude.com/docs/en/models/haiku-5-5/overview>
- **Tanggal publikasi**: tidak dicantumkan (rilis disebut di halaman: **7 Okt 2026**); klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/Claude Haiku 5.5.md`

## TL;DR

**Claude Haiku 5.5** — model tercepat/termurah lineup: harga **bertingkat** — **$0,10/$0,50** per 1M token untuk prompt ≤100K, **$0,50/$2,50** untuk prompt >100K. Konteks **1M**, output maks **128K** (300K di Batch API beta), adaptive thinking dengan effort `medium`, dan tokenizer baru (teks yang sama ±**30% lebih banyak token** dari Haiku 4.5). Target: klasifikasi, ekstraksi, routing, high-volume, sub-agent.

## Key points

- **Harga lengkap** (≤100K / >100K): input $0.10/$0.50; output $0.50/$2.50; cache 5m $0.125/$0.625; cache 1h $0.20/$1; cache read $0.01/$0.05; batch −50% ([pricing](anthropic-pricing.md)).
- **Perilaku**: adaptive thinking default; **thinking blocks hanya berlaku di akun yang memproduksinya** (atau akun tertaut); jangan set `temperature`/`top_p`/`top_k` (error 400).
- **Lifecycle**: dirilis 7 Okt 2026; retirement tidak lebih cepat dari 7 Okt 2027.
- **Platform**: Claude API, Amazon Bedrock, Google Cloud, Microsoft Foundry, Claude Platform on AWS.
- Resource: prompting guide, reduce latency, system prompt & system card terpisah.

## Notable quotes

> "It uses the same newer tokenizer as Claude 4.7 and later models, so the same text counts as approximately 30% more tokens than on Claude Haiku 4.5."

## What this changes

- Melengkapi lineup resmi [Anthropic](../entities/anthropic.md) (tier harga termurah).
- Tidak ada kontradiksi; catatan tokenizer memperjelas selisih harga agregator vs resmi bila ada.

## Related

- [Anthropic](../entities/anthropic.md)
- [Pricing](anthropic-pricing.md) · [Models overview](anthropic-models-overview.md)

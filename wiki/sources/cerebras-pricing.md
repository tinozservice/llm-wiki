---
title: "Cerebras — Inference Pricing"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [cerebras, pricing]
---

# Cerebras — Inference Pricing

- **Sumber**: Cerebras — halaman harga resmi
- **Penulis**: tidak dicantumkan
- **URL**: <https://www.cerebras.ai/pricing>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/2026/oktober/01/Cerebras Inference Pricing  API and Enterprise Plans.md`

## TL;DR

Dua tier harga: **Developer** (self-serve pay-as-you-go, kredit awal $5, model terbatas: gpt-oss 120b & gemma-4-31b) dan **Enterprise** (kontak sales; semua model, kapasitas produksi, custom weights, fine-tuning/training, prioritas). Harga Developer: **GPT OSS 120B $0.35/$0.75** (~3.000 t/s) dan **Qwen 3.8 27B $0.99/$1.49** (~1.850 t/s). Akses juga lewat partner: AWS Marketplace, OpenRouter, Hugging Face, Vercel.

## Key points

- Perbandingan tier: Developer vs Enterprise (kapasitas produksi, prioritas/rate limit, custom weights, fine-tuning — semuanya hanya Enterprise).
- **Partner APIs**: AWS Marketplace, OpenRouter (provider cerebras), Hugging Face (cerebras), Vercel AI Gateway.
- Harga per 1M token (Developer):

| Model | Kecepatan | Input | Output |
| --- | --- | --- | --- |
| GPT OSS 120B | ~3.000 t/s | $0.35 | $0.75 |
| Qwen 3.8 27B | ~1.850 t/s | $0.99 | $1.49 |

## Notable quotes

> "World's fastest inference"

> "Self-serve pay-as-you-go with free $5 credit to start"

## What this changes

- Melengkapi entitas [Cerebras](../entities/cerebras.md).
- Memperkuat daftar partner/router di wiki (OpenRouter, Vercel, AWS, Hugging Face).
- Tidak ada kontradiksi.

## Related

- [Cerebras](../entities/cerebras.md)
- [Cerebras — Get Started](cerebras-get-started.md)
- [Cerebras — Model Catalog](cerebras-model-catalog.md)

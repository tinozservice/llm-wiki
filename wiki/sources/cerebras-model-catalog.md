---
title: "Cerebras — Model Catalog"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [cerebras, models, shared-inference]
---

# Cerebras — Model Catalog

- **Sumber**: Cerebras — katalog model (Shared Inference)
- **Penulis**: tidak dicantumkan
- **URL**: <https://inference-docs.cerebras.ai/models/overview>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/2026/oktober/01/cerebras Model Catalog.md`

## TL;DR

Cerebras **Shared Inference** saat ini menyediakan dua model — **OpenAI GPT OSS** (`gpt-oss-120b`) dan **Qwen 3.8 27B** — yang bisa dipakai di tier Free Trial dan Pay as You Go. Kecepatannya ekstrem: **~3.000 token/detik** (GPT OSS) dan **~1.850 token/detik** (Qwen). Model lain tersedia lewat Dedicated Inference. Cerebras menegaskan semua model Shared Inference **unpruned**, dengan kuantisasi weight-only saat penyimpanan demi kualitas.

## Key points

- Context terbagi free/paid: GPT OSS 65k/131k; Qwen 3.8 27B 64k/128k.
- Aturan kompresi: tidak ada model dipangkas (pruned) di Shared Inference; REAP hanya untuk riset (tersedia di Hugging Face, tidak dilayani di API produksi).
- Kuantisasi: weight-only, sensitif kualitas disimpan full precision; aktivasi/attention/KV cache tetap full precision.
- Kebijakan stabilitas: arsitektur model untuk model ID yang ada tidak diubah tanpa pemberitahuan; varian pruned (jika ada) akan memakai ID berbeda.

| Model | ID | Parameter | Context (free/paid) | Kecepatan |
| --- | --- | --- | --- | --- |
| OpenAI GPT OSS | `gpt-oss-120b` | 120 miliar | 65k / 131k | ~3.000 t/s |
| Qwen 3.8 27B | `qwen-3.8-27b` | 27 miliar | 64k / 128k | ~1.850 t/s |

## Notable quotes

> "All Shared Inference models are unpruned."

> "Cerebras uses selective weight-only quantization only during storage to preserve maximal quality."

## What this changes

- Melengkapi entitas [Cerebras](../entities/cerebras.md).
- Data kecepatan ini melampaui klaim penyedia lain di wiki (Groq gpt-oss-20b ~1.000 t/s; Inception 1.000+ t/s).
- Tidak ada kontradiksi.

## Related

- [Cerebras](../entities/cerebras.md)
- [Cerebras — OpenAI GPT OSS](cerebras-gpt-oss.md)
- [Cerebras — Qwen 3.8 27B](cerebras-qwen-38-27b.md)

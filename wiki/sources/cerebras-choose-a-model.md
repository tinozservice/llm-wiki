---
title: "Cerebras — Choose a Model"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [cerebras, models, migration]
---

# Cerebras — Choose a Model

- **Sumber**: Cerebras — panduan pemilihan model
- **Penulis**: tidak dicantumkan
- **URL**: <https://inference-docs.cerebras.ai/models/choose-a-model>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/2026/oktober/01/Cerebras Choose a Model.md`

## TL;DR

Panduan memilih model di Cerebras berdasarkan use case, plus **peta migrasi dari model tertutup** (Claude/GPT/Gemini) ke alternatif open-source. Model "Public" di Shared Inference: **Qwen 3.8 27B** dan **GPT OSS 120B**; sisanya (Kimi K2.6/K2.7 Code, GLM 5.1, MiniMax M2.5, Gemma 4 31B, dsb.) lewat Dedicated Inference.

## Key points

- Peta use case (Code & Development, AI-Powered Apps, Vision & Multimodal) memetakan beban kerja ke model besar/medium/kecil, dengan alasan "mengapa Cerebras" (kecepatan agar agent loop lebih panjang).
- **Migrasi model tertutup → open-source**:
  - Claude Opus 4.8 → Kimi K2.6, Kimi K2.7 Code, GLM 5.1.
  - Claude Sonnet 5 → GLM 5.1 (utama), fallback Kimi K2.7 Code / Qwen 3.8 27B.
  - Claude Haiku 4.5 → Gemma 4 31B, GPT OSS 120B, MiniMax M2.5.
  - GPT 5.6 Terra → Kimi K2.6, Kimi K2.7 Code, GLM 5.1.
  - GPT 5.6 Luna → Qwen 3.8 27B.
  - GPT 5.4 Nano/Mini → MiniMax M2.5, Gemma 4 31B, GPT OSS 120B.
  - Gemini 3.1 Pro → Kimi K2.6, GLM 5.1, Qwen 3.8 27B.
  - Gemini 3.5 Flash Lite → Gemma 4 31B, GPT OSS 120B, MiniMax M2.5, Qwen 3.8 27B.
- Catatan: semua model di panduan tersedia via Dedicated Inference; subset di Shared Inference.

## Notable quotes

> "Reason through entire codebases, including complex requirements, dependencies, and edge cases, without disrupting developer workflows."

> "If you're moving from Claude, GPT, or Gemini, here are open-source alternatives available on Cerebras."

## What this changes

- Menghubungkan Cerebras dengan model-model yang sudah ada di wiki (Claude, GPT, Gemini) dan alternatif open-source-nya.
- Melengkapi entitas [Cerebras](../entities/cerebras.md).
- Tidak ada kontradiksi.

## Related

- [Cerebras](../entities/cerebras.md)
- [Cerebras — Model Catalog](cerebras-model-catalog.md)
- [Cerebras — Inference Pricing](cerebras-pricing.md)

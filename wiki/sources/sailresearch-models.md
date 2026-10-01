---
title: "Sail Research — Models"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [sailresearch, models, specs]
---

# Sail Research — Models

- **Sumber**: Sail Research — dokumentasi model
- **Penulis**: tidak dicantumkan
- **URL**: <https://docs.sailresearch.com/models>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/sailresearch Models.md`

## TL;DR

Daftar model Sail dengan klaim pembeda: **"Sail does not requantize weights"** — model *Reference* disajikan persis seperti dirilis penulisnya (kecuali GLM-5.3-Flash yang memakai expert NVFP4 + bobot lain FP8). Data mencakup kelas ukuran (params total/aktif) dan konteks hingga 1M token untuk model besar.

## Key points

- **Reference serving**: tanpa requantization; tautan ke bobot Hugging Face per model.
- Model core dengan context 1M: Kimi K3 (2,8T; 104B aktif), GLM-5.3 (753B; 40B), DeepSeek V4.1 Flash (552B; 16B), DeepSeek V4 Pro 0813 (1,65T; 49B), DeepSeek V4 Flash 0731 (284B; 13B).
- GLM-5.3-Flash (321B; 18B) disajikan campuran NVFP4/FP8 — pengecualian dari klaim Reference.
- Kimi-K2.6: context 262K, 1T; 32B aktif.
- Gemma 4: 31B (256K), 12B (16K).
- gpt-oss-120b: 117B; 5,1B aktif, context 131K.
- Qwen3.6 35B A3B: flex-only, context 262K.
- Catatan: beberapa model punya anotasi reasoning (GLM-5.3: `none` mengembalikan HTTP 400; pakai `low`).

| Model | Vendor | Context | Params | Populer untuk |
| --- | --- | --- | --- | --- |
| Kimi K3 | Moonshot AI | 1M | 2.8T; 104B aktif | coding, agentic, vision, long context |
| GLM-5.3 | Z.ai | 1M | 753B; 40B aktif | coding, agentic, multilingual |
| GLM-5.3-Flash | Z.ai | 1M | 321B; 18B aktif | — |
| DeepSeek V4.1 Flash | DeepSeek | 1M | 552B; 16B aktif | coding, agentic, long context |
| DeepSeek V4 Pro 0813 | DeepSeek | 1M | 1.65T; 49B aktif | coding, agentic, math |
| DeepSeek V4 Flash 0731 | DeepSeek | 1M | 284B; 13B aktif | coding, agentic |
| Kimi-K2.6 | Moonshot AI | 262K | 1T; 32B aktif | coding, agentic, vision |
| Gemma 4 31B IT | Google | 256K | 31B | vision, multilingual, chat |
| Gemma 4 12B IT | Google | 16K | 12B | multilingual, chat |
| gpt-oss-120b | OpenAI | 131K | 117B; 5.1B aktif | coding, math, cost-efficiency |
| Qwen3.6 35B A3B | Qwen | 262K | 35B; 3B aktif | coding, agentic, vision (flex-only) |

## Notable quotes

> "Sail does not requantize weights. **Reference** means Sail serves the model exactly as its authors released it."

## What this changes

- Melengkapi entitas [Sail Research](../entities/sail-research.md) dengan metadata model (params/context) — data teknis model pertama di wiki selain Intelligence Index.
- Tidak ada kontradiksi.

## Related

- [Sail Research](../entities/sail-research.md)
- [Sail Research — Pricing](sailresearch-pricing.md)

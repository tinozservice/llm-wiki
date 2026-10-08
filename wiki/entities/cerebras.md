---
title: Cerebras
type: entity
created: 2026-10-01
updated: 2026-10-08
sources: [cerebras-get-started, cerebras-model-catalog, cerebras-choose-a-model, cerebras-pricing, cerebras-limits, cerebras-gpt-oss, cerebras-qwen-38-27b, cerebras-reasoning, cerebras-structured-outputs, cerebras-tool-calling, cerebras-image-inputs]
tags: [cerebras, inference, model-provider, speed]
---

# Cerebras

**Cerebras** (Cerebras Inference / Cerebras Cloud) adalah platform inferensi yang mengklaim "the fastest in the world": model Shared Inference berjalan **~3.000 token/detik** (GPT OSS 120B) dan **~1.850 token/detik** (Qwen 3.8 27B). API-nya OpenAI-compatible; model disajikan **tanpa pruning** dengan kuantisasi weight-only saat penyimpanan ([katalog](../sources/cerebras-model-catalog.md)).

## Model (Shared Inference)

| Model | ID | Parameter | Context free/paid | Kecepatan | Harga /1M |
| --- | --- | --- | --- | --- | --- |
| OpenAI GPT OSS | `gpt-oss-120b` | 120B | 65k / 131k | ~3.000 t/s | $0.35 / $0.75 |
| Qwen 3.8 27B | `qwen-3.8-27b` | 27B dense | 64k / 128k | ~1.850 t/s | $0.99 / $1.49 |

**Dedicated Inference** (instance privat, custom weights): setidaknya Kimi K2.6, Kimi K2.7 Code, GLM 5.1, DeepSeek V3.2, MiniMax M2/M2.5, Mistral Large 3 (675B), GPT-OSS 20B, Gemma 4 31B.

## Plan

- **Developer** — self-serve pay-as-you-go; kredit awal **$5**; model gpt-oss 120b & gemma-4-31b; dukungan komunitas (Discord).
- **Enterprise** — quote; semua model; kapasitas produksi; prioritas/latensi; custom weights; fine-tuning & training; SLA.

## Kapabilitas

- **Reasoning** — `reasoning_effort` (qwen default `high` dan bisa `none`; gpt-oss default `medium` dan tidak bisa dimatikan; gemma default off) dan `reasoning_format` (`parsed`/`raw`/`hidden`) ([sumber](../sources/cerebras-reasoning.md)).
- **Structured outputs** — strict mode dengan constrained decoding; batas skema: 5.000 karakter, kedalaman 10, 500 properti, 500 enum ([sumber](../sources/cerebras-structured-outputs.md)).
- **Tool calling** — strict, multi-turn, parallel ([sumber](../sources/cerebras-tool-calling.md)).
- **Image inputs** (Public Preview) — base64 PNG/JPEG via Chat Completions; 2 gambar (Free) / 10 (Developer); payload ≤10 MiB ([sumber](../sources/cerebras-image-inputs.md)).
- Streaming, sampling controls, prompt caching.

## Rate limits

- Snapshot organisasi pada klip: `qwen-3.8-27b` 450 req/menit (648K/hari), 750K total token/menit, 10 gambar/request; `gpt-oss-120b` 5 req/menit (2.4K/hari), 90K total token/menit ([limits](../sources/cerebras-limits.md)).
- Tier di halaman model: Free Trial 5 req/menit; Developer 300 req/menit (Qwen) dan 1K req/menit (GPT OSS).

## Akses partner

AWS Marketplace, [OpenRouter](openrouter.md), Hugging Face, Vercel AI Gateway ([pricing](../sources/cerebras-pricing.md)).

## Peta migrasi (dari model tertutup)

Dari panduan Cerebras: Claude Opus 4.8 → Kimi K2.6/K2.7 Code/GLM 5.1; Claude Sonnet 5 → GLM 5.1; Claude Haiku 4.5 → Gemma 4 31B/GPT OSS 120B/MiniMax M2.5; GPT 5.6 Terra → Kimi/GLM; GPT 5.6 Luna → Qwen 3.8 27B; Gemini 3.1 Pro → Kimi/GLM/Qwen; Gemini 3.5 Flash Lite → Gemma/GPT OSS/MiniMax/Qwen ([choose a model](../sources/cerebras-choose-a-model.md)).

## Open questions

- Apakah klaim ~3.000 t/s diverifikasi independen? (klip hanya dari Cerebras).
- Daftar lengkap model Dedicated Inference dan harga Enterprise.
- Detail REAP (pruning research) — ada blog rujukan, belum di-ingest.
- Apakah limit organisasi pada klip (450 req/menit Qwen) berlaku umum atau khusus akun.

## Related

- [Cerebras — Model Catalog (sumber)](../sources/cerebras-model-catalog.md)
- [Cerebras — Inference Pricing (sumber)](../sources/cerebras-pricing.md)
- [Cerebras — Choose a Model (sumber)](../sources/cerebras-choose-a-model.md)
- [Inception Labs](inception-labs.md) — penyedia inferensi cepat lain (dLLM; GPT-OSS-120B low di Cerebras menjadi pembanding latensi).
- [Groq](groq.md) — platform inferensi cepat lain (gpt-oss-120b juga tersedia di sana dengan harga $0.15/$0.60).
- [Novita](novita.md) — gpt-oss-120b dan qwen3.8-27b juga ada di katalognya.
- [Layanan Akses Model](../concepts/model-access-services.md)
- [Overview](../overview.md)

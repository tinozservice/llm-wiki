---
title: Inception Labs
type: entity
created: 2026-10-01
updated: 2026-10-08
sources: [inception-models, inception-mercury-voice, inception-enterprise, openrouter-decisions-models]
tags: [inceptionlabs, mercury, dllm, model-provider]
---

# Inception Labs

**Inception Labs** mengembangkan **diffusion LLM (dLLM)** — pendekatan non-autoregresif yang diklaim memberi kualitas "frontier" dengan kecepatan 5× lipat: **1.000+ token/detik** di GPU NVIDIA komersial. API-nya OpenAI-compatible ([sumber model](../sources/inception-models.md)).

## Model

| Model | Konteks | Harga /1M (current) | Catatan |
| --- | --- | --- | --- |
| Mercury 2.5 | 260K | Input $0.04 · Cached $0.004 · Output $0.15 (80% OFF) | Reasoning termurah; tool use; structured output |
| Mercury Decide | 33K | **$0 (free tier)** | Baru (8 Okt): model **keputusan** (System One) — `choice`/`score`/`noul` terkalibrasi, bukan teks; schema `/v1/systemone` sama dengan Jev; hingga **14 keputusan/detik** ([Decisions](../sources/openrouter-decisions-models.md)) |
| Mercury Voice | 128K | Input $0.20 · Output $0.75 (50% OFF) | Khusus voice agent; TTFAT p50 320 ms; output hingga 50K |
| Mercury Router | — | Via sales | Routing prompt ke model terbaik (kualitas/kecepatan/biaya) |

- Mercury 1, 2, dan Mercury Edit 2 masih didukung untuk pelanggan lama.
- **Mercury Decide (8 Okt)** memperluas lineup ke kategori [Model Keputusan](../concepts/decision-models.md): output gratis karena tidak ada generasi token; dirancang agar sistem bisa menjalankannya pada setiap kasus dan mengeskalasi yang tidak yakin.
- Klaim kualitas Mercury 2.5: comparable dengan GPT-5.6 Luna (Low), Gemini 3.5 Flash-Lite, Claude Haiku 4.5.
- Mercury Voice: mengalahkan Gemma 4 31B, GPT-6 Luna, GLM-5.3-Flash, Qwen3.5-397B pada komposit τ³-bench (Telecom/Retail/Airline), IFBench, BFCL v4 ([sumber blog](../sources/inception-mercury-voice.md)).
- Harga voice ~$0.009/menit percakapan (~5× lebih murah dari GPT-4.1).

## Akses & deployment

- **Plans**: Free (100 juta token gratis), Developer (usage-based, rate limit lega), Enterprise (custom limit, SLA, volume).

> [!warning] Contradiction: bonus token gratis berbeda antar halaman sumber — plan Free menyebut 100 juta token, sedangkan langkah setup menyebut 10 juta untuk API key baru.

- **Jalur deployment**: Inception API; AWS Bedrock; Azure Foundry; model router ([OpenRouter](openrouter.md), Models.dev).
- **Jaminan enterprise**: no training on your data; prompts/outputs sebagai customer data; retensi & caching konfigurabel; opsi no prompt logging, private networking, dedicated capacity.
- Integrasi framework: AISuite, LiteLLM, LangChain; voice agent: LiveKit, Pipecat, Vapi, Retell.

## Open questions

- Detail teknis dLLM (arsitektur, metode difusi) tidak dijelaskan sumber.
- Selisih metrik latensi: TTFT <170 ms (halaman model) vs TTFAT 320 ms (blog) — definisi dan konteks pengukuran belum jelas.
- Selisih token gratis 10M vs 100M.
- Harga/paket Mercury Router dan cakupan "model routing"-nya.
- Siapa saja "leading enterprises" yang sudah memakai (logo tidak tertangkap).

## Related

- [Inception Labs — Models (sumber)](../sources/inception-models.md)
- [Introducing Mercury Voice (sumber)](../sources/inception-mercury-voice.md)
- [Research – Inception (sumber)](../sources/inception-enterprise.md)
- [Sail Research](sail-research.md) — penyedia inferensi lain dengan klaim kecepatan.
- [Cerebras](cerebras.md) — penyedia inferensi tercepat; GPT-OSS-120B low di Cerebras jadi pembanding latensi Mercury Voice.
- [Model Keputusan](../concepts/decision-models.md) — kelas model Mercury Decide; schema sama dengan [Jev](jev.md).
- [Layanan Akses Model](../concepts/model-access-services.md)
- [Overview](../overview.md)

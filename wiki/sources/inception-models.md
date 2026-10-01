---
title: "Inception Labs — Models"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [inceptionlabs, mercury, dllm, pricing]
---

# Inception Labs — Models

- **Sumber**: Inception Labs — halaman model
- **Penulis**: tidak dicantumkan
- **URL**: <https://www.inceptionlabs.ai/models>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/2026/oktober/01/inceptionlabs Models.md`

## TL;DR

Inception Labs membangun **diffusion LLM (dLLM)** yang diklaim "frontier LLM quality at 5x greater speed" — 1.000+ token/detik di GPU NVIDIA komersial. Lineup saat ini: **Mercury 2.5** (reasoning termurah mereka; 260K context; 80% OFF: $0.04 input / $0.15 output per 1M), **Mercury Voice** (khusus voice agent; 128K context; 50% OFF: $0.20/$0.75), dan **Mercury Router** (routing model; harga via sales). API-nya OpenAI-compatible.

## Key points

- Klaim kualitas Mercury "comparable" dengan GPT-5.6 Luna (Low), Gemini 3.5 Flash-Lite, dan Claude Haiku 4.5.
- **Mercury 2.5**: reasoning, tool use, structured output; 260K context; use case: rapid coding iteration, agent/subagent, customer support, enterprise search.
- **Mercury Voice**: dioptimalkan untuk voice agent; TTFT < 170ms (klaim halaman ini; blog peluncuran menyebut TTFAT median 320ms — metrik berbeda); reasoning/tool use/structured output; use case: customer support, patient care, education, gaming.
- **Mercury Router**: memahami prompt dan merutekan ke model terbaik berdasarkan kualitas/kecepatan/biaya; fitur routing analytics, model analytics.
- Mercury 1, 2, dan Mercury Edit 2 masih didukung untuk pelanggan lama.
- Starter: akun baru + API key. *Catatan:* langkah setup menyebut **10 juta token gratis** untuk API key, sedangkan bagian plan Free menyebut **100 juta token gratis** — perlu konfirmasi.
- Terintegrasi lewat AISuite, LiteLLM, dan LangChain.

| Model | Konteks | Input /1M | Cached /1M | Output /1M | Diskon |
| --- | --- | --- | --- | --- | --- |
| Mercury 2.5 | 260K | $0.20 → **$0.04** | $0.02 → **$0.004** | $0.75 → **$0.15** | 80% OFF |
| Mercury Voice | 128K | $0.40 → **$0.20** | — | $1.50 → **$0.75** | 50% OFF |
| Mercury Router | — | via sales | — | via sales | — |

## Plans

- **Free** — akses semua model, 100 juta token gratis.
- **Developer** — usage-based pricing, rate limit lega, priority support.
- **Enterprise** — custom rate limits, SLA, volume pricing (lihat [Research – Inception](inception-enterprise.md)).

## Notable quotes

> "Inception's diffusion LLMs (dLLMs) deliver frontier LLM quality at 5x greater speed."

> "Our models run at 1000+ tokens per second on commercial NVIDIA GPUs, enabling instant, in-the-flow AI solutions."

## What this changes

- Entitas [Inception Labs](../entities/inception-labs.md) dibuat, bersama dua sumber lain: [Mercury Voice](inception-mercury-voice.md) dan [Research – Inception](inception-enterprise.md).
- Menambah pembanding untuk GPT-6 Luna, Gemini 3.5 Flash-Lite, Claude Haiku 4.5, GLM-5.3-Flash, Qwen3.5-397B, dan Gemma 4 31B yang sudah ada di wiki.
- Tidak ada kontradiksi keras; dua inkonsistensi ringan dicatat (10M vs 100M token gratis; TTFT vs TTFAT).

## Related

- [Inception Labs](../entities/inception-labs.md)
- [Introducing Mercury Voice](inception-mercury-voice.md)
- [Research – Inception](inception-enterprise.md)

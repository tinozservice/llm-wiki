---
title: Estimasi Request per Pass
type: entity
created: 2026-10-01
updated: 2026-10-01
sources: [tokenharbor-pricing, tokenharbor-frontier-pass, tokenharbor-office-pass]
tags: [token-harbor, pass, estimates, capacity]
---

# Estimasi Request per Pass

Perkiraan jumlah request per pass Token Harbor, basis **10K token input + 1K token output per request**, dengan **boost diperhitungkan** bila berlaku. Sumber: klip halaman harga untuk tab [Agent](tokenharbor-pricing.md), [Office](../sources/tokenharbor-office-pass.md), dan [Frontier](../sources/tokenharbor-frontier-pass.md) (klip 2026-10-01).

## Tabel gabungan

"—" berarti model tidak tercantum untuk pass tersebut pada klip (bukan berarti pasti tidak tersedia).

| Model | Agent ($10) | Office ($35) | Frontier ($180) | Catatan |
| --- | --- | --- | --- | --- |
| Qwen3.7 Flash | 25.6k+ | 89.7k+ | 461.5k+ | Baru di Agent |
| Qwen3.8 Flash | 13.2k+ | 46.2k+ | 238k+ | Baru di Agent; 2× Limited (sampai 4 Okt 2026) |
| GLM 5.3 Flash | 10k+ | 35k+ | 180k+ | Baru di Agent; 2× |
| GPT-6 Luna | 6.6k+ | 23.3k+ | 120k+ | Baru di Agent |
| Qwen3.5 27b | — | 22.6k+ | 116.2k+ | Baru di Office |
| DeepSeek V4 Flash | 6k+ | 21.1k+ | 108.7k+ | Pass bawah |
| MiMo V2.6 Flash | 5.9k+ | 20.8k+ | 107.1k+ | Pass bawah |
| Qwen3.6 Flash | — | 13.2k+ | 68.1k+ | Baru di Office |
| GPT-6 Luna Fast | 3.3k+ | 11.6k+ | 60k+ | Baru di Agent |
| DeepSeek V3.2 | — | 10.9k+ | 56.2k+ | Baru di Office |
| DeepSeek V4.1 Flash | 2.5k+ | 8.8k+ | 45.4k+ | Pass bawah |
| GLM 5.3 FlashX | — | 7k+ | 36.3k+ | Baru di Office; varian Fast |
| MiMo V2.6 Pro | — | 6.7k+ | 34.4k+ | Baru di Office |
| Qwen3.8 27B | — | 6.2k+ | 32.1k+ | Baru di Office |
| GPT-5.6 Luna Fast | — | 5.4k+ | 28.1k+ | Baru di Office |
| Qwen3.6 27b | — | 3.6k+ | 18.7k+ | Baru di Office |
| Gemini 3.8 Flash | — | 3.1k+ | 16k+ | Baru di Office |
| Kimi K2.6 | — | 2.5k+ | 13.3k+ | Baru di Office |
| GLM-5.3 | — | 2.2k+ | 11.7k+ | Baru di Office |
| Muse Spark 1.3 | — | 2k+ | 10.7k+ | Baru di Office |
| DeepSeek V4 Pro | — | 2k+ | 10.4k+ | Baru di Office |
| Qwen3.7 Max | — | — | 8.3k+ | Baru di Frontier |
| Qwen3.8 Max | — | 1.6k+ | 8.3k+ | Baru di Office |
| Grok 4.7 | — | — | 6.9k+ | Baru di Frontier |
| GLM 5.3 Fast | — | — | 6.5k+ | Baru di Frontier |
| Claude Sonnet 5.5 | — | — | 6k+ | Baru di Frontier |
| GPT-6.1 Sol | — | — | 6k+ | Baru di Frontier |
| GPT-5.6 Terra | — | 1k+ | 5.6k+ | Baru di Office |
| Kimi K3 | — | — | 4.2k+ | Baru di Frontier |
| Claude Sonnet 4.6 | — | — | 4k+ | Baru di Frontier |
| Claude Opus 5.5 | — | — | 3k+ | Baru di Frontier |
| GPT-5.6 Sol | — | — | 3k+ | Baru di Frontier |
| GPT-6 Sol Fast | — | — | 3k+ | Baru di Frontier |
| GPT-6.1 Sol Fast | — | — | 3k+ | Baru di Frontier |
| GPT-5.6 Terra Fast | — | — | 2.8k+ | Baru di Frontier |
| Kimi K3 Fast | — | — | 2.6k+ | Baru di Frontier |
| Claude Opus 5 | — | — | 2.4k+ | Baru di Frontier |
| Claude Opus 4.8 | — | — | 2.4k+ | Baru di Frontier |
| GPT-5.5 | — | — | 2.2k+ | Baru di Frontier |
| GPT-5.6 Sol Fast | — | — | 1.5k+ | Baru di Frontier |
| Claude Opus 5.5 Fast | — | — | 1.5k+ | Baru di Frontier |
| Claude Fable 5.1 | — | — | 1.2k+ | Baru di Frontier |
| GPT-6 Astra | — | — | 1.2k+ | Baru di Frontier |
| Claude Opus 5 Fast | — | — | 1.2k+ | Baru di Frontier |
| GPT-6 Astra Fast | — | — | 600+ | Baru di Frontier |
| TH-Rudder | — | — | — | Tanpa estimasi (web chat) |

## Skala antar pass

Estimasi request untuk model yang sama **proporsional dengan included usage** pass:

- Agent $10 → Office $35 ≈ **3.5×** (mis. Qwen3.7 Flash 25.6k → 89.7k).
- Office $35 → Frontier $180 ≈ **5.14×** (mis. Qwen3.7 Flash 89.7k → 461.5k).
- Agent → Frontier ≈ **18×** (sesuai $180/$10).

Boost 2× bertahan untuk Qwen3.8 Flash (Limited) dan GLM 5.3 Flash.

## Open questions

- Apakah "estimasi request" mengasumsikan boost/harga tertentu per model? (Rasio konsisten dengan included usage, tetapi metode perhitungan tidak dijelaskan.)
- Beberapa model di tabel ini (Claude Opus 5, GPT-5.5, DeepSeek V3.2, Qwen3.5/3.6, GPT-6 Sol) belum ada di [katalog model](token-harbor-model-catalog.md) — mungkin katalog klip terfilter, atau lineup pass lebih luas.
- Tanpa verifikasi independen; angka berasal dari halaman Token Harbor.

## Related

- [Token Harbor](token-harbor.md) — skema pass dan mekanisme.
- [Katalog Model Token Harbor](token-harbor-model-catalog.md) — harga per token model.
- [Token Harbor — Frontier Pass (sumber)](../sources/tokenharbor-frontier-pass.md)
- [Token Harbor — Office Pass (sumber)](../sources/tokenharbor-office-pass.md)

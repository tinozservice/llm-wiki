---
title: "Token Harbor — Frontier Pass"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [token-harbor, pass, frontier, estimates]
---

# Token Harbor — Frontier Pass

- **Sumber**: Token Harbor — halaman harga, tab **Frontier Pass** (judul klip: "tokenharbor - frontier pass")
- **Penulis**: Token Harbor
- **URL**: <https://tokenharbor.ai/pricing>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/2026/oktober/01/tokenharbor - frontier pass.md`

## TL;DR

Klip tab Frontier Pass pada halaman harga Token Harbor: pass **$99/bulan** dengan **$180 included usage**, model boost hingga **$360**, dan **diskon 15%** pay-as-you-go. Bagian "estimated requests" memuat **45 baris model** (basis 10K input + 1K output per request): **22 model baru di Frontier Pass** — dari Qwen3.7 Max (8.3k+) sampai GPT-6 Astra Fast (600+) — dan 23 model yang sudah termasuk di pass bawah, dari Qwen3.7 Flash (461.5k+) sampai TH-Rudder (tanpa estimasi).

## Key points

- Mekanisme pass sama dengan sumber harga sebelumnya ("usage value, not credit", 4 jendela 7 hari, free allowance menyatu, layanan tidak berhenti di batas).
- Estimasi ini melengkapi angka **Agent Pass** (sumber harga awal) dan **Office Pass** (klip terpisah).
- Boost **2×** masih berlaku untuk Qwen3.8 Flash (Limited; sampai 4 Okt 2026) dan GLM 5.3 Flash.
- Daftar memuat model yang belum ada di [katalog model](../entities/token-harbor-model-catalog.md) — mis. Qwen3.7 Max, Claude Opus 5/4.8, GPT-5.5, GPT-6 Sol (Fast), Claude Sonnet 4.6, DeepSeek V3.2, Qwen3.5 27b.
- Konsistensi: estimasi request model yang sama ±18× lipat dari Agent ($10) ke Frontier ($180), proporsional dengan included usage.

### New with Frontier Pass

| Model | Estimasi request |
| --- | --- |
| Qwen3.7 Max | 8.3k+ |
| Grok 4.7 | 6.9k+ |
| GLM 5.3 Fast | 6.5k+ |
| Claude Sonnet 5.5 | 6k+ |
| GPT-6.1 Sol | 6k+ |
| Kimi K3 | 4.2k+ |
| Claude Sonnet 4.6 | 4k+ |
| Claude Opus 5.5 | 3k+ |
| GPT-5.6 Sol | 3k+ |
| GPT-6 Sol Fast | 3k+ |
| GPT-6.1 Sol Fast | 3k+ |
| GPT-5.6 Terra Fast | 2.8k+ |
| Kimi K3 Fast | 2.6k+ |
| Claude Opus 5 | 2.4k+ |
| Claude Opus 4.8 | 2.4k+ |
| GPT-5.5 | 2.2k+ |
| GPT-5.6 Sol Fast | 1.5k+ |
| Claude Opus 5.5 Fast | 1.5k+ |
| Claude Fable 5.1 | 1.2k+ |
| GPT-6 Astra | 1.2k+ |
| Claude Opus 5 Fast | 1.2k+ |
| GPT-6 Astra Fast | 600+ |

### Already included in lower passes

| Model | Estimasi request |
| --- | --- |
| Qwen3.7 Flash | 461.5k+ |
| Qwen3.8 Flash (2× Limited) | 238k+ |
| GLM 5.3 Flash (2×) | 180k+ |
| GPT-6 Luna | 120k+ |
| Qwen3.5 27b | 116.2k+ |
| DeepSeek V4 Flash | 108.7k+ |
| MiMo V2.6 Flash | 107.1k+ |
| Qwen3.6 Flash | 68.1k+ |
| GPT-6 Luna Fast | 60k+ |
| DeepSeek V3.2 | 56.2k+ |
| DeepSeek V4.1 Flash | 45.4k+ |
| GLM 5.3 FlashX | 36.3k+ |
| MiMo V2.6 Pro | 34.4k+ |
| Qwen3.8 27B | 32.1k+ |
| GPT-5.6 Luna Fast | 28.1k+ |
| Qwen3.6 27b | 18.7k+ |
| Gemini 3.8 Flash | 16k+ |
| Kimi K2.6 | 13.3k+ |
| GLM-5.3 | 11.7k+ |
| Muse Spark 1.3 | 10.7k+ |
| DeepSeek V4 Pro | 10.4k+ |
| Qwen3.8 Max | 8.3k+ |
| GPT-5.6 Terra | 5.6k+ |
| TH-Rudder | — |

## Notable quotes

> "One allowance, shared across every model. Boosted models bill at a reduced rate, so the same allowance reaches further on them — these are alternatives, not separate balances."

> "2× Boost on Qwen3.8 Flash runs through October 4, 2026. Standard rates apply afterward."

## What this changes

- Melengkapi estimasi kapasitas pass; dibuat [Estimasi Request per Pass](../entities/token-harbor-pass-estimates.md).
- [Token Harbor](../entities/token-harbor.md) diperbarui: ringkasan estimasi kini menunjuk ke halaman gabungan.
- Tidak ada kontradiksi; angka model yang sama konsisten dengan kelipatan included usage antar pass.

## Related

- [Token Harbor — Office Pass](tokenharbor-office-pass.md)
- [Token Harbor](../entities/token-harbor.md)
- [Estimasi Request per Pass](../entities/token-harbor-pass-estimates.md)

---
title: Overview
type: overview
created: 2026-10-01
updated: 2026-10-01
sources: [tokenharbor-pricing, opencode-go, opencode-zen-price-list, tokenharbor-models-frontier, tokenharbor-models-value, tokenharbor-models-free, tokenharbor-th-rudder, tokenharbor-frontier-pass, tokenharbor-office-pass]
tags: [overview]
---

# Overview

Sintesis top-level wiki ini: apa yang sudah tercakup, pemahaman terbaik saat ini, dan pertanyaan terbuka.

## Sejauh ini

- Wiki berisi **sembilan sumber**: tiga tentang layanan akses multi-model ([Token Harbor](entities/token-harbor.md), [OpenCode Go](entities/opencode.md), [OpenCode Zen](entities/opencode-zen.md)) dan enam klip Token Harbor (katalog: frontier/value/free/TH-Rudder; estimasi pass: Frontier/Office plus sumber harga awal). Pola umumnya dirangkum di [Layanan Akses Model](concepts/model-access-services.md).
- [Katalog Model Token Harbor](entities/token-harbor-model-catalog.md) memuat harga per 1M token, AA Rank, dan [Intelligence Index](concepts/intelligence-index.md) untuk 19 model: Claude Opus 5.5 (#1, 57.6) sampai Qwen3.8 27B (#44, 33.7); ada varian Fast dan tarif off-peak DeepSeek V4.1 Flash.
- [Estimasi Request per Pass](entities/token-harbor-pass-estimates.md) kini lengkap untuk Agent, Office, dan Frontier (46 baris model gabungan); skala antar pass proporsional dengan included usage (≈3.5× dan ≈5.14×).
- [TH-Rudder](entities/th-rudder.md): model gratis tanpa batas khusus web chat, berperan sebagai router, tanpa nama API.
- Lineup gratis Token Harbor (snapshot 2026-10-01): Qwen3.8 Flash (limited time), DeepSeek V4.1 Flash, MiMo V2.6 Flash; lineup berotasi.
- Harga per-token Token Harbor dan OpenCode Zen sebagian identik, sebagian berbeda (GPT-5.6 Terra dan Gemini 3.8 Flash lebih murah di Token Harbor).
- Kredit OpenCode (Go + Zen) berasal dari top up dan menyatu; pemakaian di luar batas Go otomatis beralih ke pay-as-you-go (per user, 2026-10-01).
- Yang masih minim: deskripsi kualitatif model (lab, konteks, kemampuan di luar Intelligence Index).

## Pertanyaan terbuka

- Detail tiap model: lab, konteks, kemampuan, benchmark selain Intelligence Index.
- Metodologi Intelligence Index dan cara Token Harbor menghitung estimasi request.
- Apakah tarif Fast/off-peak juga berlaku untuk pemakaian pass, bukan hanya pay-as-you-go.
- Seberapa luas kesamaan harga antar layanan; perbandingan biaya efektif menyeluruh (langganan vs per token).
- Besar free allowance Token Harbor dan jatah harian TH-Rudder.

## Related

- [Token Harbor](entities/token-harbor.md)
- [Katalog Model Token Harbor](entities/token-harbor-model-catalog.md)
- [Estimasi Request per Pass](entities/token-harbor-pass-estimates.md)
- [OpenCode](entities/opencode.md)
- [OpenCode Zen](entities/opencode-zen.md)
- [TH-Rudder](entities/th-rudder.md)
- [Layanan Akses Model](concepts/model-access-services.md)
- [Intelligence Index (Artificial Analysis)](concepts/intelligence-index.md)
- [Index](index.md)

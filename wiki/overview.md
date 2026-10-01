---
title: Overview
type: overview
created: 2026-10-01
updated: 2026-10-01
sources: [tokenharbor-pricing, opencode-go, opencode-zen-price-list, tokenharbor-models-frontier, tokenharbor-models-value, tokenharbor-models-free, tokenharbor-th-rudder, tokenharbor-frontier-pass, tokenharbor-office-pass, agnes-token-plan, agnes-model-pricing, agnes-token-plan-faq, groqcloud-plans, groq-billing-faqs, groq-rate-limits, groq-supported-models, groqcloud-free-limits, manus-plans-pricing, novita-model-libraries, novita-rate-limits, sailresearch-pricing, sailresearch-models]
tags: [overview]
---

# Overview

Sintesis top-level wiki ini: apa yang sudah tercakup, pemahaman terbaik saat ini, dan pertanyaan terbuka.

## Sejauh ini

- Wiki berisi **22 sumber** yang mencakup **8 layanan akses model**: [Token Harbor](entities/token-harbor.md), [OpenCode](entities/opencode.md) (Go + [Zen](entities/opencode-zen.md)), [Agnes](entities/agnes.md), [Groq](entities/groq.md), [Manus](entities/manus.md), [Novita](entities/novita.md), dan [Sail Research](entities/sail-research.md). Pola umumnya dirangkum di [Layanan Akses Model](concepts/model-access-services.md).
- **Ragam model akses** makin beragam: langganan bernilai (Token Harbor), langganan batas per model (Go), kuota request + media (Agnes), pay-per-token (Zen, Novita, Sail), completion windows yang menukar latensi dengan harga (Sail), rate limit per organisasi (Groq), dan kredit tugas (Manus).
- **Token Harbor**: [Katalog Model](entities/token-harbor-model-catalog.md) berisi 19 model dengan harga per 1M token, AA Rank, dan [Intelligence Index](concepts/intelligence-index.md) (37,3–57,6); [estimasi request per pass](entities/token-harbor-pass-estimates.md) lengkap untuk Agent/Office/Frontier; [TH-Rudder](entities/th-rudder.md) adalah router gratis khusus web chat.
- **Data teknis model pertama** ada di [Sail Research](entities/sail-research.md): params & context — Kimi K3 2,8T/104B (1M), GLM-5.3 753B/40B (1M), DeepSeek V4 Pro 1,65T/49B (1M), DeepSeek V4.1 Flash 552B/16B (1M), dst.
- **Paritas harga lintas penyedia** makin kuat: model seperti DeepSeek V4.1 Flash, GLM-5.3, Kimi K3, Qwen3.8 Flash, dan MiMo V2.6 Flash dijual dengan harga yang sering identik di Token Harbor, OpenCode Zen, Novita, dan Sail (dengan variasi off-peak/batch/window).
- **OpenCode**: kredit berasal dari top up dan menyatu antara Go dan Zen; pemakaian di luar batas Go otomatis pay-as-you-go (per user, 2026-10-01).
- **Agnes** menonjol dari sisi multimodal: kuota gabungan teks/gambar/video, dengan model flash gratis saat ini.
- Yang masih minim: deskripsi kualitatif sebagian besar model; harga Manus tidak tertangkap di klip; harga on-demand Groq ada di halaman terpisah.

## Pertanyaan terbuka

- **Halaman per model**: sekarang banyak model muncul di 4+ sumber (harga, limit, params) — kandidat kuat untuk halaman entitas tersendiri.
- Metodologi Intelligence Index dan cara Token Harbor menghitung estimasi request.
- Apakah harga yang identik antar penyedia mencerminkan harga upstream yang sama?
- Harga Manus per tingkat; detail mekanisme *completion windows* Sail dan "refresh credits" Manus.
- Perbandingan biaya efektif menyeluruh (langganan vs per token vs kredit) untuk beban kerja nyata.

## Related

- [Token Harbor](entities/token-harbor.md)
- [Katalog Model Token Harbor](entities/token-harbor-model-catalog.md)
- [Estimasi Request per Pass](entities/token-harbor-pass-estimates.md)
- [OpenCode](entities/opencode.md)
- [OpenCode Zen](entities/opencode-zen.md)
- [TH-Rudder](entities/th-rudder.md)
- [Agnes](entities/agnes.md)
- [Groq](entities/groq.md)
- [Manus](entities/manus.md)
- [Novita](entities/novita.md)
- [Sail Research](entities/sail-research.md)
- [Layanan Akses Model](concepts/model-access-services.md)
- [Intelligence Index (Artificial Analysis)](concepts/intelligence-index.md)
- [Index](index.md)

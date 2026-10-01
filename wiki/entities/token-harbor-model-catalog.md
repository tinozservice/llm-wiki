---
title: Katalog Model Token Harbor
type: entity
created: 2026-10-01
updated: 2026-10-02
sources: [tokenharbor-models-frontier, tokenharbor-models-value, tokenharbor-models-free, tokenharbor-th-rudder, tokenharbor-docs-subscription]
tags: [token-harbor, models, pricing, intelligence-index]
---

# Katalog Model Token Harbor

Katalog model Token Harbor per klip 2026-10-01: harga per 1M token (input·output), **AA Rank**, dan **Intelligence Index** dari [Artificial Analysis](../concepts/intelligence-index.md). Tabel gabungan tiga kategori — frontier, value, free — diurutkan menurut AA Rank.

## Tabel gabungan

| AA Rank | Model | Kategori | Intelligence Index | Harga /1M (input·output) | Varian Fast | Catatan |
| --- | --- | --- | --- | --- | --- | --- |
| #1 | Claude Opus 5.5 | Frontier | 57.6 | $4.00·$20.00 | $8.00·$40.00 | |
| #2 | Claude Sonnet 5.5 | Frontier | 56.0 | $2.00·$10.00 | — | |
| #3 | Claude Fable 5.1 | Frontier | 53.4 | $10.00·$50.00 | — | |
| #4 | GPT-6 Astra | Frontier | 52.7 | $10.00·$50.00 | $20.00·$100.00 | |
| #6 | GPT-6.1 Sol | Frontier | 51.8 | $2.00·$10.00 | $4.00·$20.00 | |
| #9 | Muse Spark 1.3 | Frontier | 48.1 | $1.25·$4.25 | — | |
| #12 | Grok 4.7 | Frontier | 46.4 | $2.00·$6.00 | — | |
| #13 | MiMo V2.6 Pro | Value | 46.3 | $0.435·$0.87 | — | |
| #14 | Qwen3.8 Max | Frontier | 45.4 | $2.00·$6.00 | — | |
| #15 | GLM-5.3 | Frontier | 44.8 | $1.40·$4.40 | $2.10·$6.60 | |
| #18 | Kimi K3 | Frontier | 43.6 | $3.00·$15.00 | $4.50·$22.50 | |
| #19 | GPT-5.6 Terra | Frontier | 42.1 | $2.00·$12.00 | $4.00·$24.00 | |
| #20 | GLM 5.3 Flash | Value | 41.8 | $0.15·$0.5 | $0.37·$1.25 | |
| #22 | Gemini 3.8 Flash | Value | 40.9 | $0.75·$3.75 | — | |
| #26 | Qwen3.8 Flash | Value / Free | 39.8 | $0.15·$0.47 | — | Free limited time |
| #29 | DeepSeek V4.1 Flash | Value / Free | 39.5 | $0.3·$1.20 | — | Off-peak $0.15·$0.60 (14:00–00:00 UTC); Free |
| #34 | MiMo V2.6 Flash | Value / Free | 37.9 | $0.14·$0.28 | — | Free |
| #36 | GPT-6 Luna | Value | 37.3 | $0.1·$0.5 | $0.20·$1.00 | |
| #44 | Qwen3.8 27B | Value | 33.7 | $0.35·$2.10 | — | |

**TH-Rudder** berdiri di luar tabel ini: unlimited free, web chat only, tanpa nama API ([TH-Rudder](th-rudder.md)).

## Varian Fast

Beberapa model punya varian **Fast** (harga lebih tinggi untuk latensi lebih rendah, menurut penamaan katalog): Claude Opus 5.5, GPT-6 Astra, GPT-6.1 Sol, GLM-5.3, Kimi K3, GPT-5.6 Terra, GLM 5.3 Flash, dan GPT-6 Luna. Rasio harga bervariasi (1.5× untuk GLM-5.3/Kimi K3, 2× untuk sebagian besar lainnya, ~2.5× untuk GLM 5.3 Flash).

## Harga off-peak

**DeepSeek V4.1 Flash** punya tarif off-peak **$0.15·$0.60** pada **14:00–00:00 UTC**, di bawah tarif standarnya $0.3·$1.20.

## Ketersediaan per pass

Katalog ini melengkapi skema pass di [Token Harbor](token-harbor.md): model frontier sebagian besar ada di Office/Frontier Pass, model value di pass bawah/Agent, dan model free dapat dipakai gratis (lineup berotasi). Harga per-token di tabel adalah harga pay-as-you-go/patokan nilai.

### Lineup dokumen vs katalog

Dokumen Subscription (2 Okt 2026) mencantumkan sebagian model dengan **nama/versi berbeda** dari klip katalog ini (1 Okt) — mis. GPT-5.6 Luna (katalog: GPT-6 Luna), MiMo V2.5 / V2.5 Pro (katalog: MiMo V2.6 Flash / Pro), Claude Sonnet 5 (katalog: Claude Sonnet 5.5), Grok 4.6 (katalog: Grok 4.7), dan free tier DeepSeek V4 **Flash**. Kemungkinan beda snapshot atau penamaan generik; belum bisa dipastikan mana yang terkini.

## Open questions

- Apakah tarif varian Fast dan off-peak juga memengaruhi pemakaian pass/boost, atau hanya pay-as-you-go?
- Tanggal snapshot katalog dan kapan lineup/berotasi harga (klip dibuat 2026-10-01, tanggal publikasi tidak ada).
- Versi model mana yang berlaku: katalog 1 Okt atau dokumen Subscription 2 Okt? (lihat *Lineup dokumen vs katalog*).
- Siapa lab di balik tiap model? Katalog hanya memuat nama, rank, dan harga.

## Related

- [Token Harbor](token-harbor.md) — skema pass dan mekanisme.
- [TH-Rudder](th-rudder.md) — model gratis web chat.
- [Intelligence Index (Artificial Analysis)](../concepts/intelligence-index.md) — metrik di kolom AA Rank.
- [Layanan Akses Model](../concepts/model-access-services.md) — pola layanan akses model.
- [Token Harbor docs — Subscription](../sources/tokenharbor-docs-subscription.md) — lineup versi dokumen (2 Okt).

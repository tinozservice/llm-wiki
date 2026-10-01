---
title: "Agnes — Token Plan FAQ"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [agnes, quotas, rate-limits, token-plan]
---

# Agnes — Token Plan FAQ

- **Sumber**: Agnes AI — dokumentasi Token Plan (FAQ kuota & RPM)
- **Penulis**: tidak dicantumkan
- **URL**: <https://www.agnes-ai.com/en/docs/tokenplan>
- **Tanggal publikasi**: efektif 2026-06-22 (update RPM video 2026-06-28; RPM teks 2026-09-23); klip dibuat 2026-10-01
- **Berkas mentah**: `raw/2026/oktober/01/agnes Token Plan FAQ.md`

## TL;DR

Dokumentasi resmi kuota dan RPM Agnes AI. Ada tiga tipe akses — **Free/Default**, **Enterprise Verified**, dan **Token Plan** — dengan **pool limit terpisah** per tipe API key. Token Plan memberi kuota request teks (5 jam + mingguan), kuota gambar harian, dan kuota video harian, sekaligus RPM lebih tinggi. RPM pengguna free & enterprise dipotong 50% (efektif 10 dan 20 RPM untuk teks); Token Plan 1.000 RPM teks.

## Key points

- **Kuota Token Plan** (per plan, berlaku bersama RPM):
  - Teks (`agnes-3.0-flash`): Starter 1.500/5 jam + 15.000/minggu; Plus 7.500/5 jam + 75.000/minggu; Pro 30.000/5 jam + 300.000/minggu.
  - Gambar (`agnes-image-2.1-flash`): 4.000 gambar/hari untuk semua plan.
  - Video (`agnes-video-2.5-flash`): 500 detik/hari untuk semua plan.
- **RPM teks efektif**: default 10 (dari 30), enterprise 20 (dari 60), TokenPlan 1.000.
- **RPM gambar efektif** (1K/2K/3K/4K): default 10/5/1/1; enterprise 40/20/1/1; TokenPlan 100/80/1/1.
- **RPM video efektif**: default 1, enterprise 2, TokenPlan 5 (allowed 2/2/6).
- Kuota dihitung: request (teks), jumlah gambar dihasilkan (gambar), durasi detik (video).
- Limit dibagi per **tipe API key**, bukan per key: membuat banyak key tidak menambah kuota; key tipe berbeda (free/enterprise/token plan) punya pool masing-masing.
- Pemakaian gambar dengan `size` berbasis tier (1K–4K) + `ratio`; contoh 16:9: 1K 1312×736, 2K 2624×1472, 3K 3936×2208, 4K 5248×2944.
- 429 dikembalikan saat limit terlampaui; pengguna disarankan throttle/backoff.

| Plan | Teks per 5 jam | Teks per minggu | Gambar/hari | Video/hari |
| --- | --- | --- | --- | --- |
| Starter | 1.500 | 15.000 | 4.000 | 500 detik |
| Plus | 7.500 | 75.000 | 4.000 | 500 detik |
| Pro | 30.000 | 300.000 | 4.000 | 500 detik |

## Notable quotes

> "Multiple keys of the same type share the same limit pool. Creating more keys does not increase the total available RPM or quota."

> "RPM limits and subscription quotas apply at the same time."

## What this changes

- Melengkapi entitas [Agnes](../entities/agnes.md) dengan kuota & RPM detail.
- Tidak ada kontradiksi; kuota 5 jam konsisten dengan halaman langganan.
- Tercatat: RPM free/enterprise dipotong 50% efektif 23 September 2026 — arah kebijakan pembatasan pengguna non-bayar.

## Related

- [Agnes](../entities/agnes.md)
- [Agnes — Token Plan](agnes-token-plan.md)
- [Agnes — Model Pricing](agnes-model-pricing.md)

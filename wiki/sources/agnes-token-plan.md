---
title: "Agnes — Token Plan"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [agnes, pricing, subscription]
---

# Agnes — Token Plan

- **Sumber**: Agnes AI — halaman langganan Token Plan
- **Penulis**: tidak dicantumkan
- **URL**: <https://platform.agnes-ai.com/subscribe/subscription>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/2026/oktober/01/Agnes - Token Plan.md`

## TL;DR

Agnes AI menjual **Token Plan** untuk developer individu — coding dan kerja kantor harian, dengan kuota bersama untuk semua modalitas. Tiga tingkat: **Starter, Plus, Pro** dengan kuota **1.500 / 7.500 / 30.000 request per 5 jam**. Semua plan memakai model dasar yang sama, **Agnes-3.0-Flash** (~100 TPS, ~150 TPS off-peak), kompatibel dengan coding tools mainstream, dan mendukung image understanding serta generate gambar/video. Harga yang tampil: kartu promo **$2/$5/$25** (50% OFF dari $4/$10/$50); tabel perbandingan menampilkan **$4/$10/$50 per bulan** dengan opsi tahunan **$40/$100/$500**.

## Key points

- **Kuota yang membedakan**: 1.500 (Starter), 7.500 (Plus), 30.000 (Pro) model request per 5 jam; RPM lebih tinggi di semua plan berbayar.
- **Model dasar sama**: Agnes-3.0-Flash dipakai ketiga plan; perbedaan hanya kuota, RPM, dan harga.
- **Kecepatan**: ~100 TPS normal, ~150 TPS off-peak.
- **Kapabilitas**: kompatibel coding tools mainstream; image understanding; image generation; video generation.
- **Kuota bergulir**: "model requests / 5 hours" = maksimum request dalam jendela 5 jam bergulir — bukan blok waktu tetap; kuota pulih saat request lama keluar dari jendela.
- **Saat kuota habis**: request tambahan ditolak sampai jendela bergulir; solusinya upgrade plan.
- **Tahunan**: ~83% biaya bulanan (efektif 2 bulan gratis, ~17% lebih murah).
- Halaman merekomendasikan: Starter untuk workflow ringan, Plus untuk pemakaian harian profesional, Pro untuk beban berat/konkurensi tim.

| Item | Starter | Plus | Pro |
| --- | --- | --- | --- |
| Harga bulanan (tabel) | $4 | $10 | $50 |
| Harga kartu promo | $2 (dari $4) | $5 (dari $10) | $25 (dari $50) |
| Tahunan | $40 (dari $48) | $100 (dari $120) | $500 (dari $600) |
| Request / 5 jam | 1.500 | 7.500 | 30.000 |
| Model dasar | Agnes-3.0-Flash | sama | sama |

## Notable quotes

> "Agnes-3.0-Flash is the current underlying inference model. All three plans (Starter, Plus, and Pro) use the same model and offer identical model capabilities. The main differences are the 5-hour request quota, RPM limits, and pricing."

> "It refers to the maximum number of model requests you can make within any rolling 5-hour window. As time moves forward, requests made more than 5 hours ago no longer count toward the limit, so your quota is gradually restored. It is not divided into fixed 5-hour time blocks."

## What this changes

- Halaman dibuat: entitas [Agnes](../entities/agnes.md), plus halaman sumber [Model Pricing](agnes-model-pricing.md) dan [Token Plan FAQ](agnes-token-plan-faq.md).
- Tidak ada kontradiksi; melengkapi konteks langganan [Layanan Akses Model](../concepts/model-access-services.md).
- Perlu dicatat: angka harga di kartu ($2/$5/$25) berbeda dari tabel perbandingan ($4/$10/$50) — kemungkinan promo vs harga standar; belum dijelaskan sumber.

## Related

- [Agnes](../entities/agnes.md)
- [Agnes — Model Pricing](agnes-model-pricing.md)
- [Agnes — Token Plan FAQ](agnes-token-plan-faq.md)

---
title: "Puter docs — User-Pays Model"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, user-pays, billing]
---

# Puter docs — User-Pays Model

- **Sumber**: Puter.js documentation — halaman *User-Pays Model*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://docs.puter.com/user-pays-model/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter docs. User-Pays Model.md`

## TL;DR

Dokumentasi resmi model **user-pays**: user menanggung pemakaian cloud & AI-nya sendiri lewat akun Puter; developer tetap $0 untuk 1 atau 1 juta user. Tiap user mulai dengan allowance bulanan gratis; kelebihan ditagih langsung oleh Puter ke user, bukan ke developer.

## Key points

- **Mekanika**:
  1. User sign in ke aplikasi dengan akun Puter — akun itu menanggung AI, storage, dan resource lain yang dipakai.
  2. Setiap user mendapat **free monthly allowance**; usage bisa dipantau di [usage dashboard](https://puter.com/dashboard#usage).
  3. Habis allowance → user diprompt untuk upgrade, atau mengatur sendiri di billing settings.
- **Developer = user juga**: saat developer memakai app-nya sendiri, ia menanggung pemakaiannya seperti user lain.
- **Tabel perbandingan** (Traditional vs Puter.js):

  | Aspek | Tradisional | Puter.js |
  | --- | --- | --- |
  | Server & database | developer siapkan & bayar | tidak perlu |
  | API key | developer kelola & amankan | tidak ada sama sekali |
  | Billing | developer bayar semua usage | tiap user bayar sendiri |
  | Scaling | biaya naik seiring user | $0 di skala apa pun |
  | Proteksi abuse | rate limit, CAPTCHA, kuota | tidak perlu; abuser membayar dirinya sendiri |

- **Keuntungan yang diklaim**: biaya infrastruktur $0 di skala apa pun; cocok untuk vibe coding tanpa takut tagihan kejutan; tanpa API key; auth & security bawaan (app berjalan dalam izin yang diberikan user); tanpa kode anti-abuse; codebase lebih sederhana (bisa frontend-only); UX lebih baik (SSO + billing terpadu).

## Notable quotes

> "Whether you have 1 or 1 million users, your infrastructure cost stays at $0."

> "Abuse protection: Not needed; abusers pay for themselves."

## What this changes

- Dibuat: [User-Pays Model](../concepts/user-pays-model.md) (konsep) dan [Puter](../entities/puter.md) — model penagihan ini **pertama di wiki**: biaya ditanggung **end-user**, bukan developer/pemilik key.
- Dibandingkan pola yang sudah terdokumentasi di [Layanan Akses Model](../concepts/model-access-services.md) (langganan, per token, kredit): skema keempat, sekaligus berbeda karena menyangkut billing aplikasi, bukan akses model saja.
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [User-Pays Model](../concepts/user-pays-model.md)
- [Puter.js Pricing — The User-Pays Model](puter-puterjs-pricing.md)
- [Puter docs — Rate Limits and Quotas](puter-docs-rate-limits.md)

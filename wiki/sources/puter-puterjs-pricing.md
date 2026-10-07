---
title: "Puter.js Pricing — The User-Pays Model"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, pricing, user-pays]
---

# Puter.js Pricing — The User-Pays Model

- **Sumber**: Puter developer — halaman *Puter.js Pricing: The User-Pays Model*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://developer.puter.com/pricing/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter developer. Puter.js Pricing The User-Pays Model.md`

## TL;DR

Halaman harga versi developer: **biaya infrastruktur developer $0,00** — tidak peduli 1 atau 1 juta user. Tiap akun user membawa storage, database, dan AI allowance sendiri; kelebihan pemakaian dibayar user langsung ke Puter, dan billing tidak pernah melewati developer.

## Key points

- **Setiap user membawa resource sendiri**: "Every Puter account comes with its own storage, database, and AI allowance, and your Puter.js calls run against the signed-in user's account."
- **Biaya yang tidak tumbuh bersama user**: tanpa key, tanpa rate limit/CAPTCHA/fraud untuk developer — $0 di hari peluncuran dan $0 di sejuta user (grafik ilustrasi: traditional naik, Puter datar $0).
- **Siapa membayar apa**:
  - **Developer**: $0; unlimited users; auth, storage, database, AI Gateway, hosting; tanpa server/key; tidak ada usage yang di-meter ke developer.
  - **Users**: allowance gratis (storage, database, AI); bayar Puter langsung hanya di atas allowance; satu akun berlaku untuk semua app Puter; billing tidak lewat developer.
- **FAQ penting**:
  - Verifikasi $0 — ya, biaya dimeter ke akun user masing-masing.
  - Overage — user membayar ke Puter; user lain tidak terpengaruh.
  - Beda dengan **bring-your-own-key** — BYOK meminta tiap user membuat akun provider, membuat key, menempelkannya; dengan Puter tidak ada key sama sekali (setiap request terautentikasi & dimeter otomatis).
  - Abuse — tidak bisa menaikkan tagihan developer karena usage masuk akun masing-masing; anti-abuse/rate limiting/fraud detection ada di layer akun Puter.
  - **Resource level-app** (mis. serverless worker dan datanya) boleh berjalan di akun **developer sendiri**; user-pays mencakup pemakaian per-user (file, KV, AI) ([sumber](puter-puterjs-pricing.md)).

## Notable quotes

> "Your infrastructure bill $0.00"

> "With Puter there are no keys at all. Users sign in with their Puter account, and every request is authenticated and metered to them automatically."

## What this changes

- Memperkuat [User-Pays Model](../concepts/user-pays-model.md): ada jalur **campuran** — resource per-user di akun user, resource bersama di akun developer.
- Dibuat: [Puter](../entities/puter.md).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [User-Pays Model](../concepts/user-pays-model.md)
- [Puter docs — User-Pays Model](puter-docs-user-pays.md)
- [Puter — AI Gateway](puter-ai-gateway.md)

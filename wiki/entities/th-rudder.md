---
title: TH-Rudder
type: entity
created: 2026-10-01
updated: 2026-10-02
sources: [tokenharbor-th-rudder, tokenharbor-docs-web-chat-limits]
tags: [token-harbor, th-rudder, router, free]
---

# TH-Rudder

**TH-Rudder** adalah model Token Harbor yang tersedia **gratis tanpa batas di web chat** dan berfungsi sebagai *router*: ia membaca tiap pesan dan meneruskannya ke model yang mampu mengerjakannya ([sumber](../sources/tokenharbor-th-rudder.md)).

## Karakteristik

- **Unlimited free**, tanpa kartu kredit, **web chat only**.
- **Tidak punya nama API** — tidak bisa dipanggil lewat API; pengguna API dipersilakan memilih model lain.
- Pengalaman "one model for everything": pengguna tidak perlu memilih model.
- Kemampuan yang disebut: jawaban/penulisan, gambar, berkas PDF/Word/Excel/PowerPoint, dan web search bila dibutuhkan.

## Kuota web chat (docs 2 Okt)

- Teks di TH-Rudder: **unlimited** — hanya limit kecepatan (10 pesan/menit, 200/jam).
- **Gambar 10/hari**, **web search 200/hari**, **voice 100/hari**, **file 20/hari**.
- Pemakaian bebas lagi **24 jam setelah dipakai** (rolling, bukan tengah malam).
- Web search dihitung di model gratis, TH-Rudder, dan pass; search yang dibayar dari saldo tidak dihitung; setelah limit, jawaban tetap datang tanpa search.
- Storage: dokumen 10 MB (per akun, dibagi semua proyek); maks 200 percakapan; arsip setelah 30 hari; tautan share publik 7 hari.
- Rincian lengkap: [Web chat limits](../sources/tokenharbor-docs-web-chat-limits.md).

## Konteks

- Terkait aplikasi chat **Rudder** (tokenharbor.ai/chat) yang disebut di [sumber harga Token Harbor](../sources/tokenharbor-pricing.md).
- Muncul di lineup gratis sumber harga, tetapi tidak masuk tabel kategori free di [katalog model](token-harbor-model-catalog.md) karena halaman itu hanya untuk model API.

## Open questions

- Model-model apa saja yang menjadi tujuan routing TH-Rudder? Tidak dijelaskan sumber.
- Apakah TH-Rudder akan tetap gratis tanpa batas (belum ada indikasi perubahan)?

## Related

- [TH-Rudder (sumber)](../sources/tokenharbor-th-rudder.md)
- [Web chat limits (sumber)](../sources/tokenharbor-docs-web-chat-limits.md)
- [Token Harbor](token-harbor.md)
- [Katalog Model Token Harbor](token-harbor-model-catalog.md)
- [Overview](../overview.md)

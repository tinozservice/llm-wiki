---
title: "Token Harbor docs — Web chat limits"
type: source
created: 2026-10-02
updated: 2026-10-02
sources: []
tags: [token-harbor, web-chat, th-rudder, limits]
---

# Token Harbor docs — Web chat limits

- **Sumber**: Token Harbor — dokumentasi, halaman *Web chat limits*
- **Penulis**: Token Harbor
- **URL**: <https://tokenharbor.ai/docs/web-chat/limits>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-02
- **Berkas mentah**: `raw/2026/oktober/02/Token Harbor docs Web chat limits.md`

## TL;DR

Aturan lengkap limit web chat Token Harbor: teks **TH-Rudder unlimited** (hanya limit kecepatan); kuota harian — voice 100, gambar 10, web search 200, file 20. Pemakaian "bebas" 24 jam setelah dipakai, bukan tengah malam. Ada juga batas storage, kecepatan, ukuran pesan, dan retensi (arsip 30 hari).

## Key points

- **Kuota harian** (reset 24 jam setelah pemakaian):
  - Teks di **TH-Rudder**: unlimited (hanya limit kecepatan);
  - **Voice**: 100/hari;
  - **Gambar**: 10/hari (dihasilkan pada model gratis);
  - **Web search**: 200/hari — di model gratis, TH-Rudder, dan pass; pencarian yang dibayar dari saldo tidak dihitung; setelah limit, jawaban tetap datang tanpa search;
  - **File** (PDF/Word/Excel/PowerPoint dari jawaban): 20/hari; setelah limit, jawaban tetap di chat.
- **Storage**: dokumen 10 MB (satu allowance per akun, dibagi semua proyek); maksimum 200 percakapan (termasuk arsip) — di limit, chat baru ditolak sampai dihapus.
- **Kecepatan**: pesan 10/menit & 200/jam; unggah file 30/menit & 200/jam; voice 20/menit & 200/jam.
- **Ukuran**: pesan maks 32.000 karakter (paste >4.000 karakter dilampirkan sebagai file teks); 4 attachment/pesan; foto & audio 10 MB; video 100 MB; dokumen 4 MB; custom instructions 1.500 karakter; balasan ±3.100 kata; model melihat ±32.000 karakter terakhir percakapan.
- **Retensi**: percakapan diarsipkan setelah **30 hari** tanpa pesan (tetap bisa dibaca); tautan share publik berlaku **7 hari**.
- Pengguna tidak perlu menghafal: chat menampilkan limit yang tersentuh saat itu; usage ada di Settings → Usage.

## Notable quotes

> "A use frees up 24 hours after you make it, not at midnight."

> "Text on TH-Rudder | Unlimited | Only the speed limits below apply."

## What this changes

- **Menjawab open question TH-Rudder**: jatah harian gambar (10) dan web search (200) kini diketahui; plus voice/file/storage/speed/retensi.
- Halaman diperbarui: [TH-Rudder](../entities/th-rudder.md), [Token Harbor](../entities/token-harbor.md).

## Related

- [TH-Rudder](../entities/th-rudder.md)
- [Token Harbor](../entities/token-harbor.md)
- [Token Harbor — Rate limits](tokenharbor-docs-rate-limits.md)

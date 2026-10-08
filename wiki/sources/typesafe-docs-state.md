---
title: "TypeSafe Docs — State"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [typesafe, state, api]
---

# TypeSafe Docs — State

- **Sumber**: Dokumentasi resmi TypeSafe — konsep State
- **Penulis**: TypeSafe
- **URL**: <https://docs.typesafe.ai/concepts/state>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/typesafe docs. State.md`

## TL;DR

**State** adalah konten yang diminta dievaluasi model System One: pesan dukungan, kutipan teks, atau kondisi aplikasi — dikirim di field `state`. Bisa berupa **string, objek JSON, atau array teks**; semua pertanyaan dalam satu request melihat state yang sama dan dievaluasi independen.

## Key points

- Panduan bentuk: string (satu pesan/artikel), object (field bernama/record — disarankan untuk sebagian besar kasus), array (urutan pesan/record).
- Prinsip: "materi yang akan Anda sajikan ke panel ahli sebelum meminta penilaian".
- Contoh state dukungan: `ticket` (subject + messages), `order` (id + charges), `refund_policy` — satu state, meski berisi percakapan + order + kebijakan.
- Jev hanya menerima teks; gambar/audio/video tidak (belum) didukung — pra-proses ke teks/field terstruktur.
- Bahasa Inggris = training utama; bahasa lain (termasuk CJK) berakurasi lebih rendah — uji dulu + perhatikan [Confidence](typesafe-docs-confidence.md).
- Pisahkan *konten* (state) dari *pertanyaan* (questions): kebijakan & bukti di state; penilaian ada di pertanyaan.

## Notable quotes

> "Think of state as the material you would present to a panel of experts before asking them to make a judgment."

## What this changes

- Melengkapi [entitas Jev](../entities/jev.md) (kontrak input).
- Tidak ada kontradiksi.

## Related

- [Jev](../entities/jev.md) · [TypeSafe](../entities/typesafe.md)
- [TypeSafe — Primitives](typesafe-docs-primitives.md)
- [TypeSafe — Advanced: Structure](typesafe-docs-advanced-structure.md)

---
title: "TypeSafe Docs — Advanced: Structure"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [typesafe, structure, primitives]
---

# TypeSafe Docs — Advanced: Structure

- **Sumber**: Dokumentasi resmi TypeSafe — "Advanced: structure"
- **Penulis**: TypeSafe
- **URL**: <https://docs.typesafe.ai/primitives/advanced>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/typesafe docs. Advanced structure.md`

## TL;DR

Semua field teks di primitives menerima **JSON structure**, bukan hanya string — `instructions`, deskripsi opsi Choice, level Score, dan `criteria.true/false` Noul (tipe `EntryType`: string | object | array | null). Struktur dipakai saat pertanyaan punya beberapa bagian (key berlabel membantu klarifikasi) atau saat data pendukung sudah berbentuk JSON (schema, taksonomi, row database).

## Key points

- Contoh structured instructions (invoice): satu objek `field` (nama/tipe/deskripsi) dirujuk beberapa pertanyaan sekaligus — Noul verifikasi nilai (`invoice_number`), Choice memilih nama pelanggan, dua Score membucketkan jumlah (`amount_due`) dan termin (`payment_terms`) — pola "satu shape, banyak pertanyaan".
- Array juga valid: `{question, compare, focus}` untuk instruksi berisi daftar hal yang dicek/dibandingkan.
- **Structured Choice options**: objek `{what, not_for, examples}` mempertajam boundary antar opsi.
- **Walking a taxonomy**: opsi = node anak dengan subtree sebagai nilai (contoh listing botol: Sporting Goods→Cycling→Bike Bottles vs Home & Kitchen→Drinkware→Water Bottles) — model melihat isi cabang sebelum memilih; lanjut per level hingga leaf; subtree besar boleh diringkas ke anak langsung + sampel leaf.
- **Structured Score levels**: objek `{summary, signals[]}` (contoh PR scope: one change / main+small tweak / several independent changes).
- **Structured Noul criteria**: `true`/`false` dengan `{what, examples[]}` (contoh phishing: minta password langsung vs instruct reset password).
- Field names (question, focus, what, not_for, examples, signals…) **bukan reserved** — bebas dipilih; yang penting konsisten.

## Notable quotes

> "System One models are trained to understand structure."

## What this changes

- Melengkapi [Jev](../entities/jev.md)/[primitives](typesafe-docs-primitives.md).
- Tidak ada kontradiksi.

## Related

- [TypeSafe — Primitives](typesafe-docs-primitives.md)
- [TypeSafe — State](typesafe-docs-state.md)
- [TypeSafe](../entities/typesafe.md)

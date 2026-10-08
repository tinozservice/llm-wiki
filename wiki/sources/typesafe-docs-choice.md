---
title: "TypeSafe Docs — Choice"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [typesafe, choice, primitives]
---

# TypeSafe Docs — Choice

- **Sumber**: Dokumentasi resmi TypeSafe — primitives/Choice
- **Penulis**: TypeSafe
- **URL**: <https://docs.typesafe.ai/primitives/choice>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/typesafe docs. Choice.md`

## TL;DR

**Choice** = pilih satu opsi dari himpunan tetap (maks **255 opsi**). Jawaban: `choice` (opsi berprobabilitas tertinggi), `probabilities` (distribusi penuh, jumlah 1), `confidence`. Praktik: sertakan opsi `other`/`none of the above` bila daftar mungkin tidak menutup semua input; deskripsi opsi boleh `null` bila namanya sudah jelas.

## Key points

- Kirim **banyak pertanyaan Choice sekaligus**; jawaban yang tak dipakai cukup diabaikan (masih membayar token pertanyaan, tapi murah & paralel).
- Contoh kompleks: 5 pertanyaan Choice untuk satu tiket ambigu (department, return_reason, shipping_issue, requested_resolution, tone) — `department` `returns` 0.61/`billing` 0.35 → confidence 0.42 memantulkan tiket multi-tim; kode mengirim salinan ke billing (share > 0.25) dan bertanya ke pelanggan saat confidence resolution 0.20 < 0.5.
- **Struktur deskripsi opsi** untuk boundary rumit: objek `{what, not_for, examples}` (field bebas — bukan reserved); "what it covers / what belongs to neighboring option / examples".
- **Klasifikasi hierarkis**: rantai Choice per level taksonomi; cookbook `hierarchical_classification` memakai **beam search** atas probabilitas (jaga K jalur, bukan greedy).

## Notable quotes

> "A Choice question accepts up to 255 options, and adding options costs a few tokens each, so give the model the full list… rather than a shortlist."

## What this changes

- Melengkapi [Jev](../entities/jev.md)/[primitives](typesafe-docs-primitives.md).
- Tidak ada kontradiksi.

## Related

- [TypeSafe — Primitives](typesafe-docs-primitives.md) · [TypeSafe — Score](typesafe-docs-score.md) · [TypeSafe — Noul](typesafe-docs-noul.md)
- [TypeSafe](../entities/typesafe.md)

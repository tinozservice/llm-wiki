---
title: "TypeSafe Docs — Jev 1.13 Jaggedness (Batas Kemampuan)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [typesafe, jev, limitations]
---

# TypeSafe Docs — Jev 1.13 Jaggedness (Batas Kemampuan)

- **Sumber**: Dokumentasi resmi TypeSafe — halaman model jaggedness untuk jev-1.13
- **Penulis**: TypeSafe
- **URL**: <https://docs.typesafe.ai/model-jaggedness/jev-1.13>
- **Tanggal publikasi**: tidak dicantumkan ("last reviewed 2026-10-02"); klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/typesafe docs. Jev 1.13 jaggedness.md`

## TL;DR

Pengakuan resmi batas Jev 1.13: cepat & terkalibrasi untuk penilaian *common-sense*, tetapi **literal**, lemah pada **angka/aritmetika/tanggal**, mudah goyah pada **indireksi**, **state besar tak relevan**, dan **konten adversarial**. Sembilan mode kegagalan terdokumentasi — masing-masing dengan mitigasi.

## Key points

- 9 mode kegagalan: (1) literal reading; (2) math & numbers (termasuk counting — "tidak menghitung secara andal"); (3) date/time comparison (tanggal dibaca sebagai teks, bukan kuantitas terurut); (4) indirection (pertanyaan berlapis/negatif ganda); (5) large state penuh detail tak relevan ("context rot" — akurasi turun); (6) adversarial content (state = data, bukan diperlakukan hostile); (7) instruksi & kriteria kontradiktif; (8) **choice option order** — cenderung memilih opsi pertama; cek dengan reorder; (9) generation — tidak dilatih menulis teks; "chaining choices" untuk memaksa generasi sangat lambat & buruk.
- Mitigasi utama: tulis kondisi eksak di `instructions`; aritmetika **selalu di kode** (termasuk counting & tanggal — ekstraksi komponen via Choice, aritmetika di kode); filter state sebelum dikirim; untuk ekstraksi gunakan regex/model generatif lalu Jev memilih kandidat.
- Peringatan eksplisit: jangan memakai skor/ekspektasi untuk merekonstruksi angka eksak antar-level; level score lemah dalam kalibrasi numerik.
- Repositori uji: publikasi menerima laporan mode kegagalan baru via Discord.

## Notable quotes

> "`jev-1.13` answers the question you wrote, not the one you meant."

> "Jev is not a calculator. We strongly recommend implementing any mathematical logic in code."

## What this changes

- Memberi wiki daftar batas resmi model [Jev](../entities/jev.md) — penting untuk klaim "apakah Jev bisa menggantikan LLM" (tidak; lihat [coding agents](typesafe-docs-coding-agents.md)).
- Tidak ada kontradiksi.

## Related

- [Jev](../entities/jev.md) · [TypeSafe](../entities/typesafe.md)
- [TypeSafe — Coding Agents](typesafe-docs-coding-agents.md)
- [Model Keputusan](../concepts/decision-models.md)

---
title: "TypeSafe Docs — Introduction"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [typesafe, jev, decision-models, system-one]
---

# TypeSafe Docs — Introduction

- **Sumber**: Dokumentasi resmi TypeSafe — halaman Introduction
- **Penulis**: TypeSafe
- **URL**: <https://docs.typesafe.ai/introduction>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/typesafe docs. Introduction.md`

## TL;DR

**Jev adalah model unggulan TypeSafe dan model pertama kelas "System One"** — model yang membuat **keputusan terstruktur** untuk perangkat lunak, bukan menghasilkan teks. Anda mengirim satu `state` + pertanyaan bertipe (*questions*), dan menerima jawaban bertipe langsung (tanpa parsing): `choice`, `score`, `noul`, dengan distribusi probabilitas dan *confidence*.

## Key points

- Motivasi: LLM dirancang menghasilkan teks untuk dibaca manusia; saat kode butuh penilaian terstruktur, terjadi mismatch ("memaksa sistem text-generation mengeluarkan keputusan terstruktur lalu mem-parsing hasilnya").
- **Tiga primitives** (bisa dikombinasikan dalam satu API call, dievaluasi paralel & independen terhadap state yang sama; menambah pertanyaan hampir tidak menambah waktu respons):
  - **Choice** — pilih satu opsi dari daftar → `choice`, `probabilities`, `confidence`
  - **Score** — nilai pada rubrik bertingkat → `score`, `probabilities`, `confidence`
  - **Noul** — apakah pernyataan ini benar? → `noul` (0–1)
- **Pertanyaan atomik**: satu pertanyaan = satu penilaian spesifik ("gut-check" ala orang berpengetahuan dalam beberapa detik); dekomposisi keputusan besar menjadi pertanyaan-pertanyaan kecil lalu gabungkan dengan logika di kode (contoh: pitch startup → skor terpisah untuk pasar, feasibilitas teknis, diferensiasi).
- Setiap pertanyaan independen — "menambah pertanyaan tidak menciptakan *context-rot*".

## Notable quotes

> "Jev evaluates typed *questions* against a *state* and returns structured results directly. No text generation, no parsing."

## What this changes

- Menjawab pertanyaan terbuka wiki "Apa itu Jev?" — entitas [TypeSafe](../entities/typesafe.md) dan [Jev](../entities/jev.md) dibuat; konsep [Model Keputusan](../concepts/decision-models.md).
- Akun [OpenCode Zen](../entities/opencode-zen.md) & [Tokenra](../entities/tokenra.md) untuk `jev-1.13`/`jev-latest`/`jev-router` kini terjelaskan.

## Related

- [TypeSafe](../entities/typesafe.md) · [Jev](../entities/jev.md)
- [TypeSafe — System One](typesafe-docs-system-one.md)
- [TypeSafe — Primitives](typesafe-docs-primitives.md)
- [Model Keputusan](../concepts/decision-models.md)

---
title: "TypeSafe Docs — Confidence"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [typesafe, confidence, api]
---

# TypeSafe Docs — Confidence

- **Sumber**: Dokumentasi resmi TypeSafe — Confidence
- **Penulis**: TypeSafe
- **URL**: <https://docs.typesafe.ai/confidence>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/typesafe docs. Confidence.md`

## TL;DR

Setiap jawaban Choice & Score membawa `probabilities` (distribusi) dan `confidence` (0–1) yang merangkum kepadatan distribusi: 1 = semua probabilitas di satu hasil, 0 = merata. Noul tidak punya `confidence` terpisah — nilai `noul` itu sendiri sudah probabilitas. Confidence memungkinkan kode berkata "saya tidak yakin" dan merutekan keputusan.

## Key points

- Rumus resmi (disediakan agar bisa dihitung ulang sendiri):
  - **Choice** (n opsi): `confidence = (p_max − 1/n) / (1 − 1/n)`.
  - **Noul**: saran konversi `confidence = |2p − 1|` (agar sebanding dengan Choice).
  - **Score** (level terurut): `confidence = max(0, 1 − spread / MAD_unif)` — jarak rata-rata berbobot antara jawaban & level terpuncak dibanding spread merata.
- Pola tiga jalur: **high** → bertindak otomatis; **medium** → lanjut dengan hati-hati/konfirmasi/review; **low** → jangan bertindak, eskalasi ke manusia.
- Threshold **skalabel dengan risiko**: aksi berisiko tinggi butuh confidence lebih tinggi (contoh kode: `< 0.5` → manusia; `approve_transfer` butuh `> 0.9`; `check_balance` langsung).
- TypeSafe menyebut `confidence` sebagai salah satu cara "masuk akal" merangkum distribusi — pelanggan bisa memakai ukuran lain (mis. `p_max`, rasio top-to-second) dari `probabilities` yang sama.

## Notable quotes

> "If an intelligent system, whether human or machine, cannot express honest uncertainty, the system cannot be trusted."

## What this changes

- Melengkapi [Jev](../entities/jev.md) (kontrak confidence + pola threshold).
- Tidak ada kontradiksi.

## Related

- [Jev](../entities/jev.md) · [TypeSafe](../entities/typesafe.md)
- [TypeSafe — Choice](typesafe-docs-choice.md) · [TypeSafe — Score](typesafe-docs-score.md) · [TypeSafe — Noul](typesafe-docs-noul.md)

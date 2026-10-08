---
title: "TypeSafe Docs — Score"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [typesafe, score, primitives]
---

# TypeSafe Docs — Score

- **Sumber**: Dokumentasi resmi TypeSafe — primitives/Score
- **Penulis**: TypeSafe
- **URL**: <https://docs.typesafe.ai/primitives/score>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/typesafe docs. Score.md`

## TL;DR

**Score** = posisi pada **rubrik bertingkat terurut** (2–10 level). Jawaban: `score` (rata-rata tertimbang probabilitas antar level — **bisa pecahan di antara level**), `legend`, `probabilities`, `confidence`. Contoh: skor severity 1,43 dari peluang 0.57 (level 1) + 0.43 (level 2).

## Key points

- Level = posisi array `criteria` (0..n−1); setiap level dinilai **sendiri** terhadap state — model tidak melihat nomor atau tetangga level, jadi "lebih buruk dari level sebelumnya" tak bermakna; nomor dalam deskripsi tidak membantu.
- Tulis level sebagai **situasi** ("Broken but workaround exists"), bukan derajat ("moderately severe"). Contoh A/B: deskripsi numerik saja → skor 0.55 conf 0.33; deskripsi situasional → tepat.
- Skor sama bisa berasal dari distribusi berbeda (1.0 = semua di level 1, atau setengah di 0 & 2) — baca `probabilities` + `confidence`.
- **Satu dimensi per pertanyaan**: pecah scoring kompleks jadi beberapa Score + bobot di kode (**composite scoring**); normalisasi `score / (len(criteria)-1)` sebelum digabung. Contoh: prioritas = 0.6×severity + 0.3×frustration + 0.1×report_quality = 0.66.
- Level bisa objek `{what, examples}` — contoh membantu hanya bila menyerupai input nyata (contoh tak relevan = hasil sama seperti string polos); confidence tinggi bukan bukti kebenaran.

## Notable quotes

> "Describe situations, not degrees. 'Broken or degraded feature, but workaround exists' gives the model something to match the state against."

## What this changes

- Melengkapi [Jev](../entities/jev.md) (semantik `score` & jebakannya).
- Tidak ada kontradiksi.

## Related

- [TypeSafe — Primitives](typesafe-docs-primitives.md) · [TypeSafe — Choice](typesafe-docs-choice.md) · [TypeSafe — Noul](typesafe-docs-noul.md)
- [TypeSafe — Confidence](typesafe-docs-confidence.md)

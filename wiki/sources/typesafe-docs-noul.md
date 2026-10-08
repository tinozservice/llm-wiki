---
title: "TypeSafe Docs — Noul"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [typesafe, noul, primitives]
---

# TypeSafe Docs — Noul

- **Sumber**: Dokumentasi resmi TypeSafe — primitives/Noul
- **Penulis**: TypeSafe
- **URL**: <https://docs.typesafe.ai/primitives/noul>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/typesafe docs. Noul.md`

## TL;DR

**Noul** = pertanyaan ya/tidak; jawabannya satu angka `noul` (0–1) = probabilitas "ya". **Tidak ada `confidence` terpisah** — nilainya sudah menggabungkan jawaban dan kepastian; ~0.5 = model tidak yakin. Kode men-threshold angka ini; ambang tergantung biaya salah (0,5 netral; naikkan bila false-yes mahal; turunkan bila false-no berbahaya).

## Key points

- Contoh kalibrasi (pertanyaan "Is the customer asking for a human agent?"): "Thanks, that fixed it!" 0.02; "How do I reset my password?" 0.07; "I need this sorted today" 0.26; "Are you a bot?" 0.40; "Is there any way to speak to someone about my invoice?" 0.84; "I have asked three times… talk to a real person?" 0.99.
- Noul mengukur **satu proposisi**, bukan derajat: "Is the candidate strong in Python?" (0.03/0.14/0.81/0.92) ≠ skala pengalaman — bandingkan dengan Score 4-level di klip.
- Aturan penulisan: satu pertanyaan per Noul ("angry AND refund" → dua Noul); frasa agar nilai tinggi = ya; boundary tegas ("any") — bila halus, tambah `criteria.true`/`false`.
- Pola kode: `YES=0.8, NO=0.2`; nilai di antara → review manusia; contoh deduplikasi resume: `same_as_record_18` 0.74 vs 0.42→0.09 vs 77→0.08 (structured instructions memuat record pembanding per pertanyaan).
- Cookbook Noul: parallel 13-question checklist, self-consistency, reranking (pakai nilai sebagai ranking), line-by-line search, structure recovery.

## Notable quotes

> "The number is the answer and the certainty in one."

## What this changes

- Melengkapi [Jev](../entities/jev.md) (semantik `noul`).
- Tidak ada kontradiksi.

## Related

- [TypeSafe — Primitives](typesafe-docs-primitives.md) · [TypeSafe — Choice](typesafe-docs-choice.md) · [TypeSafe — Score](typesafe-docs-score.md)
- [TypeSafe — Advanced: Structure](typesafe-docs-advanced-structure.md)

---
title: "TypeSafe Docs — AI Primer (RLCD & Machine Native Intelligence)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [typesafe, rlcd, training, decision-models]
---

# TypeSafe Docs — AI Primer (RLCD & Machine Native Intelligence)

- **Sumber**: Dokumentasi resmi TypeSafe — AI / machine-learning primer
- **Penulis**: TypeSafe
- **URL**: <https://docs.typesafe.ai/introduction/machine-learning-primer>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/typesafe docs. AI primer.md`

## TL;DR

TypeSafe bertaruh bahwa otomasi skala besar akan didominasi interaksi **AI-ke-AI/AI-ke-software** (perkiraan 99% mesin-ke-mesin, 1% manusia) sehingga antarmuka mesin lebih penting dari antarmuka chat — mereka menyebutnya **"Machine Native Intelligence"**. Alih-alih RLHF/RLVR, TypeSafe melatih modelnya dengan **RLCD** untuk keputusan terkalibrasi.

## Key points

- **Machine Native Intelligence**: AI dengan sifat mirip software — struktur, keandalan, observability, testability, kecepatan, konsistensi, biaya rendah.
- "We are building prod, not God": target bukan model serba bisa, tetapi keputusan sempit yang bisa diperiksa & dijalankan kode.
- **RLHF** (dipakai InstructGPT/ChatGPT) — *co-invented* oleh **Diogo Almeida**, salah satu cofounder TypeSafe (tautan Google Scholar di klip).
- Masalah RLHF untuk otomasi: menghargai *sycophancy* & halusinasi percaya diri; **mode dropping** (distribusi menyempit demi gaya tertentu).
- **RLCD**: model tidak menghasilkan teks; mengembalikan keputusan + probabilitas; probabilitas tinggi harus berkorelasi dengan peluang benar. Kalibrasi: prediksi berprobabilitas 0,2 terjadi ~20% kasus; 0,8 → ~80%; 1,0 → 100% — pada tingkat kelompok, bukan jaminan per jawaban.
- RLHF tetap cocok untuk model percakapan; produksi butuh objektif berbeda (keputusan terbatas + ketidakpastian terkalibrasi).

## Notable quotes

> "We call this Machine Native Intelligence: AI with software-like properties such as structure, reliability, observability, testability, speed, consistency, and low cost."

## What this changes

- Melengkapi latar teknis [Jev](../entities/jev.md)/[TypeSafe](../entities/typesafe.md) & konsep [Model Keputusan](../concepts/decision-models.md).
- Tidak ada kontradiksi.

## Related

- [TypeSafe](../entities/typesafe.md) · [Jev](../entities/jev.md)
- [TypeSafe — Confidence](typesafe-docs-confidence.md)
- [Model Keputusan](../concepts/decision-models.md)

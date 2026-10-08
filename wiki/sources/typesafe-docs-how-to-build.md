---
title: "TypeSafe Docs — How to Build (AI-Powered Software)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [typesafe, arsitektur, decision-models]
---

# TypeSafe Docs — How to Build (AI-Powered Software)

- **Sumber**: Dokumentasi resmi TypeSafe — How to build with TypeSafe
- **Penulis**: TypeSafe
- **URL**: <https://docs.typesafe.ai/concepts/how-to-build-with-system-one>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/typesafe docs. How to build with TypeSafe.md`

## TL;DR

Filosofi arsitektur: **"AI-powered software", bukan agen** — kode memegang control flow & aturan deterministik; model masuk hanya di titik yang butuh *common sense* terprogram. Tiga arsitektur dibandingkan (software tradisional vs LLM agent vs AI-powered software); target TypeSafe: rasio **>100× intelligence-to-speed-and-cost**.

## Key points

- Ringkasan lima aturan: pertahankan kontrol di kode; pecah penilaian luas menjadi pertanyaan sempit bertipe; beri tiap pertanyaan hanya konteks yang perlu; pakai probabilitas/confidence untuk act/review/escalate; tanyakan pertanyaan independen bersamaan lalu komposisikan di kode.
- Sifat komposabel System One: **structured** (type-safe by construction), **parallel** (tidak jadi konteks tersembunyi), **comparable** (bisa di-sort/threshold), **fast** (sebagian besar query **~100 ms**), **calibrated confidence** (RLCD), **self-consistent**.
- Contoh lengkap `triage_ticket.py`: state terstruktur (tiket + pelanggan + policy), 7 pertanyaan sekaligus (Choice topik, 4 Noul spam-signal, Score frustrasi), kombinasi sinyal spam berbobot **0.45/0.30/0.25** di kode, eskalasi saat ragu (`0.4 < spam_risk < 0.6` atau `confidence < 0.75`), serta *speculative fan-out* — jawaban yang tak relevan diabaikan.
- Menjawab "kenapa bukan agent": tiap loop agen adalah kesempatan keluar jalur; keputusan atomik + kontrol kode lebih dapat diandalkan untuk otomasi tanpa pengawas.

## Notable quotes

> "Code handles deterministic work and owns the control flow. The model appears only where the system needs programmable common sense."

> "TypeSafe's target is a greater than 100× intelligence-to-speed-and-cost ratio."

## What this changes

- Pola arsitektur baru di wiki (bandingkan pola agen di [Puter](../entities/puter.md)/[OpenCode](../entities/opencode.md)).
- [Model Keputusan](../concepts/decision-models.md) diperkaya.
- Tidak ada kontradiksi.

## Related

- [TypeSafe](../entities/typesafe.md) · [Jev](../entities/jev.md)
- [TypeSafe — Use Cases](typesafe-docs-use-cases.md)
- [Model Keputusan](../concepts/decision-models.md)

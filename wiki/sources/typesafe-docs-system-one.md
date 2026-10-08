---
title: "TypeSafe Docs — System One"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [typesafe, system-one, decision-models]
---

# TypeSafe Docs — System One

- **Sumber**: Dokumentasi resmi TypeSafe — konsep System One
- **Penulis**: TypeSafe
- **URL**: <https://docs.typesafe.ai/concepts/system-one>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/typesafe docs. System One.md`

## TL;DR

**System One models** adalah kelas model AI yang membuat keputusan cepat dan terstruktur untuk perangkat lunak: mengevaluasi `state`, mengembalikan jawaban bertipe + probabilitas. Berbeda dari LLM: tidak menulis balasan, tidak menghasilkan kode, tidak menjelaskan alasan — dan **dioptimalkan agar terkalibrasi** (probabilitas mencerminkan ketidakpastian). Jev = model pertama kelas ini.

## Key points

- Nama "System One" diambil dari konsep **Daniel Kahneman** (*Thinking, Fast and Slow*): pemikiran cepat & intuitif vs lambat & deliberatif.
- Input Jev: **teks saja** — string, objek JSON, atau array teks; gambar/audio/video belum didukung.
- Tabel contoh primitives (Choice: departemen tiket; Score: tingkat frustrasi; Noul: apakah pesan meminta refund).
- Alur kerja contoh (refund): bangun state (pesan + transaksi + kebijakan) → tanya beberapa pertanyaan independen sekaligus → kombinasikan dengan cek deterministik di kode → rute untuk aksi/review.
- *Confidence* disertakan agar kode tahu kapan bertindak vs eskalasi ke manusia/model reasoning.
- Panggilan: SDK klien atau `POST /v1/systemone`; field `model` memilih model; contoh dokumentasi memakai `jev-latest` (juga default SDK).
- Kalibrasi diukur pada grup prediksi, bukan jaminan per jawaban.

## Notable quotes

> "Like an LLM, a System One model understands natural-language input. It returns typed decisions and probabilities rather than generated text."

## What this changes

- Konsep kunci untuk [Model Keputusan](../concepts/decision-models.md).
- Sumber schema `/v1/systemone` yang juga diadopsi model lain (lihat [OpenRouter — Decisions Models](openrouter-decisions-models.md)).

## Related

- [Jev](../entities/jev.md) · [TypeSafe](../entities/typesafe.md)
- [TypeSafe — Introduction](typesafe-docs-introduction.md)
- [TypeSafe — API Reference](typesafe-docs-api.md)
- [Model Keputusan](../concepts/decision-models.md)

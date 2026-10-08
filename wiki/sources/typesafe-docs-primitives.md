---
title: "TypeSafe Docs — Primitives (Questions)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [typesafe, primitives]
---

# TypeSafe Docs — Primitives (Questions)

- **Sumber**: Dokumentasi resmi TypeSafe — Primitives (Questions)
- **Penulis**: TypeSafe
- **URL**: <https://docs.typesafe.ai/primitives>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/typesafe docs. Primitives (Questions).md`

## TL;DR

Primitives adalah blok bangunan kecil bertipe yang dikomposisikan di kode: **satu pertanyaan = satu penilaian ("snap judgment")** terhadap satu state. Tiga tipe: **Choice, Score, Noul**; semua pertanyaan dalam satu request dievaluasi paralel & independen, dan menambah pertanyaan "hampir gratis".

## Key points

- Satu snap judgment = sesuatu yang diputuskan orang berpengetahuan dalam sedetik; "Analyze this message and determine the best course of action" bukan pertanyaan System One — pecah.
- Definisi pertanyaan: `id` (kunci kode, tidak dikirim ke model), `type`, `instructions` (string/object/array), `criteria` (opsi Choice / level Score / deskripsi ya-tidak Noul).
- Panduan memilih tipe: Choice = kategorisasi tanpa urutan; Score = spektrum terjelaskan; Noul = ya/tidak dengan probabilitas sebagai sinyal. "Noul 0.5 bukan berarti sedang" — arahkan pertanyaan jelas.
- Field state dapat direferensikan lewat path ber-backtick (mis. `\`ticket.messages[0].text\``) agar model tahu bagian mana yang dinilai.
- **Speculative fan-out**: kirim semua pertanyaan yang mungkin dibutuhkan dalam satu request; cookbook "Parallel questions" mengklaim **11,5× lebih murah & 9,6× lebih cepat** vs 13 call terpisah, jawaban tidak berubah.
- **Composite scoring**: pecah keputusan kompleks jadi beberapa pertanyaan + bobot di kode.
- Ketergantungan antar pertanyaan: hanya minta request kedua bila kode benar-benar tidak bisa menyusunnya sebelum jawaban pertama (mis. perlu fetch data / menentu opsi berikutnya); kalau tidak, tanya sekaligus.
- Jawaban selalu dibatasi opsi yang kita berikan (distribusi penuh, bukan nilai karangan) & independen (tidak jadi konteks tersembunyi satu sama lain).

## Notable quotes

> "Ask for a judgment a knowledgeable person makes in a second given the right context."

## What this changes

- Melengkapi [Jev](../entities/jev.md) & [Model Keputusan](../concepts/decision-models.md).
- Tidak ada kontradiksi.

## Related

- [TypeSafe — Choice](typesafe-docs-choice.md) · [TypeSafe — Score](typesafe-docs-score.md) · [TypeSafe — Noul](typesafe-docs-noul.md)
- [TypeSafe](../entities/typesafe.md)

---
title: TypeSafe
type: entity
created: 2026-10-08
updated: 2026-10-08
sources: [typesafe-docs-introduction, typesafe-docs-system-one, typesafe-docs-models, typesafe-docs-quickstart, typesafe-docs-ai-primer, typesafe-docs-state, typesafe-docs-confidence, typesafe-docs-api, typesafe-docs-how-to-build, typesafe-docs-use-cases, typesafe-docs-jaggedness-jev-113, typesafe-docs-coding-agents, typesafe-docs-agent-skill, typesafe-docs-primitives, typesafe-docs-choice, typesafe-docs-score, typesafe-docs-noul, typesafe-docs-advanced-structure, openrouter-jev-113]
tags: [typesafe, ai, decision-models, system-one]
---

# TypeSafe

**TypeSafe** (docs.typesafe.ai) adalah perusahaan AI yang bertaruh pada **"Machine Native Intelligence"**: otomasi skala besar akan didominasi interaksi mesin-ke-mesin (perkiraan 99% AI-to-AI/AI-to-software, 1% manusia), sehingga model perlu **keluaran ala-software** — terstruktur, andal, dapat diuji, cepat, konsisten, murah. Produknya: kelas model **[System One](../concepts/decision-models.md)** dengan model unggulan **[Jev](jev.md)** ([AI primer](../sources/typesafe-docs-ai-primer.md), [Introduction](../sources/typesafe-docs-introduction.md)).

## Yang membedakan

- **Bukan LLM chatbot**: System One tidak menulis teks/kode/penjelasan — mengevaluasi `state` + pertanyaan bertipe dan mengembalikan `choice`/`score`/`noul` + probabilitas + confidence ([System One](../sources/typesafe-docs-system-one.md)).
- **RLCD, bukan RLHF**: melatih keputusan **terkalibrasi** (probabilitas 0,8 benar ~80% pada grup prediksi) alih-alih preferensi teks; menghindari sycophancy & *mode dropping* RLHF. Cofounder TypeSafe **Diogo Almeida** adalah co-inventor RLHF ([AI primer](../sources/typesafe-docs-ai-primer.md)).
- **Filosofi arsitektur "AI-powered software, bukan agen"**: kode memegang control flow; model hanya untuk *common sense* terprogram; target rasio >100× intelligence-to-speed-and-cost; sebagian besar query ~100 ms ([How to build](../sources/typesafe-docs-how-to-build.md)).
- **Primitives**: Choice (≤255 opsi), Score (2–10 level, mengembalikan nilai bisa pecahan), Noul (probabilitas ya) — semua bisa sekaligus dalam satu request; *speculative fan-out* diklaim 11,5× lebih murah/9,6× lebih cepat vs call terpisah ([Primitives](../sources/typesafe-docs-primitives.md)).
- **API tunggal** `POST /v1/systemone` + SDK Python/JS + **agent skill** untuk Claude Code/Codex/agen lain (termasuk menyebut **opencode** di dokumen coding-agents) ([API](../sources/typesafe-docs-api.md), [agent skill](../sources/typesafe-docs-agent-skill.md)).
- **Transparansi batas**: dokumen *jaggedness* resmi — literal, lemah di angka/tanggal, rentan konten adversarial, bias urutan opsi Choice ([jaggedness](../sources/typesafe-docs-jaggedness-jev-113.md)).

## Posisi di wiki

- Schema `/v1/systemone`-nya kini jadi **de facto standar** kategori model keputusan lintas vendor — diadopsi Upstage, Cloudflare, Inception Mercury Decide, Kev, dll. ([OpenRouter — Decisions](../sources/openrouter-decisions-models.md)).
- Jev juga muncul di katalog pihak ketiga: [OpenCode Zen](opencode-zen.md) (berbayar $0.04/M) dan [Tokenra](tokenra.md) (`jev-latest`, `jev-router`).

## Open questions

- Ukuran tim/pendanaan/kantor TypeSafe tidak disebut di klip.
- Harga Btok/Mtok identik ($42 = $0.042/M) disajikan sebagai dua satuan — belum ada konteks kenapa memakai Btok.
- Hubungan TypeSafe dengan OpenRouter (model di-serve oleh satu provider — kemungkinan TypeSafe sendiri) tidak eksplisit.
- Kapan `jev-preview` akan menunjuk build berbeda (`jev-1.13` kini keduanya).

## Related

- [Jev](jev.md) — model unggulan.
- [Model Keputusan](../concepts/decision-models.md)
- [OpenRouter — Decisions Models (sumber)](../sources/openrouter-decisions-models.md)
- [OpenCode Zen](opencode-zen.md) · [Tokenra](tokenra.md) — katalog tempat Jev terjual.
- [Overview](../overview.md)

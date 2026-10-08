---
title: "TypeSafe Docs — API Reference"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [typesafe, api, reference]
---

# TypeSafe Docs — API Reference

- **Sumber**: Dokumentasi resmi TypeSafe — referensi HTTP API
- **Penulis**: TypeSafe
- **URL**: <https://docs.typesafe.ai/api>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/typesafe docs. API reference.md`

## TL;DR

Satu endpoint: **`POST https://api.typesafe.ai/v1/systemone`** — evaluasi `state` terhadap map `questions` bertipe, kembalikan `answers` terstruktur (satu per pertanyaan). Tiga tipe pertanyaan: **Noul** (ya/tidak → probabilitas), **Choice** (maks **255 opsi**), **Score** (2–**10 level**). Jawaban Choice/Score membawa `confidence` 0–1.

## Key points

- Request: `state` (string | object | array), `model` (`jev-latest`), `questions` (map id → Question). ID pertanyaan tidak dikirim ke model — hanya untuk kode; jawaban kembali dengan kunci yang sama.
- `instructions` bisa string/object/array — pola objek: pertanyaan di satu field, data pendukung di field lain, direferensikan lewat **backtick** (mis. `\`potential_duplicate\``).
- Noul: `criteria` opsional (`true`/`false` — deskripsi makna ya/tidak).
- Choice: `criteria` map opsi → deskripsi (boleh `null`).
- Score: `criteria` array level berurutan (deskripsi).
- Jawaban: Choice (`choice`, `probabilities`, `confidence`); Score (`score` — bisa di antara level, `legend`, `probabilities`, `confidence`); Noul (`noul` 0–1). `usage` mencatat `input_tokens`/`output_tokens`.
- Error: `401` (key), `422` (validasi), `429` (rate limit), **`529` Overloaded** — retry dengan exponential backoff (ditangani otomatis oleh SDK); `529` adalah kode non-standar (mirip Anthropic).

## Notable quotes

> "Evaluate a `state` against a map of typed `questions` and get back structured `answers`, one per question."

## What this changes

- Referensi kontrak [Jev](../entities/jev.md) & kelak model "decisions" lain yang memakai schema sama ([OpenRouter — Decisions](openrouter-decisions-models.md)).
- Tidak ada kontradiksi.

## Related

- [Jev](../entities/jev.md) · [TypeSafe](../entities/typesafe.md)
- [TypeSafe — Primitives](typesafe-docs-primitives.md)
- [TypeSafe — Quick Start](typesafe-docs-quickstart.md)

---
title: "Cerebras — Reasoning"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [cerebras, reasoning, capabilities]
---

# Cerebras — Reasoning

- **Sumber**: Cerebras — panduan kapabilitas reasoning
- **Penulis**: tidak dicantumkan
- **URL**: <https://inference-docs.cerebras.ai/capabilities/reasoning>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/2026/oktober/01/cerebras Reasoning.md`

## TL;DR

Panduan mengontrol reasoning di Cerebras: `reasoning_effort` (level usaha), `reasoning_format` (cara reasoning dikembalikan: `parsed`/`raw`/`hidden`/`none`), dan `clear_thinking` (menghapus reasoning historis pada percakapan multi-turn Qwen). Token reasoning dihitung ke `max_completion_tokens`.

## Key points

- Perilaku per model:
  - `qwen-3.8-27b`: default `high`; `none` menonaktifkan; `reasoning_format` tidak didukung selain format terpisah default (tidak bisa `hidden`).
  - `gpt-oss-120b`: default `medium`; `low`/`medium`/`high`; tidak bisa dimatikan; mendukung `parsed`, `raw`, `hidden`.
  - `kimi-k2.7-code`: selalu aktif; `reasoning_effort` diterima tapi diabaikan (termasuk `none`); hanya customer trials; `raw` didukung, `hidden` tidak.
  - `gemma-4-31b` (Dedicated): default nonaktif; `low`/`medium`/`high` saat ini berekuivalen; tidak ada `raw`/`hidden`.
- `reasoning_format`: `parsed` (terpisah di `message.reasoning`), `raw` (digabung ke konten), `hidden` (tidak ditampilkan tapi tetap dihitung), `none` (default model).
- Qwen multi-turn: `clear_thinking: true` menghapus reasoning historis sebelum prompt; default `false` (dipertahankan).
- Jangan kirim parameter native Qwen (`disable_reasoning`, `enable_thinking`, `preserve_thinking`, `thinking_budget`); gunakan `reasoning_effort` + `clear_thinking`.
- Parameter non-standar dikirim lewat `extra_body` pada klien OpenAI.

## Notable quotes

> "Reasoning models generate intermediate thinking tokens before their final response."

> "Effort levels select reasoning modes. They do not reserve or guarantee an exact reasoning-token budget."

## What this changes

- Melengkapi entitas [Cerebras](../entities/cerebras.md) dengan mekanisme reasoning.
- Tidak ada kontradiksi.

## Related

- [Cerebras](../entities/cerebras.md)
- [Cerebras — Qwen 3.8 27B](cerebras-qwen-38-27b.md)
- [Cerebras — Structured Outputs](cerebras-structured-outputs.md)

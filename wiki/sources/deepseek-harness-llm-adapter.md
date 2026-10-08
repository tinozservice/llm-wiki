---
title: "DeepSeek Harness — Cookbook: Adding an LLM Adapter"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [deepseek-harness, dsh, llm, adapter]
---

# DeepSeek Harness — Cookbook: Adding an LLM Adapter

- **Sumber**: deepseek-harness.github.io/en/reference/cookbook/adding-an-llm-adapter
- **Penulis**: DeepSeek Harness
- **URL**: <https://deepseek-harness.github.io/deepseek-harness/en/reference/cookbook/adding-an-llm-adapter>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/DeepSeek Harness Docs. Cookbook adding an LLM adapter.md`

## TL;DR

Panduan menambah provider model: `class MyAdapter extends LlmAdapter { async *stream(options): AsyncIterable<StreamChunk> }` + `ctx.llm.registerAdapter(['my-provider'], …)`. Registrasi effect-based (HMR-safe); satu adapter per provider route. Referensi: `llm-deepseek` (HTTP langsung) & `llm-pi-ai` (membungkus library).

## Key points

- **Kewajiban protokol** (diverifikasi dua implementasi): emit `usage` SEBELUM `finish` & tidak ada apa pun setelah `finish`; tool-call `arguments` = string JSON mentah end-to-end (`argumentsDelta`); alokasi `index` blok sesuai urutan kemunculan; error hanya dua jalur (throw `LlmError` berkode stabil, atau `finish {kind: 'error'|'aborted'}`); hormati `options.signal`; opsi yang tak didukung → `UNSUPPORTED_OPTION` (bukan diam-diam drop); `finish.replayState` untuk metadata native (hanya dipakai bila route historis & target di adapter instance yang sama).
- Metadata model lewat seam netral: `resolveModel()` (context, reasoning, `defaultEffort`); effort = id opak terurut yang dipetakan adapter.
- Struktur implementasi: pisahkan wire types, serialisasi, parsing transport, chunk translation, class adapter (`llm-deepseek` = referensi).

## Notable quotes

> "Emit `usage` BEFORE `finish`; emit NOTHING after `finish`."

## What this changes

- Entitas [DeepSeek Harness](../entities/deepseek-harness.md) (kontrak adapter).
- Tidak ada kontradiksi.

## Related

- [DeepSeek Harness](../entities/deepseek-harness.md)
- [DeepSeek Harness — Architecture](deepseek-harness-architecture.md) · [DeepSeek Harness — Configure Models](deepseek-harness-configure-models.md)

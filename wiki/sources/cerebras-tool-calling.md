---
title: "Cerebras — Tool Calling"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [cerebras, tool-calling, capabilities]
---

# Cerebras — Tool Calling

- **Sumber**: Cerebras — panduan Tool Calling
- **Penulis**: tidak dicantumkan
- **URL**: <https://inference-docs.cerebras.ai/capabilities/tool-use>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/2026/oktober/01/cerebras Tool Calling.md`

## TL;DR

Panduan tool calling (function calling) di Cerebras: model meminta fungsi yang didefinisikan aplikasi, aplikasi mengeksekusi dan mengembalikan hasil, lalu model menyelesaikan jawaban. Mendukung **strict mode** (argumen dijamin sesuai skema), **multi-turn**, dan **parallel tool calling** — untuk `qwen-3.8-27b`, `gpt-oss-120b`, `kimi-k2.7-code`, dan `gemma-4-31b`.

## Key points

- `tool_choice` mendukung `none`, `auto`, `required`, dan named function di semua model pendukung.
- Alur: define tool → kirim request → model memilih tool → aplikasi eksekusi → kirim hasil → jawaban final.
- **Strict mode**: `strict: true` di definisi function; wajib `additionalProperties: false`; batasan skema mengikuti panduan Structured Outputs.
- Catatan model: `kimi-k2.7-code` — set nilai `strict` seragam di semua function; `qwen-3.8-27b` — jangan pakai `pattern`/`minLength`/`maxLength` di strict tool schema.
- **Parallel tool calling**: `parallel_tool_calls=True` (default) atau `False` untuk sekuensial.
- **Multi-turn**: loop panggil `chat.completions.create()` sampai respons tidak berisi `tool_calls`.

## Notable quotes

> "Tool calling, also known as tool use or function calling, lets a model request functions that your application defines."

> "Strict mode prevents these schema violations for supported schemas."

## What this changes

- Melengkapi entitas [Cerebras](../entities/cerebras.md).
- Tidak ada kontradiksi.

## Related

- [Cerebras](../entities/cerebras.md)
- [Cerebras — Structured Outputs](cerebras-structured-outputs.md)
- [Cerebras — Reasoning](cerebras-reasoning.md)

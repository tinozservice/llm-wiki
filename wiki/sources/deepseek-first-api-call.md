---
title: "DeepSeek — Your First API Call"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [deepseek, api, quickstart]
---

# DeepSeek — Your First API Call

- **Sumber**: api-docs.deepseek.com
- **Penulis**: DeepSeek AI
- **URL**: <https://api-docs.deepseek.com/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/DeepSeek Docs. Your First API Call  DeepSeek API Docs.md`

## TL;DR

API DeepSeek **kompatibel OpenAI/Anthropic** (cukup ubah `base_url` + API key). Model: `deepseek-flash` & `deepseek-v4-pro`. Halaman ini juga mengumumkan **DeepSeek Harness dalam developer preview** dan integrasi "no code" ke Claude Code, GitHub Copilot, OpenCode, dll.

## Key points

- Param: base_url OpenAI `https://api.deepseek.com`; Anthropic `https://api.deepseek.com/anthropic`; API key dari platform.deepseek.com.
- Contoh cURL chat: `thinking: {"type": "enabled"}` + `reasoning_effort: "high"` (thinking mode default aktif).
- **Integrate with Agent Tools**: "The DeepSeek API is supported by many popular AI agent and coding assistant tools… you can use DeepSeek as the backend model directly — no code required" (panduan per-tool tersedia).
- Pengumuman: **DeepSeek Harness** — developer preview untuk pengembang agent harness ([guide](https://deepseek-harness.github.io/deepseek-harness/en/guide/quickstart)).

## Notable quotes

> "DeepSeek Harness is now in developer preview for agent harness developers worldwide."

## What this changes

- Entitas [DeepSeek](../entities/deepseek.md) & [DeepSeek Harness](../entities/deepseek-harness.md).
- Tidak ada kontradiksi.

## Related

- [DeepSeek](../entities/deepseek.md) · [DeepSeek Harness](../entities/deepseek-harness.md)
- [DeepSeek — Integrate with OpenCode](deepseek-integrate-opencode.md) · [Integrate with OpenClaw](deepseek-integrate-openclaw.md)

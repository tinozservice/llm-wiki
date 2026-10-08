---
title: "OpenAI Dev — Plugins Quickstart"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openai, plugins, dev]
---

# OpenAI Dev — Plugins Quickstart

- **Sumber**: developers.openai.com/plugins/quickstart
- **Penulis**: OpenAI
- **URL**: <https://developers.openai.com/plugins/quickstart>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenAI Dev. Quickstart – Plugins.md`

## TL;DR

Plugin memperluas ChatGPT dan Codex — berisi **skills** (instruksi+resource), **MCP server** (tools), atau keduanya; **ChatGPT dan Codex berbagi satu direktori plugin universal** (publik sekali publish, muncul di kedua produk). Tutorial: membuat plugin personal dengan menghubungkan MCP server (contoh publik `tinymcp.dev`, tool `roll_dice`), lalu memanggilnya di **ChatGPT Work** via `@plugin`.

## Key points

- Alur: chatgpt.com/plugins → **Add custom MCP server** (nama + URL; tanpa auth) → risk warning → **Create as a plugin** → install dari personal plugins → pakai di Work.
- Custom UI opsional (tidak bagian dari quickstart).
- Lanjutan: build skills, package plugin, add UI ke MCP server.

## Notable quotes

> "ChatGPT and Codex share one universal plugin directory. Public plugins are published once and become discoverable from supported surfaces in both products."

## What this changes

- Konsep [Plugin ChatGPT & Codex](../concepts/chatgpt-plugins.md) dibuat.
- Tidak ada kontradiksi.

## Related

- [OpenAI](../entities/openai.md)
- [Plugin Architecture](openai-dev-plugin-architecture.md) · [Define Tools](openai-dev-define-tools.md) · [Checkout API](openai-dev-checkout-api.md)

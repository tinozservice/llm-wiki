---
title: "OpenAI Dev — Plugin Architecture"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openai, plugins, dev]
---

# OpenAI Dev — Plugin Architecture

- **Sumber**: developers.openai.com/plugins/concepts/plugins
- **Penulis**: OpenAI
- **URL**: <https://developers.openai.com/plugins/concepts/plugins>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenAI Dev. Plugin architecture – Plugins.md`

## TL;DR

Plugin = paket yang ditemukan/di-install/dibagikan/di-publish di ChatGPT & Codex. Isi: **Skills** (instruksi + resource), **MCP server** (tools + koneksi sistem eksternal), **keduanya**, dan **lifecycle hooks** (perintah di titik tertentu runtime Codex, termasuk ChatGPT Work). Empat "bentuk" plugin: skills-only, MCP-only, skills+MCP, MCP+UI.

## Key points

- **Universal plugin directory**: listing publik yang sama di kedua produk; kapabilitas bisa spesifik permukaan (mis. hook script harus tersedia di environment eksekusi).
- **Skills**: folder `SKILL.md` + script/referensi/template/aset; mendeskripsikan kapan dipakai, langkah, dan hasil sukses; satu plugin bisa membungkus beberapa skill.
- **MCP server**: tools + skema input/output + auth + hasil terstruktur; opsional **UI resources** — ChatGPT mendukung standar terbuka **MCP Apps UI**; tools harus tetap berguna tanpa komponen UI (headless).
- Diagram bentuk: `Plugin → Skills (+ MCP server → Tools/structured results → UI resources optional)`.

## Notable quotes

> "Start with the smallest shape that supports your use cases. You can add an MCP server or UI later without changing the plugin's purpose."

## What this changes

- Konsep [Plugin ChatGPT & Codex](../concepts/chatgpt-plugins.md).
- Tidak ada kontradiksi.

## Related

- [OpenAI](../entities/openai.md)
- [Skills](openai-dev-skills.md) · [MCP Server](openai-dev-mcp-server.md) · [Quickstart](openai-dev-quickstart-plugins.md)

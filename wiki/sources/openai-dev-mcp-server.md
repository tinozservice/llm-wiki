---
title: "OpenAI Dev — MCP Server (plugin)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openai, plugins, mcp, dev]
---

# OpenAI Dev — MCP Server (plugin)

- **Sumber**: developers.openai.com/plugins/concepts/mcp-server
- **Penulis**: OpenAI
- **URL**: <https://developers.openai.com/plugins/concepts/mcp-server>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenAI Dev. MCP server – Plugins.md`

## TL;DR

**Model Context Protocol (MCP)** = spesifikasi terbuka untuk menghubungkan klien AI ke tool & data eksternal; plugin memakai MCP server saat butuh data live, aksi, atau integrasi layanan. MCP server dapat mengekspos **tools, resources, prompts, instructions**; plugin terutama memakai tools (nama, deskripsi, input schema, output schema opsional).

## Key points

- Alur tool call: klien menemukan tools → model memilih tool + argumen → server validasi & eksekusi → model pakai hasil.
- Hasil tool harus berguna **tanpa UI kustom** (teks ringkas/terstruktur); UI resource opsional untuk klien yang mendukung MCP Apps.
- Produksi: endpoint **HTTPS stabil** dengan **streamable HTTP**; lindungi dengan alur otorisasi MCP bila mengakses data privat/melakukan aksi pengguna.
- SDK server: Python & TypeScript.

## Notable quotes

> "Deploy production MCP servers at stable HTTPS endpoints using the streamable HTTP transport."

## What this changes

- Konsep [Plugin ChatGPT & Codex](../concepts/chatgpt-plugins.md); koneksi ke ekosistem MCP yang sama dipakai [OpenClaw](../entities/openclaw.md)/[DeepSeek Harness](../entities/deepseek-harness.md).
- Tidak ada kontradiksi.

## Related

- [OpenAI](../entities/openai.md)
- [Skills](openai-dev-skills.md) · [Define Tools](openai-dev-define-tools.md)

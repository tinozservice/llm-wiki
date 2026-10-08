---
title: "OpenAI Dev — Define Tools (plugin MCP)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openai, plugins, mcp, dev]
---

# OpenAI Dev — Define Tools (plugin MCP)

- **Sumber**: developers.openai.com/plugins/plan/tools
- **Penulis**: OpenAI
- **URL**: <https://developers.openai.com/plugins/plan/tools>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenAI Dev. Define tools – Plugins.md`

## TL;DR

Panduan menerjemahkan use case plugin menjadi **permukaan tool MCP yang fokus**: setiap tool melayani satu tujuan pengguna (jangan mirror API internal). Langkah: tulis outcome → daftar informasi yang dibutuhkan → identifikasi read/write/aksi → kelompokkan aksi koheren → pisahkan bila beda permission/risiko/konfirmasi.

## Key points

- **Kontrak per tool**: Name, Title, Description (tujuan + kondisi pemicu), Input schema, Output schema, Authorization, Side effects, Failure behavior.
- **Deskripsi untuk seleksi**: tulis intent pengguna (bukan implementasi); bedakan dari tool serupa; sebut limit/prasyarat.
- **Safety annotations** (schema MCP `ToolAnnotations`): `readOnlyHint` (hanya bila tak mengubah state), `destructiveHint` (dampak ireversibel), `openWorldHint` (internet/entitas terbuka); anotasi tidak menggantikan otorisasi server/validasi/konfirmasi.
- Pisahkan read & write (mis. `list_projects` vs `create_project`/`archive_project`); kembalikan identifier stabil; jangan bocorkan secret/diagnostik/PII.
- Checklist coverage: setiap use case punya jalur hasil; tidak ada tool tanpa use case; read yang dibutuhkan sebelum write; permintaan tak didukung → pesan limitasi.

## Notable quotes

> "Every tool should help complete a user goal. Do not mirror an internal API without considering how people will ask for and use the capability."

## What this changes

- Konsep [Plugin ChatGPT & Codex](../concepts/chatgpt-plugins.md).
- Tidak ada kontradiksi.

## Related

- [OpenAI](../entities/openai.md)
- [Brainstorm Use Cases](openai-dev-brainstorm-use-cases.md) · [MCP Server](openai-dev-mcp-server.md)

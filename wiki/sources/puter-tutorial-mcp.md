---
title: "Building Apps with Puter MCP (tutorial)"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, tutorial, mcp, opencode]
---

# Building Apps with Puter MCP (tutorial)

- **Sumber**: Puter developer — tutorial *Building Apps with Puter MCP*
- **Penulis**: Reynaldi Chernando; Puter Technologies Inc.
- **URL**: <https://developer.puter.com/tutorials/build-apps-with-puter-mcp/>
- **Tanggal publikasi**: 2026-06-11; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter developer tutorial. Building Apps with Puter MCP.md`

## TL;DR

Tutorial memakai **Puter MCP server** dari dalam AI coding tool: bangun app dengan bahasa natural, lalu deploy dari percakapan yang sama. Menampilkan instalasi untuk Claude Code, Codex, dan **OpenCode**, contoh prompt membangun notes app, dan alur deploy ke subdomain.

## Key points

- **Instalasi**:
  - Claude Code: `claude mcp add --transport http --scope user puter https://mcp.puter.com/` lalu `/mcp`.
  - Codex: `codex mcp add puter --url https://mcp.puter.com/`.
  - **OpenCode**: tambahkan blok `mcp.puter` (`type: remote`, `url`) di `opencode.json` — "OpenCode will walk you through signing in with your Puter account the first time it connects."
- **Alur build**: prompt → asisten memakai tool **documentation** (`puter_docs_*`) untuk memastikan API terkini → tulis kode (contoh notes app dengan `puter.kv.list({ returnValues: true })`, `set`, `del`) → tanpa boilerplate.
- **Alur deploy**: "Deploy this website to Puter at the subdomain `my-notes`" → tool hosting membuat subdomain → URL live, "in the same conversation".
- Klaim efisiensi (dari pengujian internal Puter): "building apps with Puter.js used up to 90% fewer tokens than building the same project with a traditional framework or infrastructure".
- Tool yang disebut: filesystem, hosting, workers, apps, documentation, account (`whoami`).

## Notable quotes

> "You go from a prompt to a public link in the same conversation."

## What this changes

- Melengkapi [docs MCP](puter-docs-mcp-server.md): alur praktis + klaim efisiensi token; menyebut **OpenCode** dua kali (config + OAuth flow) — memperkuat koneksi [OpenCode](../entities/opencode.md) ↔ [Puter](../entities/puter.md).
- Klaim "90% fewer tokens" sama dengan halaman backend — konsisten (tetap klaim vendor).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — MCP Server](puter-docs-mcp-server.md)
- [OpenCode](../entities/opencode.md)
- [Puter tutorial — Building an AI-Powered RAG Application](puter-tutorial-rag.md)

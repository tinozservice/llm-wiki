---
title: "Puter docs — MCP Server"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, mcp, ai-agents, opencode]
---

# Puter docs — MCP Server

- **Sumber**: Puter.js documentation — halaman *MCP Server*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://docs.puter.com/mcp/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter docs. MCP Server.md`

## TL;DR

**Puter MCP server** di `mcp.puter.com` menghubungkan tool AI (Claude Code, Codex, Cursor, **OpenCode**, …) ke resource Puter atas nama user: kelola file, publish website, deploy worker, dan lain-lain — tanpa instalasi, cukup OAuth ke akun Puter.

## Key points

- **Hosted, tanpa install**: cukup arahkan klien MCP ke `https://mcp.puter.com/`; autentikasi OAuth dengan akun Puter.
- **OpenCode**: tambahkan ke section `mcp` di `opencode.json`:

  ```json
  {
    "$schema": "https://opencode.ai/config.json",
    "mcp": {
      "puter": { "type": "remote", "url": "https://mcp.puter.com/", "enabled": true }
    }
  }
  ```

  OpenCode menangani alur OAuth otomatis; re-auth via `opencode mcp auth puter`.
- **Usage**: minta dalam bahasa natural — "List the files in my Puter home directory", "Publish the `dist` folder as a website", "Deploy this script as a Puter worker" — tool AI memilih tool Puter yang tepat dan bertindak **sebagai user** (acting as you).
- **Tool yang diekspos** (masing-masing memirror panggilan SDK): filesystem (12 tool: write/upload presigned/read/readdir/mkdir/stat/delete/copy/move/rename), hosting (create/list/get/update/delete), workers (create/exec/list/get/delete), key-value store (get/set/del/list/incr/decr/add/update/remove/expire/expire_at, dukung `app_uuid`), apps (create/check_name/list/get/update/delete), documentation (`puter_docs_index`, `puter_docs_get`), account (`whoami`).

## Notable quotes

> "With the Puter MCP server, you can let your AI tools (Claude Code, Codex, or any other MCP-compatible client) interact with your Puter resources on your behalf: managing files, publishing websites, deploying workers, and more."

> "Your AI tool picks the right Puter tools to carry out the request, acting as you."

## What this changes

- Titik sambung langsung dengan [OpenCode](../entities/opencode.md): halaman ini memuat contoh konfigurasi `opencode.json` — OpenCode kini terhubung ke ekosistem Puter via MCP.
- Melengkapi [Puter](../entities/puter.md): sisi "agen AI sebagai operator" (sejalan dengan motif MCP di [Hosting Web](../concepts/web-hosting.md) — Hostinger Connector, DomaiNesia MCP).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [OpenCode](../entities/opencode.md)
- [Puter docs — CLI](puter-docs-cli.md)
- [Hosting Web](../concepts/web-hosting.md)

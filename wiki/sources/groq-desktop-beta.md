---
title: "Groq — Desktop (beta)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [groq, desktop, mcp]
---

# Groq — Desktop (beta)

- **Sumber**: github.com/groq/groq-desktop-beta (README)
- **Penulis**: groq.com
- **URL**: <https://github.com/groq/groq-desktop-beta/blob/main/README.md>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/groq-desktop-betaREADME.md at main.md`

## TL;DR

**Groq Desktop** (beta) — aplikasi chat desktop untuk **Windows, macOS, Linux** dengan **dukungan MCP server lokal** untuk semua model function-calling di Groq; chat dengan dukungan gambar. Instalasi macOS unofficial via Homebrew tap (`ricklamers/groq-desktop-unofficial`); API key diatur di settings.

## Key points

- Fitur: chat + image support; MCP servers lokal.
- Build/dev: Node 18+, pnpm (`pnpm install`, `pnpm dev`); produksi `pnpm dist[:mac|:win|:linux]`; troubleshooting Electron build scripts (`pnpm approve-builds` → pilih electron & esbuild).
- macOS: `xattr -c /Applications/Groq\ Desktop.app` untuk membuka app.
- Config: `{ "GROQ_API_KEY": "…" }` di settings.

## Notable quotes

> "Groq Desktop features MCP server support for all function calling capable models hosted on Groq."

## What this changes

- Entitas [Groq](../entities/groq.md) (klien desktop).
- Tidak ada kontradiksi.

## Related

- [Groq](../entities/groq.md)
- [Groq — MCP Server](groq-mcp-server.md)

---
title: "VyceAI — Integrations"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [vyceai, api, openai-compatible, opencode]
---

# VyceAI — Integrations

- **Sumber**: VyceAI dashboard-v2 — tab *Integrations*
- **Penulis**: Vyce AI
- **URL**: <https://vyceai.com/dashboard-v2>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/vyceai Integrations.md`

## TL;DR

Panduan integrasi: VyceAI **kompatibel OpenAI & Anthropic** — cukup ganti `https://api.openai.com` menjadi `https://vyceai.com/v1`. Tersedia panduan **custom provider OpenCode** (begitu pula Cursor/Continue), endpoint lengkap, dan autentikasi `Bearer sk-...`.

## Key points

- **OpenCode custom provider** (field yang disediakan): Provider ID `vyceai`; Display name `VyceAi`; Base URL `https://vyceai.com/v1`; API key `sk-...` — "In OpenCode, navigate to **Settings → Providers → Add Custom Provider**." (juga didukung IDE apa pun dengan base URL OpenAI kustom).
- **Endpoints**: `POST /v1/chat/completions` · `POST /v1/messages` (Anthropic messages) · `POST /v1/images/generations` (**Grok Imagine 2**, $0.50/img) · `GET /v1/models` · `GET /v1/me` (info key).
- **Auth**: `Authorization: Bearer sk-your-api-key`; key dibuat dari tab Keys.
- Contoh `curl` memakai model `claude-sonnet-4-6`.

## Notable quotes

> "Vyce AI is OpenAI & Anthropic compatible. Point any client or IDE at our base URL."

## What this changes

- Koneksi dengan [OpenCode](../entities/opencode.md): VyceAI dapat dipakai sebagai **custom provider** — jalur ketiga setelah katalog Go/Zen sendiri dan ekosistem MCP (bandingkan [Puter MCP](puter-docs-mcp-server.md)).
- Ada endpoint Anthropic native (`/v1/messages`) — membedakannya dari OpenRouter (menurut perbandingan Token Harbor) dan menyamakannya dengan Token Harbor.
- Image endpoint baru: **Grok Imagine 2** $0.50/gambar.
- Tidak ada kontradiksi.

## Related

- [VyceAI](../entities/vyceai.md)
- [OpenCode](../entities/opencode.md)
- [VyceAI — System Status](vyceai-system-status.md)

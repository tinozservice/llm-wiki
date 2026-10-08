---
title: "DeepSeek — Integrate with Codex"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [deepseek, integration, codex]
---

# DeepSeek — Integrate with Codex

- **Sumber**: api-docs.deepseek.com/quick_start/agent_integrations/codex
- **Penulis**: DeepSeek AI
- **URL**: <https://api-docs.deepseek.com/quick_start/agent_integrations/codex>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/DeepSeek Docs. Integrate with Codex  DeepSeek API Docs.md`

## TL;DR

Codex (CLI, app desktop ChatGPT, ekstensi VS Code) bisa memakai DeepSeek karena Codex bicara lewat **Responses API** yang didukung native. Ada **skrip setup satu klik** (macOS/Linux/Windows) yang mem-backup config, menulis `~/.codex/models.json`, dan memodifikasi `config.toml`; atau konfigurasi manual dengan `wire_api = "responses"`.

## Key points

- Skrip menu: (1) `deepseek-flash` (menerima input gambar), (2) `deepseek-v4-pro`, (9) restore config default; backup ke `~/.codex/backup-deepseek/`; validasi sebelum menulis.
- Manual: `model = "deepseek-flash"`, `model_provider = "deepseek"`, `model_reasoning_effort = "high"`, `web_search = "disabled"`, `model_catalog_json = "~/.codex/models.json"`, `[model_providers.deepseek]` (base_url `https://api.deepseek.com/`, `wire_api = "responses"`, bearer token), `[desktop] enabled-reasoning-efforts = [low…max]`.
- Riwayat sesi Codex terpisah per metode login (langganan ChatGPT vs API pihak ketiga) — sesi lama "hilang" dari tampilan, bukan terhapus.
- `show_raw_agent_reasoning` (Ctrl+T di CLI) untuk melihat thinking.

## Notable quotes

> "It talks to models via the Responses API, which the DeepSeek API natively supports."

## What this changes

- Entitas [DeepSeek](../entities/deepseek.md).
- Tidak ada kontradiksi.

## Related

- [DeepSeek](../entities/deepseek.md)
- [DeepSeek — Integrate with Claude Code](deepseek-integrate-claude-code.md)

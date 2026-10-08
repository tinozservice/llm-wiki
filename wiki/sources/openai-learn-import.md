---
title: "OpenAI Learn — Import from Another Agent"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openai, chatgpt, import, migrasi]
---

# OpenAI Learn — Import from Another Agent

- **Sumber**: learn.chatgpt.com/docs/import
- **Penulis**: OpenAI
- **URL**: <https://learn.chatgpt.com/docs/import>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenAI Learn ChatGPT. Import from another agent.md`

## TL;DR

ChatGPT desktop app & Codex CLI bisa **mengimpor setup dari agent lain**: desktop dari **Claude Code, Claude Cowork, Cursor**; Codex CLI dari **Claude Code, Cursor** (`/import`; ≤50 chat 30 hari terakhir). Impor tidak mengubah/menghapus setup lama; bisa disinkronkan otomatis.

## Key points

- Yang diimpor: instruction files → `AGENTS.md`; `settings.json` → `config.toml`; Skills; Plugins; project folders; project memories (Claude Code); chats; MCP config; Hooks; slash commands → Skills; subagents.
- Setelah impor: selesaikan setup plugin/koneksi yang perlu otorisasi; review tool restrictions/permissions, MCP auth, hooks, prompt template bergantung argumen.

## Notable quotes

> "Importing doesn't change or delete your existing agent setup."

## What this changes

- Entitas [OpenAI](../entities/openai.md); simetri dengan migrasi [OpenClaw↔Hermes](../entities/hermes-agent.md) — pola "import dari agent lain" kini juga di ChatGPT.
- Tidak ada kontradiksi.

## Related

- [OpenAI](../entities/openai.md) · [Codex](../entities/codex.md)
- [Use ChatGPT](openai-learn-use-chatgpt.md)

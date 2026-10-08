---
title: "DeepSeek — Integrate with Claude Code"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [deepseek, integration, claude-code]
---

# DeepSeek — Integrate with Claude Code

- **Sumber**: api-docs.deepseek.com/quick_start/agent_integrations/claude_code
- **Penulis**: DeepSeek AI
- **URL**: <https://api-docs.deepseek.com/quick_start/agent_integrations/claude_code>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/DeepSeek Docs. Integrate with Claude Code  DeepSeek API Docs.md`

## TL;DR

Claude Code dapat memakai DeepSeek via **Anthropic API DeepSeek**: set `ANTHROPIC_BASE_URL=https://api.deepseek.com/anthropic`, `ANTHROPIC_AUTH_TOKEN` (DeepSeek key), dan model `deepseek-flash[1m]`. **Pemetaan model**: `claude-opus*` → `deepseek-v4-pro`; `claude-sonnet*`/`claude-haiku*` → `deepseek-flash` (opus ditagih harga Pro). Web Search Claude Code didukung native (menambah biaya token ringkasan).

## Key points

- Env lengkap: `ANTHROPIC_MODEL`, `ANTHROPIC_DEFAULT_OPUS_MODEL`, `ANTHROPIC_DEFAULT_SONNET_MODEL`, `ANTHROPIC_DEFAULT_HAIKU_MODEL`, `CLAUDE_CODE_SUBAGENT_MODEL`, `CLAUDE_CODE_EFFORT_LEVEL=max`, `CLAUDE_CODE_AUTO_COMPACT_WINDOW=786432` (semua `deepseek-flash[1m]` kecuali Haiku).
- Instalasi dari nol: Node 18+ → `npm install -g @anthropic-ai/claude-code`.
- Developer mode **Claude Desktop APP**: ubah base_url + api_key untuk mem-bypass batasan nama model.

## Notable quotes

> "Models starting with claude-opus are mapped to `deepseek-v4-pro`."

## What this changes

- Entitas [DeepSeek](../entities/deepseek.md) (integrasi agent resmi).
- Tidak ada kontradiksi.

## Related

- [DeepSeek](../entities/deepseek.md)
- [DeepSeek — Integrate with Codex](deepseek-integrate-codex.md) · [Awesome DeepSeek Agent](awesome-deepseek-agent.md)

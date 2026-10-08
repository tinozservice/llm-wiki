---
title: "Groq — MCP Server"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [groq, mcp, tooling]
---

# Groq — MCP Server

- **Sumber**: github.com/groq/groq-mcp-server (README)
- **Penulis**: groq.com
- **URL**: <https://github.com/groq/groq-mcp-server/blob/main/README.md>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/groq-mcp-serverREADME.md at main.md`

## TL;DR

**Groq MCP Server** — server MCP resmi untuk memakai model Groq dari Claude Desktop/Cursor/Windsurf, dll.: **TTS** (voice Arista-PlayAI), **STT** (whisper-large-v3), **Vision**, **Chat** (Llama 4 dll.), **Batch processing**, + akses dokumentasi Groq. Instalasi ringkas via `uvx groq-mcp` (Claude Desktop) atau `groq-mcp-config` (klien lain).

## Key points

- Contoh task: analisis gambar, TTS multi-bahasa, transkripsi/terjemahan audio, batch jsonlines, code generation, web search, **Compound Beta** (agentic tools system).
- Claude Desktop: config `mcpServers.groq` (`uvx`, `groq-mcp`, env `GROQ_API_KEY`, opsional `BASE_OUTPUT_PATH`); Windows perlu Developer Mode.
- Klien lain: `uvx install groq-mcp` / `pip install groq-mcp` → `groq-mcp-config --api-key=… [--print] [--output-path=…]` (auto-deteksi lokasi config).
- Skrip utilitas: `groq_vision.sh`, `groq_tts.sh`, `groq_stt.sh`, `groq_batch.sh`, `groq_translate.sh`, list voices/models.
- Terinspirasi ElevenLabs MCP Server.

## Notable quotes

> "Query models hosted on Groq for lightning-fast inference directly from Claude and other MCP clients through the Model Context Protocol (MCP)."

## What this changes

- Entitas [Groq](../entities/groq.md) (MCP resmi) — koneksi ke ekosistem MCP yang dipakai [OpenClaw](../entities/openclaw.md)/[DeepSeek Harness](../entities/deepseek-harness.md) dkk.
- Tidak ada kontradiksi.

## Related

- [Groq](../entities/groq.md)
- [Groq — Desktop](groq-desktop-beta.md) · [Groq — Python SDK](groq-python-sdk.md)

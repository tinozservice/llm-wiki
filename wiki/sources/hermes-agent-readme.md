---
title: "Hermes Agent — README (GitHub)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [hermes, nous-research, readme, open-source]
---

# Hermes Agent — README (GitHub)

- **Sumber**: github.com/NousResearch/hermes-agent (README)
- **Penulis**: hermes-agent
- **URL**: <https://github.com/NousResearch/hermes-agent/blob/main/README.md>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/hermes-agentREADME.md at main.md`

## TL;DR

README resmi: Hermes = **"self-improving AI agent"** dengan **learning loop bawaan** (membuat skill dari pengalaman, memperbaikinya, mencari percakapan masa lalu, membangun model pengguna lintas sesi). Berjalan di "$5 VPS, GPU cluster, atau serverless yang nyaris gratis saat idle". **7 backend terminal** (local, Docker, SSH, Singularity, Modal, Daytona, Vercel Sandbox — dua terakhir serverless-persisten); model apa pun via `hermes model` (Nous Portal, OpenRouter, OpenAI, endpoint sendiri…).

## Key points

- Fitur unggulan: TUI penuh; hidup di Telegram/Discord/Slack/WhatsApp/Signal/CLI via satu gateway (transkripsi voice note, kontinuitas lintas platform); **closed learning loop** (memori terkurasi + nudge; auto-skill; self-improve; FTS5 session search + LLM summarization; **Honcho** dialectic user modeling; kompatibel standar [agentskills.io](https://agentskills.io/)); cron terjadwal ke platform mana pun; subagent paralel + skrip Python via RPC; research-ready (batch trajectory generation/compression).
- **Nous Portal**: satu langganan untuk model + tool (**300+ model** via `/model <name>`; Tool Gateway: web search, image generation (FAL), TTS (OpenAI), cloud browser (Browser Use)); aktivasi `hermes setup --portal` (OAuth); per-tool BYO key tetap didukung.
- Instalasi: `curl … install.sh | bash` (Linux/macOS/WSL2); native Windows PowerShell `iex (irm … install.ps1)` (di `%LOCALAPPDATA%\hermes`); Termux/Android repo APT (stable/canary); troubleshooting av false-positive `uv.exe` + verifikasi attestation.
- **Migrasi dari OpenClaw**: wizard mendeteksi `~/.openclaw` dan menawarkan import; `hermes claw migrate` memindahkan **SOUL.md, memori (MEMORY.md/USER.md), skill, command allowlist, pengaturan messaging, API keys (Telegram/OpenRouter/OpenAI/Anthropic/ElevenLabs), aset TTS, AGENTS.md**.
- Komunitas: Discord Nous; **Skills Hub (agentskills.io)**; computer-use-linux (MCP desktop-control); HermesClaw (bridge WeChat komunitas).

## Notable quotes

> "It's the only agent with a built-in learning loop — it creates skills from experience, improves them during use… and builds a deepening model of who you are across sessions."

> "Run it on a $5 VPS, a GPU cluster, or serverless infrastructure that costs nearly nothing when idle."

## What this changes

- Entitas [Hermes Agent](../entities/hermes-agent.md) — detail teknis, Tool Gateway, migrasi.
- **Catatan angka**: README menyebut **300+ model**; halaman portal/landing menyebut **200+** — dicatat (kemungkinan katalog Portal vs model yang tersedia untuk tier).
- Tidak ada kontradiksi keras.

## Related

- [Hermes Agent](../entities/hermes-agent.md)
- [Nous Portal — Models](hermes-agent-nous-portal-models.md) · [OpenClaw](../entities/openclaw.md) — migrasi dari OpenClaw

---
title: "OpenClaw Docs — CLI Automation"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openclaw, docs, cli, automation, opencode]
---

# OpenClaw Docs — CLI Automation

- **Sumber**: docs.openclaw.ai/start/wizard-cli-automation
- **Penulis**: OpenClaw AI
- **URL**: <https://docs.openclaw.ai/start/wizard-cli-automation>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenClaw Docs. CLI automation.md`

## TL;DR

Setup non-interaktif: `openclaw onboard --non-interactive --accept-risk` (flag risk acknowledgement wajib; `--json` ≠ non-interaktif). Contoh lengkap per provider tersedia — **termasuk OpenCode Zen/Go** (`--auth-choice opencode-zen` / `opencode-go` dengan satu API key). Plugin pihak ketiga butuh review capability + `--accept-capabilities` sebelum bisa dipakai dalam otomasi.

## Key points

- Flag kanal daemon: `--install-daemon`, `--skip-daemon`, `--skip-health` (tetap melaporkan apakah Gateway reachable).
- Contoh provider di klip: Anthropic API key, Cloudflare AI Gateway, Gemini, Mistral, Moonshot, Ollama (`--custom-model-id "qwen3.5:27b"`), **OpenCode** (Zen/Go; env `OPENCODE_API_KEY`), Synthetic, Vercel AI Gateway, Z.AI, **Custom provider** (base URL, kompatibilitas openai/openai-responses/anthropic, inferensi image-input dari pola model ID).
- `--secret-input-mode ref` menyimpan kredensial sebagai **env-backed references** (`{source: "env", provider: "default", id: …}`); token gateway pun bisa tanpa plaintext di `openclaw.json` (SQLite secret store / env ref); `openclaw secrets audit --check` untuk CI.
- `openclaw agents add <name>`: agen terpisah (workspace, sesi, auth profile sendiri); `--bind <channel[:accountId]>` merutekan pesan masuk; contoh `--model openai/gpt-6-astra`.

## Notable quotes

> "Consent applies to the reviewed plugin operation, not every subsequent install."

## What this changes

- **Koneksi langsung ke [OpenCode](../entities/opencode.md)**: OpenClaw mendukung Zen & Go sebagai pilihan auth resmi di onboarding.
- Entitas [OpenClaw](../entities/openclaw.md).
- Tidak ada kontradiksi.

## Related

- [OpenClaw](../entities/openclaw.md) · [OpenCode](../entities/opencode.md)
- [OpenClaw Docs — CLI Setup Reference](openclaw-docs-cli-setup-reference.md)

---
title: "OpenClaw Docs — CLI Setup Reference"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openclaw, docs, cli, onboarding, providers]
---

# OpenClaw Docs — CLI Setup Reference

- **Sumber**: docs.openclaw.ai/start/wizard-cli-reference
- **Penulis**: OpenClaw AI
- **URL**: <https://docs.openclaw.ai/start/wizard-cli-reference>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenClaw Docs. CLI setup reference.md`

## TL;DR

Referensi perilaku wizard onboarding langkah-demi-langkah: risk acknowledgment (`wizard.securityAcknowledgedAt`), workspace, model & auth (matriks provider), gateway, channels, skills, daemon, health check; plus mode remote, detail auth/model, dan jalur penyimpanan kredensial (SQLite).

## Key points

- **Matriks auth/model** (v2026.9.3): Anthropic (API key / **Claude CLI reuse** / setup-token), OpenAI (API key — fresh setup default `openai/gpt-6-astra`; alias `openai/gpt-5.6` → tier sama), xAI (OAuth/device code/API key), **OpenCode** (satu API key Zen/Go via opencode.ai/auth), Vercel & Cloudflare AI Gateway, MiniMax (default hosted `MiniMax-M3`), StepFun, Synthetic, Ollama (cloud+local), Moonshot/Kimi, custom provider (kompatibel OpenAI/Anthropic; deteksi image dari pola ID).
- Workspace default `~/.openclaw/workspace`; menolak file/symlink-loop di path; seed file bootstrap; roster tim mempertahankan workspace fleet-wide.
- Gateway: token mode default (bisa SecretRef `env/file/exec/store`; `--gateway-token-ref-env`), password mode untuk Tailscale Funnel; auth wajib untuk bind non-loopback.
- Channels via wizard: WhatsApp QR, Telegram/Discord bot token, Google Chat service account, Mattermost, Signal (signal-cli), iMessage (`imsg` + akses DB Messages; SSH wrapper bila Gateway off-Mac).
- Daemon: LaunchAgent macOS (butuh sesi login; headless → LaunchDaemon kustom), systemd user (coba `loginctl enable-linger`), Scheduled Task Windows (fallback Startup-folder); runtime Node utama, Bun 1.4+ opt-in.
- Remote mode: URL `ws://`/`wss://`, discovery Bonjour/mDNS, direct (TOFU pinning) atau SSH tunnel, secret opsional (konfirmasi eksplisit); plaintext `ws://` hanya untuk loopback/private IP/`.local`/`*.ts.net`.
- Kredensial: auth profile per agen di `~/.openclaw/agents/<id>/agent/openclaw-agent.sqlite`, shared store `~/.openclaw/state/openclaw.sqlite`; default plaintext, `--secret-input-mode ref` untuk reference mode.

## Notable quotes

> "Keep shared-secret auth enabled even for loopback so local WS clients must authenticate."

## What this changes

- Melengkapi [OpenClaw](../entities/openclaw.md) + koneksi [OpenCode](../entities/opencode.md).
- Tidak ada kontradiksi.

## Related

- [OpenClaw](../entities/openclaw.md)
- [OpenClaw Docs — Onboarding (CLI)](openclaw-docs-onboarding-cli.md) · [OpenClaw Docs — CLI Automation](openclaw-docs-cli-automation.md)

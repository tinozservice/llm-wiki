---
title: "OpenRouter — OpenClaw Integration (cookbook)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openrouter, openclaw, cookbook]
---

# OpenRouter — OpenClaw Integration (cookbook)

- **Sumber**: openrouter.ai/docs/cookbook/coding-agents/openclaw-integration
- **Penulis**: openrouter.ai / OpenClaw AI
- **URL**: <https://openrouter.ai/docs/cookbook/coding-agents/openclaw-integration>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/openrouter. OpenClaw Integration.md`

## TL;DR

Panduan resmi memakai OpenClaw dengan OpenRouter — **dan penegasan sejarah nama: "OpenClaw (formerly Moltbot, formerly Clawdbot)"**. Setup via wizard (`openclaw onboard`) atau satu baris CLI; model OpenRouter memakai format `openrouter/<author>/<slug>` (prefix `~` untuk versi terbaru dalam keluarga); dukung **fallback berantai** dan **Auto Model** untuk optimasi biaya (tugas sederhana seperti heartbeat dirutekan ke model murah).

## Key points

- Quick start: `openclaw onboard --auth-choice apiKey --token-provider openrouter --token "$OPENROUTER_API_KEY"` → model default `openrouter/auto`.
- Manual: `env.OPENROUTER_API_KEY` + `agents.defaults.model.primary` + daftar `models`; contoh Claude/Gemini/DeepSeek/Kimi; restart `openclaw gateway run`.
- Fallback: `fallbacks: ["openrouter/~anthropic/claude-haiku-latest"]` — lapisan keandalan tambahan di atas failover provider OpenRouter.
- **Auto Model** (`openrouter/openrouter/auto`): memilih model paling hemat biaya per prompt — ideal untuk agen yang banyak tugas ringan.
- Auth profile + keychain (`openclaw auth set openrouter:default --key …`) agar key tak ada di file config; monitoring di Activity Dashboard.
- Model per channel (telegram → Haiku; discord → Sonnet) via blok config per channel.
- Error umum: no API key, 401/403, model tidak jalan.

## Notable quotes

> "OpenClaw (formerly Moltbot, formerly Clawdbot) is an open-source AI agent platform that brings conversational AI to multiple messaging channels."

## What this changes

- **Menyelesaikan** riwayat nama OpenClaw (Clawdbot → Moltbot → OpenClaw) — sebelumnya open question di [entitas](../entities/openclaw.md).
- Tidak ada kontradiksi.

## Related

- [OpenClaw](../entities/openclaw.md) · [OpenRouter — Decisions Models](openrouter-decisions-models.md)
- [OpenRouter — Hermes Agent Integration](openrouter-hermes-integration.md)

---
title: "OpenRouter — Hermes Agent Integration (cookbook)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openrouter, hermes, cookbook]
---

# OpenRouter — Hermes Agent Integration (cookbook)

- **Sumber**: openrouter.ai/docs/cookbook/coding-agents/hermes-integration
- **Penulis**: openrouter.ai / hermes-agent
- **URL**: <https://openrouter.ai/docs/cookbook/coding-agents/hermes-integration>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/openrouter. Hermes Agent Integration.md`

## TL;DR

Panduan resmi memakai **Hermes Agent (Nous Research)** dengan OpenRouter: "terminal-native autonomous coding and task agent" dengan memori persisten, skill buatan agen, dan gateway pesan **21+ platform**; backend eksekusi **local, Docker, SSH, Daytona, Modal, Vercel Sandbox, Singularity**. Setup via `hermes model` (interaktif) atau env var; fitur lanjutan: routing provider, fallback mid-session, **auxiliary models**, **Pareto Code Router**.

## Key points

- Setup cepat: `hermes config set OPENROUTER_API_KEY …` → `hermes chat --provider openrouter --model '~anthropic/claude-sonnet-latest'`; file: `~/.hermes/.env` (secret) + `~/.hermes/config.yaml` (model/provider).
- **Provider routing**: `sort: price|throughput|latency`; `only`/`ignore`/`order`/`data_collection: deny`; shortcut `:nitro` (throughput) / `:floor` (harga).
- **Fallback providers**: rantai model cadangan; saat aktif, ganti model mid-session tanpa kehilangan percakapan.
- **Auxiliary models**: tugas sampingan (kompresi konteks, vision, judul sesi, ringkasan web) diarahkan ke model murah — model utama tetap fokus.
- **Pareto Code Router** (`openrouter/pareto-code` + `min_coding_score` 0–1): merutekan tugas coding ke model termurah yang memenuhi ambang kualitas.
- **Kebutuhan minimum konteks: 64K token** — model dengan window lebih kecil ditolak saat startup (system prompt + skema tool bisa memenuhi window kecil).
- Monitoring via Activity Dashboard; error umum: no API key, 401/403, model tidak jalan, context length.

## Notable quotes

> "Hermes requires a model with at least 64K context tokens… since the system prompt and tool schemas can fill smaller windows and leave no room for conversation."

## What this changes

- Entitas [Hermes Agent](../entities/hermes-agent.md) (jalur model & routing).
- Melengkapi [Model Keputusan](../concepts/decision-models.md)? Tidak langsung — router Pareto berbeda dari decision model; dicatat di entitas.
- Tidak ada kontradiksi.

## Related

- [Hermes Agent](../entities/hermes-agent.md)
- [Hermes Agent — Landing](hermes-agent-landing.md) · [OpenRouter — OpenClaw Integration](openrouter-openclaw-integration.md)

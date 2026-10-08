---
title: "DeepSeek Harness — Architecture (Cordis, profil, seam)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [deepseek-harness, dsh, architecture]
---

# DeepSeek Harness — Architecture (Cordis, profil, seam)

- **Sumber**: deepseek-harness.github.io (referensi arsitektur)
- **Penulis**: DeepSeek Harness
- **URL**: <https://deepseek-harness.github.io/deepseek-harness/en/reference/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/DeepSeek Harness Docs. DeepSeek Harness Architecture  DeepSeek Harness.md`

## TL;DR

Arsitektur DSH: **Cordis** = framework plugin (service, typed events, reversible effects pada context bersama); **setiap bagian produk adalah plugin** (model adapter, tool registry, session log, agent loop) — "no privileged core to patch". Runtime = pohon plugin dari **profile** (komposisi bernama) + **bundle** (format distribusi) + patch berlapis. Profil bawaan: `web`, `headless`, `sdk`, `sdk-minimal`, `acp`.

## Key points

- Bundle inti: `dsh-base` (adapter model, tools, persistence, sandbox & approval policy, settings, credentials, telemetry) → `dsh-web-app`, `dsh-headless`, `dsh-sdk-app`, `dsh-acp-app`; `dsh-sdk-minimal` mandiri tanpa base.
- Komposisi: bundle → patch profil → patch home → `--patch` overlay; `dsh --profile web --dump-config` untuk melihat pohon; HMR config-only untuk base.
- **Desktop app (Electron)**: runtime dsh produksi di resource ter-sign; port default **19387**; CLI publik tidak mengelola profil Desktop.
- **Core packages**: `core/session` (log `SessionEvent` append-only), `core/system-prompt`, `core/tools` (registry + pipeline eksekusi ter-guard), `core/agent` + `core/agent-loop`, `core/scope`, `llm/llm` (adapter seam), `webhook/webhook`.
- **Turn flow**: step = satu request model + tool calls; turn = 0+ step; invariant **"Model-visible means logged"** (request harus direkonstruksi dari log); events: session (durable), agent (`agent/*`, live), capability (`fs/*`, `tools/*`, `telemetry/*`).
- **Capability seams**: Service Definition + Provider + Consumer — menukar provider fs/subprocess memindahkan Bash/PTY/LSP sekaligus ke sandbox remote; subagent provider; **Agent Teams** eksperimental (roster, task board, mailbox).
- Tabel "where new behavior goes": menambah provider model (`ctx.llm`), tool (`ctx.tools`), shell/terminal backend, command manusia, jobs, webhook rule, sandbox backend, dst.

## Notable quotes

> "There is no privileged core to patch: you extend dsh by mounting a plugin beside the others, and registrations are effects that unwind when their plugin unloads."

## What this changes

- Entitas [DeepSeek Harness](../entities/deepseek-harness.md) (arsitektur mendalam).
- Tidak ada kontradiksi.

## Related

- [DeepSeek Harness](../entities/deepseek-harness.md)
- [DeepSeek Harness — First Plugin](deepseek-harness-first-plugin.md) · [DeepSeek Harness — LLM Adapter](deepseek-harness-llm-adapter.md)

---
title: "DeepSeek Harness — Python SDK"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [deepseek-harness, dsh, python, sdk]
---

# DeepSeek Harness — Python SDK

- **Sumber**: deepseek-harness.github.io/en/guide/python-sdk
- **Penulis**: DeepSeek Harness
- **URL**: <https://deepseek-harness.github.io/deepseek-harness/en/guide/python-sdk>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/DeepSeek Harness Docs. Get started with the Python SDK.md`

## TL;DR

SDK Python resmi (`pip install deepseek-harness-sdk`, Python 3.10+) menjalankan runtime native `dsh` — **tanpa Node.js sistem** — dengan profil **`sdk-minimal`** bawaan; API: `DeepSeekHarness(provider=…, model=…, max_tokens=…, cwd=…, dsh_home=…, profile=…)` → `harness.run(prompt, session_id=…)` → `result.final_response`. SDK tidak pernah diam-diam membaca `~/.dsh`.

## Key points

- Prasyarat: Python 3.10+, Git, Linux x64/arm64, macOS 14+ arm64, Windows x64; endpoint DeepSeek-compatible + kredensial; workspace & Harness home terisolasi.
- Profil `sdk-minimal`: system prompt `DSH_SYSTEM_PROMPT` (fallback "You are a helpful software engineer assistant."); model default `deepseek-v4-flash`; tool: `bash`/`pwsh` persisten (timeout 300 s); tanpa runtime context/compaction; sesi JSONL tak terkompresi; **tanpa dsh-base** (fs tools/settings/credentials terkelola/OTel/web tools/subagent absen); pin `danger-full-access` → pakai checkout sekali-pakai/container.
- Plugin persisten via `dsh plugin --profile sdk-minimal add file:…` (butuh pnpm untuk manajemen; menjalankan SDK tidak).
- Opt-in `str_replace_editor` via patch (`editor.patch.yml` dengan `insert: fs-local + tool-str-replace-editor`).
- **Catatan telemetri**: session-log contributor DeepSeek meng-upload log events yang belum diterima bersama request DeepSeek secara default (≤8 MiB/request); nonaktifkan dengan `session-log-deepseek.enabled: false`.

## Notable quotes

> "The SDK starts the bundled `dsh --profile sdk-minimal` process lazily and reuses it until context-manager exit."

## What this changes

- Entitas [DeepSeek Harness](../entities/deepseek-harness.md) (SDK & telemetri).
- Tidak ada kontradiksi.

## Related

- [DeepSeek Harness](../entities/deepseek-harness.md)
- [DeepSeek Harness — Architecture](deepseek-harness-architecture.md)

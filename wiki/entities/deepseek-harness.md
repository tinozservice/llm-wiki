---
title: DeepSeek Harness
type: entity
created: 2026-10-08
updated: 2026-10-08
sources: [deepseek-harness-landing, deepseek-harness-readme, deepseek-harness-architecture, deepseek-harness-configure-models, deepseek-harness-python-sdk, deepseek-harness-web-ui, deepseek-harness-first-plugin, deepseek-harness-mcp-memory, deepseek-harness-llm-adapter, deepseek-harness-github-webhooks, deepseek-harness-network-proxy, deepseek-harness-schedule, deepseek-harness-privacy, deepseek-harness-terms, deepseek-first-api-call]
tags: [deepseek-harness, dsh, ai-agent, harness, cordis, mit]
---

# DeepSeek Harness

**DeepSeek Harness (`dsh`)** adalah **agent harness open-source (MIT)** dari DeepSeek AI — dibangun dengan filosofi **"everything is a plugin"** di atas framework **Cordis**, dalam **developer preview** ("THERE WILL BE COMPATIBILITY-BREAKING CHANGES") ([README](../sources/deepseek-harness-readme.md), [landing](../sources/deepseek-harness-landing.md)). Menangani dokumen, spreadsheet, dan kode; punya Web UI, TUI/CLI, **Python SDK**, aplikasi desktop Electron, dan server **ACP** untuk otomasi.

## Arsitektur (ringkas)

- **Cordis**: plugin menyumbang service, typed events, dan reversible effects ke context bersama — **setiap bagian produk adalah plugin** (model adapter, tool registry, session log, agent loop); "no privileged core" ([architecture](../sources/deepseek-harness-architecture.md)).
- Runtime = pohon plugin dari **profile** (`web`, `headless`, `sdk`, `sdk-minimal`, `acp`, `desktop`) + **bundle** (`dsh-base` → web/headless/sdk/acp) + patch berlapis (`cordis.patch.yml`); `dsh --dump-config` untuk inspeksi.
- **Invariant**: "Model-visible means logged" — session log append-only (`SessionEvent`) adalah sumber konteks; turn/step flow dengan waterfall events (`agent/pre-step`, `agent/request`, `llm/stream`, `tools/*`).
- **Capability seams**: Service Definition + Provider + Consumer — tukar provider fs/subprocess → Bash/PTY/LSP ikut pindah ke sandbox remote; **Agent Teams** eksperimental (roster/task board/mailbox).

## Operasional

- Jalankan: `npx @deepseek-ai/dsh web` → **Web UI di 127.0.0.1:3080**; model di **Settings → Models** (API key write-only di `$DSH_HOME/.credentials.yaml`); provider bawaan katalog (anthropic/openai/moonshotai/zai…) + custom gateway (3 protokol) + discovery model ([configure](../sources/deepseek-harness-configure-models.md), [web UI](../sources/deepseek-harness-web-ui.md)).
- **Python SDK** (`deepseek-harness-sdk`, ≥3.10): menjalankan runtime native tanpa Node sistem; profil `sdk-minimal` (tanpa dsh-base; pin `danger-full-access` — pakai sandbox/checkout sekali-pakai); telemetri session-log upload default on (≤8 MiB/request) → bisa dimatikan ([SDK](../sources/deepseek-harness-python-sdk.md)).
- **Plugin**: modul TS `apply(ctx)`; cleanup otomatis via ctx; `inject` untuk dependency ([plugin](../sources/deepseek-harness-first-plugin.md)); **LLM adapter** dengan kontrak stream ketat (usage sebelum finish, dst.) ([adapter](../sources/deepseek-harness-llm-adapter.md)).
- **MCP** ([konsep](../concepts/mcp.md)): klien MCP bawaan (`mcp__<server>__<tool>`); tiga contoh memori default-off (Memorix, MCP Reference Memory, Engram) ([memory MCP](../sources/deepseek-harness-mcp-memory.md)).
- **Otomasi**: plugin Automation tasks/reminders (cron 5-field, zona IANA; record delivery ≠ bukti eksekusi) ([schedule](../sources/deepseek-harness-schedule.md)); **GitHub webhook review** opt-in (PR ready_for_review → Session read-only) ([webhooks](../sources/deepseek-harness-github-webhooks.md)); **proxy** HTTP/HTTPS env (tanpa SOCKS; kode model & telemetri tetap direct) ([proxy](../sources/deepseek-harness-network-proxy.md)).

## Data & kontrak

- **Privacy**: layanan model **official** mengumpulkan session log & dipakai untuk **training/perbaikan teknologi termasuk model ML**; layanan model **custom** — DSH tidak menyimpan Input/Output di server ([privacy](../sources/deepseek-harness-privacy.md)).
- **Terms**: pengguna bertanggung jawab atas Input/Output; larangan high-risk/militer; pengguna mempertahankan hak atas Input/Output ([terms](../sources/deepseek-harness-terms.md)).

## Open questions

- Roadmap menuju 1.0 / stabilitas API (developer preview).
- Adopsi & benchmark DSH (belum ada data pihak ketiga di wiki).
- Apakah DSH akan terhubung ke ekosistem decision models (Jev dkk.) — belum ada di klip.

## Related

- Sumber: [Landing](../sources/deepseek-harness-landing.md) · [README](../sources/deepseek-harness-readme.md) · [Architecture](../sources/deepseek-harness-architecture.md)
- [DeepSeek](deepseek.md) — induk produk.
- [OpenClaw](openclaw.md) · [Hermes Agent](hermes-agent.md) — platform agen pembanding.
- [Platform Agen Self-Hosted](../concepts/self-hosted-agent-platforms.md)
- [Overview](../overview.md)

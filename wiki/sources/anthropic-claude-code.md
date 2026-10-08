---
title: "Claude Code by Anthropic (halaman produk)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [anthropic, claude, claude-code, coding-agent]
---

# Claude Code by Anthropic (halaman produk)

- **Sumber**: claude.com — halaman produk *Claude Code*
- **Penulis**: Anthropic
- **URL**: <https://claude.com/product/claude-code>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/Claude Code by Anthropic  AI Coding Agent, Terminal, IDE.md`

## TL;DR

**Claude Code** adalah coding agent Anthropic yang berjalan **di terminal, berdampingan dengan IDE** (tanpa mengubah alur kerja): build plan → tanya klarifikasi → kerjakan tugas berjam-jam (termasuk refactor multi-hari), buka PR lewat GitHub/GitLab/CLI, dan bisa dipakai dari **Slack**. Termasuk di plan **Pro dan Max** (5×/20×), Team/Enterprise, atau lewat **Console** (baca: tagihan token API standar). Berjalan **lokal** — "runs locally in your terminal and talks directly to model APIs without requiring a backend server or remote code index" — dan meminta izin sebelum mengubah file/menjalankan perintah.

## Key points

- **Plan**: Pro (coding sprint kecil), Max 5× (pemakaian harian), Max 20× (power user); desktop app tersedia untuk Max/Pro/Team/Enterprise ([plans](anthropic-plans-pricing.md)).
- **Kemampuan**: code onboarding (petakan seluruh codebase via agentic search "in a few seconds"), turn issues→PRs, refactor/migrasi multi-jam; "You set the direction as the architect and orchestrator, and Claude Code does the work".
- **Ekstensi**: CLI tools (Git) + **MCP servers** (contoh: GitHub) untuk memperluas kemampuan; asisten memakai tools milik pengguna.
- **Fast mode** untuk Opus 5.5: 2,5× lebih cepat, **$8/$40 per juta token**; research preview di Claude Code; tersedia di plan konsumsi atau via usage credits (plan langganan) ([pricing](anthropic-pricing.md)).
- **Platform**: macOS, Linux, Windows; juga Claude desktop app.
- Benchmark/klaim pelanggan: Ramp, Intercom, Notion (kutipan di halaman).

## Notable quotes

> "You set the direction as the architect and orchestrator, and Claude Code does the work."

> "Claude Code runs locally in your terminal and talks directly to model APIs without requiring a backend server or remote code index."

## What this changes

- Halaman sumber untuk entitas baru [Claude Code](../entities/claude-code.md) dan [Anthropic](../entities/anthropic.md).
- Melengkapi jejak Claude Code di wiki: dipakai sebagai harness di [OpenClaw](../entities/openclaw.md)/[DSH](../entities/deepseek-harness.md), config [Puter MCP](../sources/puter-docs-mcp-server.md), dan integrasi [DeepSeek](../sources/deepseek-integrate-claude-code.md).
- Tidak ada kontradiksi.

## Related

- [Anthropic](../entities/anthropic.md) · [Claude Code](../entities/claude-code.md)
- [Plans & pricing](anthropic-plans-pricing.md) · [Pricing](anthropic-pricing.md)
- [Model Context Protocol (MCP)](../concepts/mcp.md)

---
title: Claude Code
type: entity
created: 2026-10-08
updated: 2026-10-08
sources: [anthropic-claude-code, anthropic-plans-pricing, anthropic-pricing, deepseek-integrate-claude-code, puter-docs-mcp-server]
tags: [claude-code, anthropic, coding-agent]
---

# Claude Code

**Claude Code** adalah **coding agent dari [Anthropic](anthropic.md)** yang berjalan di **terminal, berdampingan dengan IDE** (tanpa mengubah alur kerja): menyusun plan, mengajukan pertanyaan klarifikasi, mengerjakan tugas berjam-jam (termasuk refactor/migrasi multi-hari), membaca issue, menjalankan tes, dan membuka PR lewat GitHub/GitLab/CLI. Juga tersedia di **Claude desktop app** dan bisa memulai tugas dari **Slack** ([halaman produk](../sources/anthropic-claude-code.md)).

## Cara pakai & keamanan

- **Berjalan lokal**: "runs locally in your terminal and talks directly to model APIs — no backend server or remote code index"; **meminta izin** sebelum mengubah file/menjalankan perintah.
- **Ekstensi**: CLI tools (Git) + **MCP servers** (contoh: GitHub) — memakai tools milik pengguna ([produk](../sources/anthropic-claude-code.md); lihat [MCP](../concepts/mcp.md)).
- **Platform**: macOS, Linux, Windows.

## Model & biaya

- **Termasuk** di plan Pro, Max (5×/20×), Team, Enterprise; lewat **Console** dikenai **harga token API standar** ([produk](../sources/anthropic-claude-code.md)).
- **Fast mode** (Opus 5.5): 2,5× lebih cepat, **$8/$40 per 1M token** — research preview; untuk plan langganan via usage credits ([produk](../sources/anthropic-claude-code.md), [Anthropic](../entities/anthropic.md)).
- Pemilihan model/effort: lihat [Choosing the right model](../sources/anthropic-choosing-model.md).

## Peran di wiki

- **Jalur DeepSeek**: DeepSeek memuat panduan resmi memakai Claude Code dengan API DeepSeek (env `ANTHROPIC_BASE_URL=…/anthropic`; mapping `claude-opus*`→V4 Pro, `sonnet/haiku*`→Flash) ([sumber](../sources/deepseek-integrate-claude-code.md)).
- **Harness di platform lain**: OpenClaw & DeepSeek Harness mendukung Claude Code CLI sebagai plugin/runtime; [Puter MCP](../sources/puter-docs-mcp-server.md) & [Solana MCP](../sources/solana-coding-with-agents.md) memuat contoh integrasi untuk Claude Code.
- Disebut sebagai tool yang didukung [Puter.js](../entities/puter.md) dan cookbook [OpenRouter](../entities/openrouter.md).

## Open questions

- Kuota pemakaian persis Claude Code per plan (Pro vs Max 5×/20×) tidak dirinci di klip.
- Dukungan berjalan di JetBrains/IDE lain lewat ekstensi resmi (halaman hanya menyebut terminal & desktop app).
- Kebijakan data untuk sesi Claude Code (retensi, training) mengikuti ketentuan plan/API — belum dirinci sumber.

## Related

- [Anthropic](anthropic.md) — induk & lineup model.
- Sumber: [Halaman produk](../sources/anthropic-claude-code.md) · [Plans](../sources/anthropic-plans-pricing.md) · [Pricing](../sources/anthropic-pricing.md) · [Integrasi DeepSeek](../sources/deepseek-integrate-claude-code.md)
- [Model Context Protocol (MCP)](../concepts/mcp.md) · [Codex](codex.md) — coding agent sesama (pembanding).
- [Overview](../overview.md)

---
title: "DeepSeek — Integrate with Qoder"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [deepseek, integration, qoder]
---

# DeepSeek — Integrate with Qoder

- **Sumber**: api-docs.deepseek.com/quick_start/agent_integrations/qoder
- **Penulis**: DeepSeek AI
- **URL**: <https://api-docs.deepseek.com/quick_start/agent_integrations/qoder>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/DeepSeek Docs. Integrate with Qoder  DeepSeek API Docs.md`

## TL;DR

**Qoder** (produk coding agentik: IDE, CLI, plugin JetBrains) mendukung DeepSeek dua cara: **model bawaan** (dibayar Qoder Credits) atau **custom model** dengan API key DeepSeek (edisi Personal; dibayar langsung ke akun DeepSeek, tidak memakai Credits). Panduan mencakup ketiga bentuk Qoder.

## Key points

- Instalasi: IDE dari qoder.com; CLI `curl -fsSL https://qoder.com/install | bash` / `npm install -g @qoder-ai/qodercli` (Node 20+); plugin JetBrains 2020.3+.
- Konfigurasi custom: IDE Settings → Models → +Add → DeepSeek → model (V4-Pro/V4-Flash) → API key → verifikasi otomatis; CLI `/model` → Custom tab → wizard (jangan edit `settings.json` manual); JetBrains → Plugin Settings → Add Model.
- DeepSeek V4 mendukung **konteks hingga 1M** dan **max thinking effort** — diatur dari model selector.

## Notable quotes

> "Built-in models: no extra configuration is needed… Custom models: connect with your DeepSeek API key… does not consume Qoder Credits."

## What this changes

- Entitas [DeepSeek](../entities/deepseek.md).
- Tidak ada kontradiksi.

## Related

- [DeepSeek](../entities/deepseek.md)
- [DeepSeek — Integrate with Codex](deepseek-integrate-codex.md)

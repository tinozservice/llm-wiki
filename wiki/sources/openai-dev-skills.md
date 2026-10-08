---
title: "OpenAI Dev — Skills (plugin)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openai, plugins, skills, dev]
---

# OpenAI Dev — Skills (plugin)

- **Sumber**: developers.openai.com/plugins/concepts/skills
- **Penulis**: OpenAI
- **URL**: <https://developers.openai.com/plugins/concepts/skills>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenAI Dev. Skills – Plugins.md`

## TL;DR

**Skills** = folder instruksi+resource yang mengajari ChatGPT/Codex menyelesaikan workflow berulang. Setiap skill punya **`SKILL.md`** (nama, deskripsi pemicu, instruksi, referensi/script/template opsional). Skill melengkapi MCP server: server menyediakan data & aksi terkendali; skill menyediakan **workflow** (kapan memanggil tool, urutan, cara menangani hasil tidak lengkap, isi output akhir).

## Key points

- Skill bisa berdiri sendiri (tanpa MCP) bila hanya butuh instruksi+resource terpaket.
- **Aktivasi**: model melihat metadata (nama+deskripsi) dulu; instruksi penuh dimuat saat permintaan cocok atau dipanggil langsung — tulis deskripsi berbasis tujuan pengguna.
- Contoh peran skill: briefing pelanggan dari aktivitas akun; review risiko proyek; workflow riset bersumber; penerapan standar penulisan organisasi.
- Batas jelas: MCP = data/auth/aksi; skill = instruksi/contoh/template.

## Notable quotes

> "A skill explains how to complete the workflow; an MCP server provides live information and enforces controlled actions."

## What this changes

- Konsep [Plugin ChatGPT & Codex](../concepts/chatgpt-plugins.md).
- Tidak ada kontradiksi.

## Related

- [OpenAI](../entities/openai.md)
- [Plugin Architecture](openai-dev-plugin-architecture.md) · [MCP Server](openai-dev-mcp-server.md)

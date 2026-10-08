---
title: "DeepSeek — Integrate with WorkBuddy/CodeBuddy"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [deepseek, integration, workbuddy]
---

# DeepSeek — Integrate with WorkBuddy/CodeBuddy

- **Sumber**: api-docs.deepseek.com/quick_start/agent_integrations/workbuddy
- **Penulis**: DeepSeek AI
- **URL**: <https://api-docs.deepseek.com/quick_start/agent_integrations/workbuddy>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/DeepSeek Docs. Integrate with WorkBuddyCodeBuddy  DeepSeek API Docs.md`

## TL;DR

**WorkBuddy/CodeBuddy** (agent & coding assistant) memakai DeepSeek lewat **file konfigurasi model lokal** `models.json` (`.codebuddy\models.json` user-level atau per proyek) dengan endpoint OpenAI-compatible `https://api.deepseek.com/v1/chat/completions` dan `apiKey: "${DEEPSEEK_API_KEY}"`.

## Key points

- Model entry: `deepseek-flash`, maxInputTokens 128.000, maxOutputTokens 8.192, tool call & images didukung.
- Simpan `models.json` sebagai **UTF-8 tanpa BOM** (desktop tertentu gagal membaca BOM).
- Verifikasi key via cURL; troubleshooting: 401 (key salah), 404 (model id), gagal baca config, `${DEEPSEEK_API_KEY}` tampil literal (restart dari terminal dengan env).

## Notable quotes

> "Save `models.json` as UTF-8 without BOM."

## What this changes

- Entitas [DeepSeek](../entities/deepseek.md).
- Tidak ada kontradiksi.

## Related

- [DeepSeek](../entities/deepseek.md)
- [Awesome DeepSeek Agent](awesome-deepseek-agent.md)

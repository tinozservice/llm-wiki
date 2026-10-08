---
title: "OpenAI Dev — Deep Research (API)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openai, api, deep-research]
---

# OpenAI Dev — Deep Research (API)

- **Sumber**: developers.openai.com/api/docs/guides/deep-research
- **Penulis**: OpenAI
- **URL**: <https://developers.openai.com/api/docs/guides/deep-research>
- **Tanggal publikasi**: tidak dicontumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenAI Dev. Deep research  OpenAI API.md`

## TL;DR

Panduan **deep research** via Responses API: model `o3-deep-research`/`o4-mini-deep-research` (keduanya **shutdown 23 Juli 2026**; pengganti **`gpt-5.6-sol`**) menemukan/menganalisis/mensintesis ratusan sumber menjadi laporan setingkat analis riset. Wajib menyertakan ≥1 sumber data: **web search**, **remote MCP**, atau **file search** (vector stores); bisa tambah **code interpreter**.

## Key points

- Gunakan **background mode** (respons lama) + webhook saat selesai; background menyimpan data ~10 menit → **tidak kompatibel dengan ZDR** (MAM aman).
- Struktur output: array berisi `web_search_call` (action: search/open_page/find_in_page), `code_interpreter_call`, `mcp_tool_call`, `file_search_call`, dan `message` final dengan **inline citations** (wajib ditampilkan jelas & clickable).
- Migrasi bukan sekadar ganti model ID — evaluasi konfigurasi tiap tool.

## Notable quotes

> "Changing the model ID alone is not a complete migration."

## What this changes

- Melengkapi [entitas OpenAI](../entities/openai.md) (API research).
- Tidak ada kontradiksi.

## Related

- [OpenAI](../entities/openai.md)
- [OpenAI API — Models](openai-dev-models.md) · [Reasoning Models](openai-dev-reasoning-models.md)

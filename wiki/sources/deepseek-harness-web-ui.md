---
title: "DeepSeek Harness — Use the Web UI"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [deepseek-harness, dsh, web-ui]
---

# DeepSeek Harness — Use the Web UI

- **Sumber**: deepseek-harness.github.io/en/guide/quickstart
- **Penulis**: DeepSeek Harness
- **URL**: <https://deepseek-harness.github.io/deepseek-harness/en/guide/quickstart>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/DeepSeek Harness Docs. Use the Web UI.md`

## TL;DR

Quickstart Web UI: jalankan server (README) → **Settings → Models** masukkan DeepSeek API key (langsung aktif tanpa restart) → **Choose workspace** (composer nonaktif sampai workspace dipilih) → kirim task pertama ("Summarize this repository…"). Agen dapat membaca/mengedit file, menjalankan perintah, mendelegasikan, dan memelihara plan; Web UI meminta approval sesuai policy.

## Key points

- `dsh` memakai direktori pemanggil sebagai lokasi filesystem default; workspace baru harus ditambahkan eksplisit.
- Lanjutan: configure models, Python SDK, mode CLI lain, develop plugin.

## Notable quotes

> "The Web UI asks before operations that require approval under the active permission policy."

## What this changes

- Entitas [DeepSeek Harness](../entities/deepseek-harness.md).
- Tidak ada kontradiksi.

## Related

- [DeepSeek Harness](../entities/deepseek-harness.md)
- [DeepSeek Harness — Configure Models](deepseek-harness-configure-models.md)

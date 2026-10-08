---
title: "DeepSeek Harness — Your First Plugin"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [deepseek-harness, dsh, plugin, cordis]
---

# DeepSeek Harness — Your First Plugin

- **Sumber**: deepseek-harness.github.io/en/develop/basic/
- **Penulis**: DeepSeek Harness
- **URL**: <https://deepseek-harness.github.io/deepseek-harness/en/develop/basic/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/DeepSeek Harness Docs. Your first plugin  DeepSeek Harness.md`

## TL;DR

Plugin DSH = modul TypeScript yang mengekspor `apply(ctx)`; framework memanggil `apply` saat memuat plugin dan plugin meregistrasikan kapabilitas lewat `ctx`. Muat sebagai overlay: `pnpm dsh web --patch ./scratch-plugin/cordis.yml` dengan `insert` path absolut. **Cleanup otomatis**: apa pun yang diregistrasi lewat `ctx` dibersihkan saat plugin unload; resource eksplisit pakai `ctx.effect()`.

## Key points

- Deklarasi dependency: `export const inject = ['tools']` — framework menunggu service siap sebelum load.
- Tiga bentuk plugin: function (cukup untuk kebanyakan), object, class (`extends Service` untuk menyediakan service ke plugin lain).
- Plugin path di `cordis.yml` harus absolut; patch file tidak mengubah direktori resolusi modul.

## Notable quotes

> "Anything registered through `ctx` — event listeners, tools, or timers — is cleaned up when the plugin unloads."

## What this changes

- Entitas [DeepSeek Harness](../entities/deepseek-harness.md) (model plugin).
- Tidak ada kontradiksi.

## Related

- [DeepSeek Harness](../entities/deepseek-harness.md)
- [DeepSeek Harness — Architecture](deepseek-harness-architecture.md) · [DeepSeek Harness — LLM Adapter](deepseek-harness-llm-adapter.md)

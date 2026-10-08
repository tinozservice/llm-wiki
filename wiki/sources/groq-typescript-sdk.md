---
title: "Groq — TypeScript SDK"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [groq, sdk, typescript]
---

# Groq — TypeScript SDK

- **Sumber**: github.com/groq/groq-typescript (README)
- **Penulis**: groq.com
- **URL**: <https://github.com/groq/groq-typescript/blob/main/README.md>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/groq-typescriptREADME.md at main.md`

## TL;DR

`groq-sdk` (npm) — library TypeScript/JavaScript server-side untuk Groq REST API; TypeScript ≥4.9; runtime: **Node 20 LTS+, Deno, Bun, Cloudflare Workers, Vercel Edge, Jest (node env), Nitro**; **browser dinonaktifkan default** (harus `dangerouslyAllowBrowser: true` — memaparkan kredensial). Retry 2× & timeout 1 menit default; logging berlapis + custom logger (pino/winston/dll.).

## Key points

- Instalasi `npm install groq-sdk`; contoh `client.chat.completions.create({ model: 'openai/gpt-oss-20b' })`.
- File uploads: `File`, `fetch Response`, `fs.ReadStream`, helper `toFile`.
- Error: subclass `APIError` (400/401/403/404/422/429/≥500) dengan `status`/`name`/`headers`.
- Raw response: `.asResponse()` / `.withResponse()` pada `APIPromise`.
- Proxy: Node (undici `ProxyAgent` + `dispatcher`), Bun (`proxy`), Deno (`Deno.createHttpClient`).
- `GROQ_LOG` / `logLevel` (debug…off); React Native belum didukung.

## Notable quotes

> "Web browsers: disabled by default to avoid exposing your secret API credentials."

## What this changes

- Entitas [Groq](../entities/groq.md) (SDK resmi).
- Tidak ada kontradiksi.

## Related

- [Groq](../entities/groq.md)
- [Groq — Python SDK](groq-python-sdk.md)

---
title: "Groq — Python SDK"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [groq, sdk, python]
---

# Groq — Python SDK

- **Sumber**: github.com/groq/groq-python (README)
- **Penulis**: groq.com
- **URL**: <https://github.com/groq/groq-python/blob/main/README.md>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/groq-pythonREADME.md at main.md`

## TL;DR

`groq` (PyPI) — library Python 3.10+ untuk Groq REST API; klien **sync + async** (httpx; opsi `aiohttp`), di-generate **Stainless**; typed params (TypedDict) & respons (Pydantic). Default: retry 2× dengan backoff untuk koneksi/408/409/429/≥500; timeout 1 menit.

## Key points

- Instalasi `pip install groq`; `Groq(api_key=…)` (env `GROQ_API_KEY`); contoh `client.chat.completions.create(model="openai/gpt-oss-20b")`.
- Async: `AsyncGroq` (identik), backend aiohttp `pip install groq[aiohttp]` + `DefaultAioHttpClient()`.
- Streaming SSE (`stream=True`); file upload (bytes/PathLike/tuple) untuk audio transkripsi.
- Error taxonomy: 400 `BadRequestError`, 401 `AuthenticationError`, 403 `PermissionDeniedError`, 404 `NotFoundError`, 422 `UnprocessableEntityError`, 429 `RateLimitError`, ≥500 `InternalServerError`, N/A `APIConnectionError` (semua inherit `groq.APIError`).
- Advanced: `GROQ_LOG=info|debug`; `max_retries` & `timeout` per-client/per-request; `.with_raw_response` / `.with_streaming_response`; undocumented endpoints via `client.post`; `model_fields_set` membedakan null vs missing; custom httpx (proxy/transport); `GROQ_BASE_URL`.

## Notable quotes

> "The library includes type definitions for all request params and response fields, and offers both synchronous and asynchronous clients powered by httpx."

## What this changes

- Entitas [Groq](../entities/groq.md) (SDK resmi).
- Tidak ada kontradiksi.

## Related

- [Groq](../entities/groq.md)
- [Groq — TypeScript SDK](groq-typescript-sdk.md) · [Groq — MCP Server](groq-mcp-server.md)

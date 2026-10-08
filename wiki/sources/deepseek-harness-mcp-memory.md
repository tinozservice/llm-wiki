---
title: "DeepSeek Harness — Memory MCP (Memorix/MCP Reference/Engram)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [deepseek-harness, dsh, mcp, memory]
---

# DeepSeek Harness — Memory MCP (Memorix/MCP Reference/Engram)

- **Sumber**: deepseek-harness.github.io/en/guide/mcp-memory
- **Penulis**: DeepSeek Harness
- **URL**: <https://deepseek-harness.github.io/deepseek-harness/en/guide/mcp-memory>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/DeepSeek Harness Docs. Connect a third-party memory MCP server.md`

## TL;DR

DSH menyediakan **tiga konfigurasi referensi default-off** untuk menghubungkan sistem memori pihak ketiga lewat klien MCP-nya: **Memorix** (`memorix@1.3.0`, stdio), **MCP Reference Memory** (`@modelcontextprotocol/server-memory@2026.7.4`, stdio), **Engram** (`v1.20.0`, stdio). DSH hanya menyediakan jalur interop — tidak meng-endorse, tidak mengunduh/menginisialisasi server.

## Key points

- Mekanisme: DSH mem-parse overlay Cordis → start command stdio / connect Streamable HTTP → discover MCP tools → ekspos sebagai `mcp__<serverName>__<tool>`.
- Bridge stdio **membuang env yang tampak seperti kredensial + semua `DSH_*`** sebelum launch child; secret tambahan ditaruh di `config.env`.
- Aktivasi: `dsh web --patch …/mcp-memory/memorix.cordis.yml` (atau reference-memory/engram); permanen: merge `insert` ke `cordis.patch.yml` profil/home.
- Skenario verifikasi: tulis memori di sesi A → recall di sesi B (tanpa restart Host) → gunakan preferensi.
- Menambah MCP lain: copy row dengan `id`/`serverName` unik; HTTP: `transport: streamable-http` + `url`/`headers`.

## Notable quotes

> "These third-party configurations are provided as interoperability examples only."

## What this changes

- Entitas [DeepSeek Harness](../entities/deepseek-harness.md) (MCP & memori).
- Tidak ada kontradiksi.

## Related

- [DeepSeek Harness](../entities/deepseek-harness.md)
- [DeepSeek Harness — Architecture](deepseek-harness-architecture.md)

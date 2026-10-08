---
title: "DeepSeek Harness — Run Behind a Network Proxy"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [deepseek-harness, dsh, proxy, jaringan]
---

# DeepSeek Harness — Run Behind a Network Proxy

- **Sumber**: deepseek-harness.github.io/en/guide/network-proxy
- **Penulis**: DeepSeek Harness
- **URL**: <https://deepseek-harness.github.io/deepseek-harness/en/guide/network-proxy>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/DeepSeek Harness Docs. Run DSH behind a network proxy.md`

## TL;DR

DSH mengikuti `HTTP_PROXY`/`HTTPS_PROXY` (dan `NO_PROXY`) untuk semua outbound (model, web search, fetch, MCP HTTP) — dibaca saat launch; bisa ditaruh di `$DSH_HOME/.env` (env yang diekspor menang). **Tidak mendukung SOCKS** (`socks5://` dilaporkan & di-skip); `.env` proyek dari git ditolak ("DSH refuses to start rather than let a repository decide where your traffic goes").

## Key points

- "Browser ter-proxy tapi terminal tidak" — penjelasan tiga mekanisme (OS proxy vs env var vs TUN mode); DSH hanya membaca env var.
- `NO_PROXY`: host + subdomain; `:port` didukung; **CIDR tidak bekerja**; loopback selalu direct.
- TLS-intercepting proxy → `NODE_EXTRA_CA_CERTS` sebelum start (dibaca hanya saat proses start).
- **Yang tetap direct**: loopback; kode yang ditulis model (worker/ptc-runtime tidak menerima proxy setting — mencegah script membaca URL ber-password); telemetri OTLP; `web_fetch` ke alamat privat literal (ditolak).
- Peringatan: password di URL proxy terwarisi ke semua command yang dijalankan agen (dan bisa tercetak di output).

## Notable quotes

> "A child that is itself a Node program honors them only on Node 22.21 or later."

## What this changes

- Entitas [DeepSeek Harness](../entities/deepseek-harness.md) (operasi jaringan).
- Tidak ada kontradiksi.

## Related

- [DeepSeek Harness](../entities/deepseek-harness.md)
- [DeepSeek Harness — Python SDK](deepseek-harness-python-sdk.md)

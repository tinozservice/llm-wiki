---
title: "Puter developer — Full Networking in the Browser"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, networking, tcp, tls, wisp]
---

# Puter developer — Full Networking in the Browser

- **Sumber**: Puter developer — halaman produk *Networking*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://developer.puter.com/networking/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter developer Full Networking in the Browser.md`

## TL;DR

Halaman produk networking — penjelasan arsitektur: browser normal hanya punya fetch & WebSocket (terbatas CORS); `puter.net` menambahkan **TCP socket mentah & TLS** dengan menyalurkan koneksi lewat WebSocket tunggal ke relay Puter, sementara **TLS berjalan di browser** (relay tidak pernah melihat trafik terdekripsi).

## Key points

- Tabel kemampuan: fetch any URL ✓, raw TCP socket ✓, TLS socket ✓, bicara dengan Postgres/Redis/SMTP/SSH ✓ — semuanya hal yang browser sendiri tidak bisa.
- **Cara kerja**: socket dibuat di JavaScript → ditunnel lewat satu WebSocket ke relay Puter → relay membuka koneksi TCP polos ke target; TLS di dalam tunnel (di browser).
- **Teknologi**: multiplexing stream via protokol **Wisp** (open); TLS dari **rustls** dikompilasi ke WebAssembly; seluruh stack — termasuk **Puter sendiri** — open source. Ada write-up blog "Unrestricted Browser Networking".
- Klaim: "We are not aware of any other JavaScript SDK that gives frontend code a raw TCP socket."
- Contoh app yang dibangun di atas `puter.net`: browser, API tester, web scraper — semuanya jalan sepenuhnya di frontend.
- Use case: SSH client, email client, custom protocol handlers, panggil API eksternal tanpa CORS.

## Notable quotes

> "TLS runs inside the tunnel, in the browser itself, so the relay never sees decrypted traffic."

## What this changes

- Detail arsitektur baru yang tidak ada di [docs Networking](puter-docs-networking.md): Wisp, rustls-WASM, klaim "satu-satunya SDK" — dicatat di [Puter](../entities/puter.md).
- Menjawab sebagian [open question keamanan](puter-docs-networking.md) (CORS-bypass): TLS end-to-end di client, relay buta isi.
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — Networking](puter-docs-networking.md)
- [Puter developer — Peer-to-Peer Communication API](puter-dev-peer.md)

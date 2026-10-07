---
title: "Puter docs — Networking"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, networking, cors, api]
---

# Puter docs — Networking

- **Sumber**: Puter.js documentation — halaman *Networking*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://docs.puter.com/Networking/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter docs. Networking.md`

## TL;DR

`puter.net` memberi **networking penuh dari frontend** — tanpa server/proxy: `fetch` HTTP, socket **TCP**, dan socket **TLS** — sekaligus menembus batasan CORS.

## Key points

- **Fungsi**: `puter.net.fetch()` (HTTP), `puter.net.Socket()` (TCP), `puter.net.tls.TLSSocket()` (TLS).
- Manfaat utama yang disebut: **bypass CORS** sepenuhnya — berguna untuk memanggil API eksternal dari browser.
- Contoh: koneksi TLS ke `example.com:443`, kirim `GET / HTTP/1.1`, baca event `tlsopen`/`tlsdata`/`tlsclose`/`error`.
- Relay token single-use (60/30/10 per menit paid/free/anon) seperti di [Rate Limits and Quotas](puter-docs-rate-limits.md#networking).

## Notable quotes

> "One of the major benefits of `puter.net` is that it allows you to bypass CORS restrictions entirely."

## What this changes

- Melengkapi [Puter](../entities/puter.md): networking kelas rendah (socket/TLS) dari browser — kemampuan tak lazim untuk SDK frontend.
- Trade-off keamanan layak dicatat: CORS-bypass memperluas permukaan panggilan dari halaman (dimitigasi relay token & auth per akun).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — Peer](puter-docs-peer.md)
- [Puter docs — Rate Limits and Quotas](puter-docs-rate-limits.md)

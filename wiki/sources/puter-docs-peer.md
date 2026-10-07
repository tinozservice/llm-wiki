---
title: "Puter docs — Peer"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, webrtc, p2p, api]
---

# Puter docs — Peer

- **Sumber**: Puter.js documentation — halaman *Peer*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://docs.puter.com/Peer/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter docs. Peer.md`

## TL;DR

API **Peer**: WebRTC data channel dengan **signaling & TURN relay bawaan** — client bisa terhubung langsung tanpa server signaling sendiri. Cocok untuk multiplayer game, collaborative editing, dan komunikasi realtime.

## Key points

- **Fungsi**: `puter.peer.serve()` (buat peer server → invite code), `puter.peer.connect(inviteCode)`, `ensureTurnRelays()` (preload relay), `createGuestGrant()`.
- **Room name**: selain invite code, server bisa di-address dengan nama ruang pilihan (`serve({ name: 'friday-standup' })`) — link bisa dibagikan & dipakai ulang selama ada yang menyajikan.
- **Guest tanpa akun**: host bisa menerbitkan `guestGrant` (atau guest memakai `anonToken` + `turnGrant` dari host) agar koneksi tetap lewat relay Puter; relay yang dipakai guest ditagih ke akun pemberi grant (lihat [Rate Limits and Quotas](puter-docs-rate-limits.md#peer-connections)).
- Hosting sesi butuh autentikasi (Puter.js memunculkan prompt bila perlu).
- Contoh lengkap di dokumen: peer chat dua tab (server → invite code → client connect → kirim pesan).

## Notable quotes

> "The Puter.js Peer API gives you WebRTC data channels with built-in signaling and TURN relays, so you can connect clients directly without running your own signaling server."

## What this changes

- Melengkapi [Puter](../entities/puter.md): realtime P2P sebagai layanan platform (pelengkap Events & Networking).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — Networking](puter-docs-networking.md)
- [Puter docs — Rate Limits and Quotas](puter-docs-rate-limits.md)

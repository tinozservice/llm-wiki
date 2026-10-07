---
title: "Puter docs — Events"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, events, realtime, api]
---

# Puter docs — Events

- **Sumber**: Puter.js documentation — halaman *Events* (beta)
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://docs.puter.com/Events/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter docs. Events.md`

## TL;DR

API **Events** (beta) memberi tahu aplikasi saat data user berubah — subscribe ke file/folder (termasuk path yang belum ada), key KV, atau notifikasi; handler berjalan tiap ada perubahan. Tanpa polling, tanpa server: **session subscription** (selama halaman terbuka) atau **persistent subscription** (tetap jalan saat app ditutup, pakai handler yang dipublikasikan).

## Key points

- **Dua jenis langganan**:
  - `puter.events.onLocal()` — hidup selama klien terhubung; untuk sinkronisasi UI; `subscription.off()` untuk berhenti.
  - `puter.events.onPersistent()` — tersimpan di akun; menjalankan **handler** yang dipublikasikan app (untuk kerja latar, mis. memproses upload); `unsubscribe()` untuk mengakhiri.
- **Subject string**: `fs:~/Documents` (folder/file by path/uid), `fs:~/inbox/*.json:add` (path + jenis perubahan), `kv:cart` / `kv:<appID>:cart:*` (key/prefix), `notif:account` (notifikasi user).
- **Path belum ada**: subscription bisa di-anchor ke folder induk dan match sisa path saat muncul (`sub.anchor.path`, `sub.match`).
- **Catch-up**: `puter.events.fetch({ subject, after })` membaca event yang terlewat saat tidak ada yang mendengarkan; gap marker jika beberapa perubahan tidak terkirim.
- **Handler & worker events**: `puter.events.handlers.publish/list/remove`, `puter.events.workers.list/destroy`; `context` dibaca sekali saat subscribe.
- **Billing**: delivery ditagih ke **user pemegang subscription**, bukan developer (lihat [Rate Limits and Quotas](puter-docs-rate-limits.md#events) untuk limit & tarif 10/100 µ¢ per event).

## Notable quotes

> "The Events API tells your app when a user's data changes. Subscribe to a file, a folder, a path that doesn't exist yet, a key-value key, or the user's notifications, and your handler runs each time it changes. There's nothing to poll and no server to run."

## What this changes

- Menambah kemampuan **realtime/reactive** ke [Puter](../entities/puter.md) — pasangan alami untuk KV/FS.
- Konsisten dengan [Rate Limits and Quotas](puter-docs-rate-limits.md): biaya delivery & limit subscription sudah terdokumentasi di sana.
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — Key-Value Store](puter-docs-key-value-store.md)
- [Puter docs — Cloud Storage (FS)](puter-docs-cloud-storage.md)
- [Puter docs — Serverless Workers](puter-docs-serverless-workers.md)
- [Puter docs — Rate Limits and Quotas](puter-docs-rate-limits.md)

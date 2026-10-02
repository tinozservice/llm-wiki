---
title: "Hostinger — Runtime Logs"
type: source
created: 2026-10-02
updated: 2026-10-02
sources: []
tags: [hostinger, nodejs, logs]
---

# Hostinger — Runtime Logs

- **Sumber**: Hostinger — dokumentasi Node.js, Runtime Logs
- **Penulis**: tidak dicantumkan
- **URL**: <https://docs.hostinger.com/node.js/runtime-logs>
- **Tanggal publikasi**: 2026-07-27; klip dibuat 2026-10-02
- **Berkas mentah**: `raw/2026/oktober/02/Hostinger Runtime Logs node js Docs.md`

## TL;DR

Runtime Logs = tampilan live stdout/stderr proses Node.js yang berjalan (bukan log build). Menampilkan log **deployment terakhir saja**; buffer maksimum **5.000 baris**; tersedia filter waktu/severity/pencarian, mode Live (polling 5 detik), grafik volume, dan unduh/copy.

## Key points

- Field: Timestamp (HH:MM:SS), Severity (INFO/LOG/WARN/ERROR/DEBUG/TRACE), Message.
- Filter: rentang waktu (jam/hari/minggu/bulan), severity multi-select, pencarian substring (case-insensitive) — instan tanpa refetch.
- Navigasi antar WARN/ERROR; grafik batang stacked per bucket.
- Export: `{domain}-runtime-logs.txt` atau copy — mengikuti filter aktif.
- Log kosong bila app log ke file (mis. winston), bukan console; static app tidak punya runtime log.
- "No logs — Redeploy" bila belum ada deployment sejak fitur aktif.

## Notable quotes

> "Direct file logging (e.g. `winston` writing to a file) bypasses the runtime-log capture; switch the transport to console output to see it here."

## What this changes

- Melengkapi [Hostinger](../entities/hostinger.md).
- Tidak ada kontradiksi.

## Related

- [Hostinger](../entities/hostinger.md)
- [Hostinger — Deployments](hostinger-nodejs-deployments.md)
- [Hostinger — Creating a Node.js App](hostinger-nodejs-creating-app.md)

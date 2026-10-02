---
title: "Hostinger — Vulnerability Scanning"
type: source
created: 2026-10-02
updated: 2026-10-02
sources: []
tags: [hostinger, nodejs, security]
---

# Hostinger — Vulnerability Scanning

- **Sumber**: Hostinger — dokumentasi Node.js, Vulnerability Scanning
- **Penulis**: tidak dicantumkan
- **URL**: <https://docs.hostinger.com/node.js/vulnerabilities>
- **Tanggal publikasi**: 2026-07-27; klip dibuat 2026-10-02
- **Berkas mentah**: `raw/2026/oktober/02/Hostinger Vulnerability Scanning node js Docs.md`

## TL;DR

Hostinger memindai paket npm app terhadap advisory kerentanan: **setiap deployment** dan **berkala**. Temuan tampil di Security → Vulnerabilities dengan detail paket, versi perbaikan, CVE, skor CVSS, dan severity. App Git bisa diperbaiki lewat **pull request otomatis**; app arsip lewat patch manual.

## Key points

- Severity: critical, high, moderate, low (atau unknown); filter/pencarian.
- Notifikasi email untuk temuan baru (tidak diulang lebih dari sekali seminggu).
- **Auto-fix (Git)**: pilih kerentanan → PR berisi bump versi; Anda review & merge; merge memicu auto-deploy.
- **Archive**: `npm update`/bump versi → rebuild arsip → redeploy.
- Auto-fix butuh koneksi GitHub aktif.

## Notable quotes

> "You review and merge it yourself — nothing goes live until you merge."

## What this changes

- Melengkapi [Hostinger](../entities/hostinger.md).
- Tidak ada kontradiksi.

## Related

- [Hostinger](../entities/hostinger.md)
- [Hostinger — GitHub Deployment](hostinger-nodejs-github.md)
- [Hostinger — Deployments](hostinger-nodejs-deployments.md)

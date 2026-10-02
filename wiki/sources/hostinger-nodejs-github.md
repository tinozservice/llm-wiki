---
title: "Hostinger — GitHub Deployment"
type: source
created: 2026-10-02
updated: 2026-10-02
sources: []
tags: [hostinger, nodejs, github, ci]
---

# Hostinger — GitHub Deployment

- **Sumber**: Hostinger — dokumentasi Node.js, GitHub
- **Penulis**: tidak dicantumkan
- **URL**: <https://docs.hostinger.com/node.js/github>
- **Tanggal publikasi**: 2026-09-23; klip dibuat 2026-10-02
- **Berkas mentah**: `raw/2026/oktober/02/Hostinger github node js Docs.md`

## TL;DR

Integrasi GitHub Node.js Hostinger: setiap push ke branch terhubung menjalankan pipeline penuh — pull → install (`npm/yarn/pnpm`) → build → start/restart app. Berbeda dari fitur Git generik yang hanya menyalin file. Connection via GitHub App, satu akun pada satu waktu.

## Key points

- Git deployment vs archive upload: trigger push vs upload manual; dependensi dipasang di Hostinger vs pilihan Anda; auto-fix kerentanan via PR vs manual.
- Requirements: plan Node.js-capable, repo dengan `package.json`, framework didukung/Other.
- Connection status: Connected / Not connected / Different account / Access missing / App suspended — masing-masing ada fix.
- Disconnect: "Disconnect from repository" (situs ini saja) vs "Disconnect GitHub" (seluruh instalasi).
- **Monorepo**: root directory terdeteksi; hanya subdirektori itu yang dibuild; deploy tiap subdir sebagai app terpisah.
- **Branch strategy**: main live; `production`/`release/*` batch; preview branch untuk QA.
- **Vulnerability auto-fix PR** untuk app Git.
- Troubleshooting: install gagal (retry dengan `--legacy-peer-deps`, cek Node version), situs lama (cache), deploy tidak trigger (branch/status), repo privat via URL (tidak didukung), repo kosong.

## Notable quotes

> "This one runs the full Node.js build pipeline (install → build → start). The generic one just copies files into a directory."

## What this changes

- Melengkapi [Hostinger](../entities/hostinger.md).
- Tidak ada kontradiksi.

## Related

- [Hostinger](../entities/hostinger.md)
- [Hostinger — Deployments](hostinger-nodejs-deployments.md)
- [Hostinger — Vulnerability Scanning](hostinger-nodejs-vulnerabilities.md)

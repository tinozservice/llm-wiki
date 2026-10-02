---
title: "Hostinger — Creating a Node.js App"
type: source
created: 2026-10-02
updated: 2026-10-02
sources: []
tags: [hostinger, nodejs, deployment]
---

# Hostinger — Creating a Node.js App

- **Sumber**: Hostinger — dokumentasi Node.js, Creating an App
- **Penulis**: tidak dicantumkan
- **URL**: <https://docs.hostinger.com/node.js/creating-an-app>
- **Tanggal publikasi**: 2026-09-23; klip dibuat 2026-10-02
- **Berkas mentah**: `raw/2026/oktober/02/hostinger Creating a Node.js App.md`

## TL;DR

Panduan langkah demi langkah deploy Node.js di Hostinger dari GitHub, arsip, atau editor kode. Hostinger mendeteksi framework, menyarankan build settings, menjalankan build, lalu menjaga proses tetap hidup. Termasuk setting deploy, lokasi artefak, log, wizard database, pemantauan kerentanan, deploy programatik, dan troubleshooting.

## Key points

- **Syarat paket**: Business Web Hosting atau Cloud Startup/Professional/Enterprise/Enterprise Plus; VPS/dedicated butuh setup CLI manual. Setiap paket punya kuota Web App.
- **GitHub**: install Hostinger GitHub App (satu akun pada satu waktu), pilih repo (bisa public repo URL → dikloning ke akun Anda), deteksi otomatis, deploy; push berikutnya memicu rebuild.
- **Arsip**: `.zip/.tar/.tar.gz/.tgz` (satu arsip per project), hindari `node_modules`/`.git`.
- **Setting**: framework preset, branch, Node version (default 22), build command, package manager (npm/yarn/pnpm), output directory (`dist`, `build`, `out`, `.next`), entry file, env vars.
- **Setelah deploy**: server app di `~/domains/{domain}/hbuilds/current/nodejs`; frontend statis di `public_html`. `.htaccess` dibuat otomatis (jangan diedit); restart via badge **Running**.
- **Database wizard**: Supabase (one-click atau URL+anon key → `SUPABASE_URL`, `SUPABASE_ANON_KEY`), MongoDB Atlas (connection string → `MONGODB_URI`); merge ke env vars + redeploy.
- **Vulnerability monitoring** otomatis per deployment; Git app dapat auto-PR.
- **Deploy programatik**: Generate Upload URL → PUT arsip → Start Node.js build (API).
- **Troubleshooting**: build gagal (AI analysis + Fix and redeploy), tanpa package.json, app tidak merespons (cek Runtime Logs; env/port), 403 setelah redeploy (regenerate .htaccess dengan redeploy).

## Notable quotes

> "Hostinger detects your framework, suggests build settings, runs the build, and keeps the process running."

## What this changes

- Melengkapi [Hostinger](../entities/hostinger.md) dengan alur deployment.
- Tidak ada kontradiksi.

## Related

- [Hostinger](../entities/hostinger.md)
- [Hostinger — Build Settings](hostinger-nodejs-build-settings.md)
- [Hostinger — GitHub](hostinger-nodejs-github.md)

---
title: "Puter docs — Deployments"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, deployment, hosting]
---

# Puter docs — Deployments

- **Sumber**: Puter.js documentation — halaman *Deployments*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://docs.puter.com/deployments/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter docs. Deployments.md`

## TL;DR

Panduan menayangkan aplikasi yang memakai Puter.js: deploy ke hosting mana pun (Vercel, Cloudflare Pages, Netlify, GitHub Pages, …) — syaratnya hanya **disajikan lewat web server** — atau host langsung di Puter dengan subdomain `*.puter.site` gratis (UI puter.com, CLI, atau GitHub Actions).

## Key points

- **Deploy anywhere**: app tetap "berbicara" ke layanan Puter dari browser di mana pun di-host; tanpa konfigurasi tambahan.
- **Wajib server**: membuka file HTML langsung dari disk tidak bekerja (origin — lihat [Supported Platforms](puter-docs-supported-platforms.md)).
- **Publish dari puter.com** (4 langkah): buat folder di desktop → upload file (`index.html` dst.) → klik kanan **Publish as Website** → pilih subdomain → live di `https://<subdomain>.puter.site`.
- **CLI**: `npm install -g @heyputer/cli` lalu `puter site deploy [dir] [subdomain]` (beta 0.x).
- **GitHub Actions**: [Puter Subdomain Deploy Action](https://github.com/HeyPuter/puter-subdomain-deploy-action) (`HeyPuter/puter-subdomain-deploy-action@v1.0.6`) — workflow pada push ke `main`, parameter `subdomain`, `puter_path`, `source_path`, `puter_token: ${{ secrets.PUTER_TOKEN }}`; build step dijalankan sebelum deploy.
- **Konfigurasi situs**: file `.puter_site_config` untuk 404 kustom / fallback SPA (lihat [Site Configuration](puter-docs-site-configuration.md)).

## Notable quotes

> "Puter.js is a regular JavaScript library, so your app deploys like any other website."

## What this changes

- Melengkapi [Puter](../entities/puter.md): jalur deploy situs (UI/CLI/Actions) + syarat origin; bersinggungan dengan domain hosting web (bandingkan konsep [Hosting Web](../concepts/web-hosting.md)).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — Hosting](puter-docs-hosting.md)
- [Puter docs — Site Configuration](puter-docs-site-configuration.md)
- [Puter docs — CLI](puter-docs-cli.md)

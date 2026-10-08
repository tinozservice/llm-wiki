---
title: Hostinger
type: entity
created: 2026-10-02
updated: 2026-10-08
sources: [hostinger-nodejs-overview, hostinger-nodejs-product, hostinger-nodejs-creating-app, hostinger-nodejs-build-settings, hostinger-nodejs-env-vars, hostinger-nodejs-file-structure, hostinger-nodejs-deployments, hostinger-nodejs-github, hostinger-nodejs-runtime-logs, hostinger-nodejs-frameworks, hostinger-nodejs-vulnerabilities, hostinger-cloud-hosting, hostinger-vps, hostinger-web-hosting, hostinger-price-list]
tags: [hostinger, hosting, nodejs, vps]
---

# Hostinger

**Hostinger** adalah penyedia hosting global (klaim 3 juta+ developer; 5+ juta pengguna) dengan rangkaian produk shared hosting, cloud hosting, VPS KVM, dan **managed Node.js hosting** (Web Apps), dikelola lewat panel **hPanel**. Dua fitur AI menonjol: **Hostinger Agent** (AI agent hosting/WordPress) dan **Hostinger Connector** ([MCP](../concepts/mcp.md) untuk VS Code, Cursor, Claude Code) ([produk Node.js](../sources/hostinger-nodejs-product.md)).

## Produk & harga (IDR, promo)

| Produk | Paket | Promo | Perpanjangan |
| --- | --- | --- | --- |
| Shared (12 bln) | Single / Premium / Unlimited / Cloud Startup | Rp27.900 / 39.900 / 59.900 / 155.900 per bln | 54.900 / 84.900 / 121.900 / 310.900 |
| Shared (48 bln) | Single / Premium / Unlimited / Cloud Startup | Rp12.900 / 24.900 / 38.900 / 116.900 per bln | sama seperti di atas |
| Node.js | Unlimited / Cloud Startup | Rp38.900 / 116.900 per bln | 121.900 / 310.900 |
| VPS KVM | KVM 1 / 2 / 4 / 8 | Rp116.900 / 155.900 / 213.900 / 426.900 per bln | 193.900 / 232.900 / 465.900 / 853.900 |

Cloud hosting: klaim 4× lebih cepat & resource 20×; Cloud Professional Rp174.900 dan Enterprise Rp368.900 (48 bln). VPS: full root, AMD EPYC, NVMe, Hostinger Agent, API + MCP server; deploy 1 klik (Django, Nextcloud, Deepseek Harness, app Docker/AI agent).

## Node.js hosting

- Managed Node.js (Web App): deploy via **GitHub** (auto-deploy per push), **arsip**, atau **Connector**; Node 18/20/22 (default)/24; auto-detect framework; proses on-demand (stop saat idle, start saat request) dan auto-restart.
- Framework: Next.js, Nuxt, Express, NestJS, Fastify, Hono, Nitro, React Router, Astro, SvelteKit, Gatsby, + frontend statis.
- Konfigurasi: root directory (monorepo), build script, output directory, entry file, package manager; batas build 15 menit, satu deployment sekaligus (antre 20) ([build settings](../sources/hostinger-nodejs-build-settings.md)); **env vars** untuk build+runtime (import `.env`, batas 1.000 variabel, save = redeploy) ([env vars](../sources/hostinger-nodejs-env-vars.md)).
- File: `hbuilds/` dikelola otomatis; live di `hbuilds/current/nodejs` atau `public_html`; jangan edit manual.
- Log: build (Deployments, 10 terakhir) + **Runtime Logs** (stdout/stderr, buffer 5.000 baris, live mode 5 detik) ([deployments](../sources/hostinger-nodejs-deployments.md), [runtime logs](../sources/hostinger-nodejs-runtime-logs.md)).
- Keamanan: **vulnerability scanning** npm per deploy + berkala; **auto-fix PR** untuk app Git; WAF + DDoS + malware detector.
- Database: wizard Supabase/MongoDB Atlas (set env otomatis); Managed MySQL.

## Open questions

- Harga USD/global dan promosi lain tidak tercakup (klip ID).
- Detail resource lengkap per paket Shared ada di artikel support terpisah (belum di-ingest).
- Kuota Web App paket Unlimited tidak disebut di klip.

## Related

- [Hostinger — Node.js Hosting Overview (sumber)](../sources/hostinger-nodejs-overview.md)
- [Hostinger — Daftar Harga & Paket (sumber)](../sources/hostinger-price-list.md)
- [Hostinger — VPS Hosting (sumber)](../sources/hostinger-vps.md)
- [Rumahweb](rumahweb.md) · [DomaiNesia](domainesia.md) · [Exabytes](exabytes.md) — provider sebagai pembanding.
- [Overview](../overview.md)

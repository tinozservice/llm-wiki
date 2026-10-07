---
title: "Puter docs — CLI"
type: source
created: 2026-10-07
updated: 2026-10-07
sources: []
tags: [puter, cli, deployment, tooling]
---

# Puter docs — CLI

- **Sumber**: Puter.js documentation — halaman *CLI*
- **Penulis**: Puter Technologies Inc.
- **URL**: <https://docs.puter.com/cli/>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-07
- **Berkas mentah**: `raw/2026/oktober/07/puter docs. CLI.md`

## TL;DR

**Puter CLI** (`@heyputer/cli`, beta 0.x, Node 18+) mengelola resource Puter dari terminal: deploy situs statis ke `<subdomain>.puter.site`, worker ke `<name>.puter.work`, kelola file cloud (`puter:` paths), app, dan shell interaktif ke key-value store.

## Key points

- **Instalasi & auth**: `npm install -g @heyputer/cli`; `puter login` (browser flow); di server tanpa browser: `echo "$TOKEN" | puter login --with-token`; untuk CI: env `PUTER_AUTH_TOKEN` (skip login). `puter whoami` / `logout`.
- **Sites**: `puter site deploy ./dist my-app` → `<subdomain>.puter.site`; deploy **versioned** (tiap deploy punya folder sendiri, versi lama tersimpan); `site list/get/delete`. Subdomain: huruf kecil/angka/hyphen.
- **Workers**: `puter worker deploy ./api.js my-api` → `<name>.puter.work`; deploy ulang = replace kode **in place**; `worker list/get/delete`.
- **Apps**: `puter app list` / `app get <name>` (read-only).
- **Files**: `puter fs ls/cat/cp/mv/rm/mkdir/stat`; path remote ber-prefix `puter:` (absolut dari home); `-` = stdin/stdout; arah transfer ditentukan dari pasangan path (local↔remote = upload/download; remote↔remote = copy di server tanpa lewat mesin lokal); `rm -r` butuh konfirmasi/`--yes`; **deleted files tidak masuk Trash**; transfer folder 8 file paralel (`--concurrency` 1–32), retry file gagal, `-n` skip existing.
- **App storage**: flag `--app <id>` (nama app, uid, nama worker, URL worker) mengarahkan `puter:/` ke storage app tertentu — path tidak bisa keluar (`..` error); setiap command tulis/hapus mencetak path hasil resolusi.
- **KV**: `puter kv connect <app|worker|uid|url>` — REPL JavaScript penuh terhadap store milik app/worker (semua method `puter.kv` tersedia; `_` = hasil terakhir). Worker milik app tidak punya store sendiri — connect ke app pemiliknya.
- **Perilaku non-interaktif**: di CI/pipe tidak pernah prompt — argumen wajib; status/progress ke stderr, data ke stdout (aman di-pipe); `CI` env juga memaksa non-interaktif.

## Notable quotes

> "Deploys are versioned: each deploy uploads into its own folder, so previous versions are preserved."

> "Deleted files do not go to Trash — `puter fs rm` removes them."

## What this changes

- Menambah dimensi baru [Puter](../entities/puter.md): tooling terminal + otomasi (CI), pelengkap jalur deploy (puter.com UI / CLI / GitHub Actions — lihat [Deployments](puter-docs-deployments.md)).
- Tidak ada kontradiksi.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — Deployments](puter-docs-deployments.md)
- [Puter docs — Hosting](puter-docs-hosting.md)
- [Puter docs — Serverless Workers](puter-docs-serverless-workers.md)
- [Puter docs — Key-Value Store](puter-docs-key-value-store.md)

---
title: Puter
type: entity
created: 2026-10-07
updated: 2026-10-07
sources: [puter-landing, puter-backend-for-ai-apps, puter-docs-getting-started, puter-docs-puterjs, puter-tutorial-getting-started, puter-docs-ai, puter-ai-gateway, puter-docs-user-pays, puter-puterjs-pricing, puter-docs-rate-limits, puter-docs-apps, puter-docs-auth, puter-docs-cli, puter-docs-cloud-storage, puter-docs-deployments, puter-docs-email, puter-docs-events, puter-docs-framework-integrations, puter-docs-hosting, puter-docs-key-value-store, puter-docs-mcp-server, puter-docs-networking, puter-docs-peer, puter-docs-security, puter-docs-serverless-workers, puter-docs-site-configuration, puter-docs-supported-platforms]
tags: [puter, platform, backend, ai-gateway, user-pays]
---

# Puter

**Puter** (Puter Technologies Inc., puter.com) adalah platform open-source bergaya "Internet Computer": **cloud OS di browser** dengan puluhan aplikasi konsumen berlangganan, sekaligus **platform developer** lewat SDK **Puter.js** — backend keyless & serverless (auth, storage, database, AI, hosting) yang diposisikan sebagai backend untuk aplikasi hasil AI coding ([landing](../sources/puter-landing.md), [backend](../sources/puter-backend-for-ai-apps.md)). Pembedanya: model **User-Pays** — developer $0; tiap user menanggung pemakaiannya sendiri ([docs User-Pays](../sources/puter-docs-user-pays.md)).

> [!info] Status ingest
> Halaman ini disusun dari **Batch A–B** (27 dari 50 klip Puter). Batch C (13 halaman API developer) dan D (10 tutorial) menyusul.

## Dua sisi platform

| Sisi | Penawaran |
| --- | --- |
| **Konsumen** (puter.com) | Puluhan app di browser tanpa instalasi — office, kolaborasi, bisnis, game; paket **Free $0 / Basic $10 / Plus $25 / Pro $100** per bulan; paket berbayar membuka semua app ([landing](../sources/puter-landing.md)) |
| **Developer** (developer.puter.com) | **Puter.js**: auth, cloud storage, database/KV, **AI Gateway 500+ model**, hosting, networking — tanpa API key, tanpa server ([backend](../sources/puter-backend-for-ai-apps.md)) |

## Puter.js

- Satu `<script src="https://js.puter.com/v2/">` atau npm `@heyputer/puter.js`; bisa juga di Node.js dengan auth token ([getting started](../sources/puter-docs-getting-started.md)).
- Aplikasi diidentifikasi lewat **origin** — halaman harus disajikan lewat server, bukan `file://` ([getting started](../sources/puter-docs-getting-started.md)).
- API kecil & konsisten; referensi lengkap tersedia sebagai `llms.txt` agar agen AI bisa membacanya sekali request ([backend](../sources/puter-backend-for-ai-apps.md)).
- Ditujukan untuk semua AI coding tool: Claude Code, Codex, **OpenCode**, Cursor, Copilot, v0, Bolt, Lovable, Replit ([docs](../sources/puter-docs-puterjs.md), [tutorial](../sources/puter-tutorial-getting-started.md)); framework: React, Next.js, Vue, Angular, Svelte, Astro ([backend](../sources/puter-backend-for-ai-apps.md)).
- Klaim adopsi & efisiensi (belum diverifikasi): 80K+ developer, 130K+ app, 400K+ instalasi; "up to 90% fewer AI tokens", 12× kode, 97% mistakes ([backend](../sources/puter-backend-for-ai-apps.md)).

## Kapabilitas AI

- Namespace `puter.ai.*`: `chat`, `listModels`, `listModelProviders`, `txt2img`, `img2txt` (OCR), `txt2speech` (+ `listEngines`/`listVoices`), `speech2speech` (voice changer), `txt2vid` (Wan, Seedance, Veo), `speech2txt` ([docs AI](../sources/puter-docs-ai.md)).
- **500+ model** lewat satu API — GPT, Claude, Gemini, Grok, DeepSeek, Nano Banana, GPT Image, FLUX, dll.; tanpa API key; test mode untuk coba tanpa kredit ([AI Gateway](../sources/puter-ai-gateway.md)).
- Endpoint **kompatibel OpenAI/Anthropic** tersedia (`/puterai/openai/v1/*`, `/puterai/anthropic/v1/messages`) tetapi **butuh plan berbayar**; model yang sama tetap bisa diakses akun free lewat `puter.ai.*` ([rate limits](../sources/puter-docs-rate-limits.md)).

## Layanan backend & tooling

- **Cloud storage** — file system per user: `write/read/mkdir/readdir/rename/copy/move/stat/delete/upload`, plus sharing (`share`, `getReadURL`, …); upload bisa membuat thumbnail gambar ([docs FS](../sources/puter-docs-cloud-storage.md)).
- **Key-value store** — database default app: `set/get/incr/decr/add/remove/update/del/expire/expireAt/list/flush`; *key layout is the access boundary* — share handle Events dipaku ke prefix ([docs KV](../sources/puter-docs-key-value-store.md)).
- **Events (beta)** — subscribe perubahan file/folder/KV/notifikasi; session (`onLocal`) atau persisten (`onPersistent`) dengan handler; delivery ditagih ke pemegang subscription ([docs Events](../sources/puter-docs-events.md)).
- **Serverless Workers** — JavaScript server-side dengan router HTTP dan `me.puter.*`; satu-satunya pola resmi *data bersama* antar user (berjalan atas resource pemilik); deploy ke `<name>.puter.work` via UI/CLI/GitHub Actions ([docs Workers](../sources/puter-docs-serverless-workers.md)).
- **Hosting & deployments** — situs statis gratis di `*.puter.site`: publish dari puter.com, `puter site deploy` (versioned), GitHub Action, atau API `puter.hosting.*`; konfigurasi `.puter_site_config` untuk 404 kustom / fallback SPA ([deployments](../sources/puter-docs-deployments.md), [hosting](../sources/puter-docs-hosting.md), [site config](../sources/puter-docs-site-configuration.md)).
- **Apps, Auth & Email** — registry app (`puter.apps.*`); auth API (`signIn`, `getUser`, `getMonthlyUsage`, …); email `{username}@puter.email` + `sendTransactional()` (**butuh paid plan**) ([apps](../sources/puter-docs-apps.md), [auth](../sources/puter-docs-auth.md), [email](../sources/puter-docs-email.md)).
- **Networking & Peer** — `puter.net.fetch/Socket/TLSSocket` **menembus CORS** langsung dari frontend; WebRTC data channel dengan signaling & TURN relay bawaan, guest tanpa akun via grant ([networking](../sources/puter-docs-networking.md), [peer](../sources/puter-docs-peer.md)).
- **MCP Server** — `mcp.puter.com` (hosted, tanpa install): agen AI (Claude Code, Codex, Cursor, **OpenCode**) mengoperasikan akun Puter *as the user* — tool filesystem/hosting/workers/KV/apps/docs ([docs MCP](../sources/puter-docs-mcp-server.md)).
- **CLI** (`@heyputer/cli`, beta 0.x) — sites, workers, apps, fs (`puter:` paths + `--app` untuk storage app), `kv connect` REPL; auth via `puter login` atau `PUTER_AUTH_TOKEN` untuk CI ([docs CLI](../sources/puter-docs-cli.md)).
- **Keamanan** — app **tersandbox default**: direktori `~/AppData/<app-id>/` + KV miliknya sendiri; layanan default: AI + hosting ([security](../sources/puter-docs-security.md)).
- **Platform** — website (ESM/CJS/CDN), Puter Apps (auth otomatis + desktop), Node.js (token), Workers; `file://` dan iframe tanpa `allow-same-origin` ditolak (`unsupported_origin`) ([supported platforms](../sources/puter-docs-supported-platforms.md)).

## Model bisnis: User-Pays

- Developer **$0** untuk infrastruktur di jumlah user berapa pun; setiap akun Puter membawa storage, database, dan AI allowance sendiri; kelebihan dibayar user langsung ke Puter ([pricing](../sources/puter-puterjs-pricing.md)).
- Grant/resource level-app (mis. serverless worker dan datanya) boleh berjalan di akun developer; pemakaian per-user (file, KV, AI) di akun user ([pricing](../sources/puter-puterjs-pricing.md)).
- Rincian konsep: [User-Pays Model](../concepts/user-pays-model.md).

## Batas & kuota (ringkas)

- Tiga pemeriksaan: **usage credit** (`402`), **rate limit** (`429`), **storage quota** (`413`); dihitung per akun user, default scope *per user, per app* ([rate limits](../sources/puter-docs-rate-limits.md)).
- Angka kunci free: AI 30 request/10 detik (concurrent 3); storage 100 MiB; KV 400 op/10 detik ([rate limits](../sources/puter-docs-rate-limits.md)).
- Egress adalah biaya yang paling sering diremehkan developer; SDK otomatis menampilkan dialog upgrade saat limit biaya/plan/storage tercapai ([rate limits](../sources/puter-docs-rate-limits.md)).

## Open questions

- **Nominal dolar free allowance bulanan** per akun user tidak dipublikasikan di klip — hanya "shown in the dashboard".
- Harga model di AI Gateway Puter (per model) belum ada di klip ini — `GET /metering/allCosts` disebut ada, belum dikutip.
- Klaim adopsi/kualitas (80K+ developer, 97% fewer mistakes; "130K+ apps powered" vs "60.000+ aplikasi live") perlu verifikasi independen — metriknya belum jelas.
- Siapa saja pihak di balik provider model yang dilayani gateway (belum terinci).

## Related

- [User-Pays Model](../concepts/user-pays-model.md)
- [Layanan Akses Model](../concepts/model-access-services.md)
- [OpenCode](opencode.md) — disebut sebagai AI coding tool yang didukung Puter.js.
- [Overview](../overview.md)

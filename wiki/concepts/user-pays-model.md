---
title: User-Pays Model
type: concept
created: 2026-10-07
updated: 2026-10-07
sources: [puter-docs-user-pays, puter-puterjs-pricing, puter-backend-for-ai-apps, puter-docs-rate-limits]
tags: [user-pays, billing, pricing, platform]
---

# User-Pays Model

**User-Pays Model** adalah skema penagihan di mana **pengguna akhir aplikasi menanggung biaya resource miliknya sendiri** (AI, storage, database), bukan developer. Diplopori oleh [Puter](../entities/puter.md): "whether one user or a million, apps built on Puter cost the developer nothing to run" ([backend](../sources/puter-backend-for-ai-apps.md), [docs User-Pays](../sources/puter-docs-user-pays.md)).

## Mekanika

1. User **sign in** ke aplikasi dengan akun platform (Puter).
2. Semua panggilan resource — AI, storage, KV, dll. — di-meter ke **akun user itu**, bukan ke developer.
3. Tiap akun punya **free allowance bulanan**; habis → user diprompt upgrade, atau membayar langsung ke Puter.
4. Satu akun user berlaku untuk **semua aplikasi** di platform; billing tidak pernah melewati developer.

## User-Pays vs model tradisional

| Aspek | Tradisional | User-Pays (Puter) |
| --- | --- | --- |
| Server & database | developer siapkan & bayar | tidak perlu |
| API key | developer kelola & amankan | tidak ada sama sekali |
| Billing | developer menanggung semua usage | tiap user membayar usage sendiri |
| Scaling | biaya naik seiring jumlah user | $0 di skala apa pun |
| Proteksi abuse | rate limit, CAPTCHA, kuota | "abusers pay for themselves" |

(Sumber: [docs User-Pays](../sources/puter-docs-user-pays.md).)

## Implikasi

- **Keamanan**: tidak ada API key yang bisa bocor/dicuri; setiap request terautentikasi & ter-scope ke user ([pricing](../sources/puter-puterjs-pricing.md)).
- **Ekonomi developer**: biaya bukan variabel terhadap jumlah user — menarik untuk app yang digenerate AI/vibe coding tanpa takut tagihan viral ([docs User-Pays](../sources/puter-docs-user-pays.md)).
- **Operasional**: seluruh limit (credit, rate, storage) dihitung per akun user — satu user berat tidak menghabiskan kuota untuk yang lain ([rate limits](../sources/puter-docs-rate-limits.md)).
- **Campuran**: resource per-user di akun user, tetapi resource level-app (mis. serverless worker) boleh berjalan di akun developer ([pricing](../sources/puter-puterjs-pricing.md)).
- **Perbandingan dengan model wiki lain**: berbeda dari langganan (Token Harbor, Go), per token (Zen, Novita), kredit tugas (Manus), maupun BYOK — biaya berpindah ke *end-user aplikasi*, bukan pemilik key ([Layanan Akses Model](model-access-services.md)).

## Open questions

- Berapa **nilai dolar** free allowance bulanan per akun user? (tidak dipublikasikan di klip; hanya "shown in the dashboard").
- Apakah model ini menguntungkan untuk aplikasi non-konsumen (mis. internal/perusahaan) di mana user juga butuh akun platform? Belum ada sumber.
- Apakah ada platform lain dengan skema serupa? Baru Puter yang terdokumentasi di wiki.

## Related

- [Puter](../entities/puter.md)
- [Puter docs — User-Pays Model](../sources/puter-docs-user-pays.md)
- [Puter.js Pricing — The User-Pays Model](../sources/puter-puterjs-pricing.md)
- [Puter docs — Rate Limits and Quotas](../sources/puter-docs-rate-limits.md)
- [Layanan Akses Model](model-access-services.md)

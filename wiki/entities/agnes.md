---
title: Agnes
type: entity
created: 2026-10-01
updated: 2026-10-01
sources: [agnes-token-plan, agnes-model-pricing, agnes-token-plan-faq]
tags: [agnes, agentic-app, subscription, model-access]
---

# Agnes

**Agnes AI** adalah aplikasi agentic untuk konsumen sekaligus platform developer (API). Untuk individu, Agnes menjual **Token Plan** berbasis langganan dengan kuota request bersama untuk semua modalitas. Model dasarnya saat ini **Agnes-3.0-Flash** ([sumber Token Plan](../sources/agnes-token-plan.md)).

## Produk

- **Aplikasi agentic** — "think, create and co-vibe together" (deskripsi sumber).
- **Token Plan** — langganan untuk developer individu, coding, dan kerja kantor; kuota dibagi ke teks, gambar, dan video.
- **API** — harga per model (teks/gambar/video) di [sumber harga](../sources/agnes-model-pricing.md).

## Token Plan

| Item | Starter | Plus | Pro |
| --- | --- | --- | --- |
| Harga bulanan (tabel) | $4 | $10 | $50 |
| Kartu promo | $2 (dari $4) | $5 (dari $10) | $25 (dari $50) |
| Tahunan | $40 | $100 | $500 |
| Request teks / 5 jam | 1.500 | 7.500 | 30.000 |
| Request teks / minggu | 15.000 | 75.000 | 300.000 |
| Gambar / hari | 4.000 | 4.000 | 4.000 |
| Video / hari | 500 detik | 500 detik | 500 detik |

Semua plan memakai Agnes-3.0-Flash (~100 TPS; ~150 TPS off-peak), kompatibel coding tools mainstream, mendukung image understanding, image generation, dan video generation.

## Kuota & RPM

- Kuota teks adalah **jendela 5 jam bergulir** plus batas mingguan; saat habis, request ditolak sampai jendela bergeser.
- RPM teks **efektif**: default 10, enterprise 20, Token Plan 1.000.
- RPM gambar efektif (1K/2K/3K/4K): default 10/5/1/1; enterprise 40/20/1/1; Token Plan 100/80/1/1.
- RPM video efektif: default 1, enterprise 2, Token Plan 5.
- **Pool limit terpisah per tipe API key** (free / enterprise / token plan); menambah key tidak menambah kuota.

## Harga API (current price)

- **Teks**: `agnes-3.0-flash` dan `agnes-2.5-flash` **gratis** (list $0.05/$0.15 per M; cached $0.005). `agnes-2.5-pro` $0.45 input / $0.90 output per M.
- **Gambar**: `agnes-image-2.0/2.1/2.5-flash` **gratis** (list $10–$24 per 1.000 gambar per tier 1K–4K).
- **Video**: `agnes-video-2.5` $0.025–$0.055/detik + $0.005/gambar input ke-6+; `agnes-video-2.5-flash` **gratis terbatas**.

## Open questions

- Angka harga di kartu langganan ($2/$5/$25) berbeda dari tabel ($4/$10/$50) — promo vs standar? Tidak dijelaskan.
- Apa itu Agnes-3.0-Flash (ukuran, arsitektur)? Dokumentasi hanya menyebut sebagai model inferensi dasar.
- Berapa lama promo gratis model flash dan media berlangsung?

## Related

- [Agnes — Token Plan (sumber)](../sources/agnes-token-plan.md)
- [Agnes — Model Pricing (sumber)](../sources/agnes-model-pricing.md)
- [Agnes — Token Plan FAQ (sumber)](../sources/agnes-token-plan-faq.md)
- [Layanan Akses Model](../concepts/model-access-services.md)
- [Overview](../overview.md)

---
title: OpenCode
type: entity
created: 2026-10-01
updated: 2026-10-01
sources: [opencode-go, opencode-zen-price-list]
tags: [opencode, coding-agent, subscription, model-access]
---

# OpenCode

**OpenCode** adalah *open source coding agent*. Sumber pertama yang di-ingest tentang OpenCode adalah halaman produk **Go** — langganan bulanan untuk akses model yang dipakai dalam *agentic coding* (lihat [halaman sumber](../sources/opencode-go.md)).

## Produk

- **OpenCode Go** — $10/bulan. Disebut "low cost subscription" dengan "generous limits and reliable access to the most capable open-source models".
- **Go Plus** — $40/bulan. Mencakup semua isi Go, dengan limit lebih tinggi, interupsi lebih sedikit, dan ditujukan untuk proyek yang lebih besar.
- **Model gratis waktu terbatas** — Space Bunny Free (model anonim baru) dan LongCat 2.5 Preview Free; keduanya tanpa batas request/5 jam dan tanpa batas pemakaian bulanan.
- **Fleksibilitas** — bisa dipakai dengan OpenCode atau agen lain, *top up* kredit bila perlu, batal kapan saja.
- **Kredit bersama** — saldo kredit berasal dari *top up* dan menyatu antara Go dan Zen (per user, 2026-10-01).
- **OpenCode Zen** — katalog model dengan harga per token di console OpenCode; kemungkinan inilah "Zen" yang disebut di FAQ Go (lihat [OpenCode Zen](opencode-zen.md), [sumber](../sources/opencode-zen-price-list.md)).

## Batas pemakaian per model

Estimasi request per 5 jam dan batas pemakaian bulanan tiap model untuk langganan Go dan Go Plus (lihat [sumber](../sources/opencode-go.md)). Nilai Go dan Go Plus dipisahkan dari sel tabel hasil klip yang tergabung, dengan asumsi urutan (Go, Go Plus); definisi persis "monthly usage" tidak dijelaskan halaman.

| Model | Request/5 jam (Go) | Request/5 jam (Go Plus) | Batas bulanan (Go) | Batas bulanan (Go Plus) | Catatan |
| --- | --- | --- | --- | --- | --- |
| Kimi K3 | 110 | 440 | $15 | $60 | |
| Qwen3.8 Max | 160 | 640 | $15 | $60 | |
| Grok 4.7 | 169 | 676 | $15 | $60 | |
| Grok 4.6 | 169 | 676 | $15 | $60 | |
| GLM-5.3 | 220 | 1,760 | $15 | $120 | |
| GLM-5.2 | 880 | 2,640 | $60 | $180 | |
| DeepSeek V4 Pro | 1,050 | 4,200 | $15 | $60 | |
| Kimi K2.7 Code | 1,350 | 4,050 | $60 | $180 | |
| Hy4 preview | 1,350 | 5,400 | $30 | $120 | |
| GPT 5.6 Luna | 2,050 | 8,200 | $15 | $60 | |
| MiniMax M3 | 3,200 | 9,600 | $60 | $180 | |
| MiMo-V2.6-Pro | 3,250 | 13,000 | $15 | $60 | New |
| MiMo-V2.5-Pro | 3,250 | 13,000 | $15 | $60 | |
| MiniMax M2.7 | 3,400 | 13,600 | $60 | $240 | |
| GPT 6 Luna | 4,230 | 16,920 | $15 | $60 | New |
| Qwen3.7 Plus | 4,300 | 12,900 | $60 | $180 | |
| Hy3 | 4,300 | 17,200 | $60 | $240 | |
| Qwen3.8 Flash | 5,400 | 16,200 | $30 | $90 | |
| GLM-5.3-Flash | 6,320 | 18,960 | $60 | $180 | |
| DeepSeek V4 Flash Vision Exp | 6,500 | 26,000 | $15 | $60 | |
| LongCat-2.0 | 11,400 | 45,600 | $60 | $240 | |
| DeepSeek V4 Flash | 13,000 | 52,000 | $30 | $120 | |
| DeepSeek V4.1 Flash | 26,000 | 52,000 | $60 | $120 | New |
| MiMo-V2.6-Flash | 30,100 | 60,200 | $60 | $120 | New |
| MiMo-V2.5 | 30,100 | 60,200 | $60 | $120 | |
| Muse Spark 1.3 Contributor | 45,300 | 90,600 | $60 | $120 | Limited Regions |
| Muse Spark 1.2 Contributor | 45,300 | 90,600 | $60 | $120 | Limited Regions |
| Space Bunny Free | ∞ | ∞ | ∞ | ∞ | New, Limited Time |
| LongCat 2.5 Preview Free | ∞ | ∞ | ∞ | ∞ | New, Limited Time |

## Mekanisme

- Batas dihitung **per model**, bukan satu pool tunggal.
- Setelah batas tercapai, pemakaian dapat dilanjutkan dengan **top up kredit** ("Top up credit if needed"). Per user (2026-10-01): saat batas Go habis, pemakaian otomatis dialihkan ke **pay-as-you-go** yang menarik dari saldo kredit bersama Go–Zen.
- Tidak ada daftar harga per-token di halaman Go ini; harga per 1M token kini terdokumentasi di [OpenCode Zen](opencode-zen.md).

## Open questions

- Apakah tarif pay-as-you-go di luar batas Go memakai harga [OpenCode Zen](opencode-zen.md)? Belum dikonfirmasi.
- Apakah "batas bulanan" adalah batas nilai pemakaian (dolar) per model, dan bagaimana kaitannya dengan harga langganan $10/$40?
- Jendela batas Go: tabel sumber memakai "request/5 jam" dan batas bulanan; pengguna menyebut batas harian — detailnya perlu dikonfirmasi.
- Apakah model gratis (Space Bunny Free, LongCat 2.5 Preview Free) berganti mengikuti lineup berotasi?
- Siapa lab di balik model seperti Space Bunny (disebut "anonymous"), Hy3/Hy4 preview, LongCat, dan MiMo? Muse Spark hanya ditautkan ke kebijakan wilayah Meta.
- Untuk model yang sama (mis. Kimi K3, GPT-6 Luna), kapan lebih murah memakai Go vs bayar per token di [OpenCode Zen](opencode-zen.md)?

## Related

- [Low cost coding models for everyone](../sources/opencode-go.md) — sumber harga dan batas.
- [Token Harbor](token-harbor.md) — layanan langganan lain dengan lineup tumpang tindih.
- [OpenCode Zen](opencode-zen.md) — katalog model OpenCode dengan harga per token.
- [Layanan Akses Model](../concepts/model-access-services.md)
- [Overview](../overview.md)

---
title: "Agnes — Model Pricing"
type: source
created: 2026-10-01
updated: 2026-10-01
sources: []
tags: [agnes, pricing, models]
---

# Agnes — Model Pricing

- **Sumber**: Agnes AI — dokumentasi harga model (situs internasional)
- **Penulis**: tidak dicantumkan
- **URL**: <https://www.agnes-ai.com/en/docs/pricing>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-01
- **Berkas mentah**: `raw/2026/oktober/01/agnes Model Pricing.md`

## TL;DR

Harga API Agnes AI (USD) untuk model teks, gambar, dan video. Dua model flash teks — `agnes-2.5-flash` dan `agnes-3.0-flash` — **sedang gratis** (harga list $0.05 input / $0.15 output per M). `agnes-2.5-pro` berbayar di $0.45 input / $0.90 output per M. Semua model gambar flash (`agnes-image-2.0/2.1/2.5-flash`) **gratis saat ini** (list $10–$24 per 1.000 gambar sesuai resolusi). Video: `agnes-video-2.5` berbayar $0.025–$0.055/detik; `agnes-video-2.5-flash` gratis terbatas.

## Key points

- Cached input = 10% harga input reguler; hanya berlaku untuk cache hit yang dikonfirmasi layanan.
- Promo "current price" bisa berubah sewaktu-waktu; tagihan akun adalah sumber kebenaran.

### Model teks (per 1 juta token)

| Model | Item | List price | Current price |
| --- | --- | --- | --- |
| `agnes-2.5-flash` | Cached / Input / Output | $0.005 / $0.05 / $0.15 | **$0 / $0 / $0** |
| `agnes-2.5-pro` | Cached / Input / Output | $0.045 / $0.45 / $0.90 | $0.045 / $0.45 / $0.90 |
| `agnes-3.0-flash` | Cached / Input / Output | $0.005 / $0.05 / $0.15 | **$0 / $0 / $0** |

### Model gambar (list price, semua sedang $0)

| Model | 1K | 2K | 3K | 4K | Input ref. ke-4+ |
| --- | --- | --- | --- | --- | --- |
| `agnes-image-2.0-flash` | $10/1.000 | $18/1.000 | $21/1.000 | $24/1.000 | $0.003/gambar |
| `agnes-image-2.1-flash` | $10/1.000 | $18/1.000 | $21/1.000 | $24/1.000 | $0.003/gambar |
| `agnes-image-2.5-flash` | $10/1.000 | $18/1.000 | $21/1.000 | $24/1.000 | $0.003/gambar |

Rumus list price: `output images × harga resolusi + max(0, input images − 3) × $0.003`.

### Model video

| Model | Item | Harga |
| --- | --- | --- |
| `agnes-video-2.5` | 720P / 1080P & 1K / 2K | $0.025 / $0.040 / $0.055 per detik |
| `agnes-video-2.5` | Input image ke-6+ | $0.005 / gambar |
| `agnes-video-2.5-flash` | 720P | **$0** (gratis terbatas; list $0.025/detik) |

Durasi input video ikut ditagih pada tarif output: `total = (output + input detik) × tarif resolusi + gambar berlebih`.

## Notable quotes

> "Cached input, input tokens, and output tokens are currently free for `agnes-2.5-flash` and `agnes-3.0-flash`."

> "The cached-input price is 10% of the regular input-token price."

## What this changes

- Melengkapi entitas [Agnes](../entities/agnes.md) dengan harga API per model.
- Tidak ada kontradiksi; model dasar Token Plan (`agnes-3.0-flash`) tercatat gratis di API saat ini.

## Related

- [Agnes](../entities/agnes.md)
- [Agnes — Token Plan](agnes-token-plan.md)
- [Agnes — Token Plan FAQ](agnes-token-plan-faq.md)

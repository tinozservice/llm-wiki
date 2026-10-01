---
title: Perhitungan Limit Agent Pass & Beban Konteks Besar
type: analysis
created: 2026-10-02
updated: 2026-10-02
sources: [tokenharbor-pricing, tokenharbor-models-value, opencode-zen-price-list, novita-model-libraries]
tags: [token-harbor, agent-pass, pricing, context, analysis]
---

# Perhitungan Limit Agent Pass & Beban Konteks Besar

Menjawab tiga pertanyaan: bagaimana limit [Agent Pass](../entities/token-harbor.md) dihitung,
bagaimana contoh hitungannya untuk **DeepSeek V4.1 Flash**, dan seberapa cepat limit habis di
proyek ber-codebase besar (mis. konteks tumbuh **50k token input per turn**).

> Semua angka dolar di halaman ini adalah **perhitungan turunan** dari tarif katalog
> (klip 2026-10-01), bukan angka yang dipublikasikan Token Harbor. Tarif dasar:
> [Katalog Model Token Harbor](../entities/token-harbor-model-catalog.md).

## 1. Mekanisme limit

- Agent Pass: **$10 included usage/bulan**, diukur sebagai *usage value* pada harga per-token
  publik — "what the same traffic would have cost without a pass", bukan saldo dompet
  ([sumber harga](../sources/tokenharbor-pricing.md)).
- Bulan = **4 jendela × 7 hari**: $2,50 per jendela; sisa **tidak carry-over**.
- Satu allowance dipakai bersama semua model. Boost (GLM 5.3 Flash dan Qwen3.8 Flash s.d.
  4 Okt 2026) **tidak berlaku** untuk DeepSeek V4.1 Flash.
- Free allowance menyatu ke pool yang sama dengan satu progress bar.
- Lewat limit: panggilan **tidak berhenti** — lanjut ditagih dari saldo dengan diskon **5%**.

## 2. Tarif dasar DeepSeek V4.1 Flash

| Komponen | Standar | Off-peak (14:00–00:00 UTC) |
| --- | --- | --- |
| Input | $0.30/M | $0.15/M |
| Output | $1.20/M | $0.60/M |
| Cache hit | *tidak dipublikasikan* | *tidak dipublikasikan* |

Rumus: `biaya = (input ÷ 1.000.000 × tarif input) + (output ÷ 1.000.000 × tarif output)`.

## 3. Contoh perhitungan

### Prompt 1 — 1.000 input + 500 output

| Komponen | Hitungan | Biaya |
| --- | --- | --- |
| Input | 1.000 ÷ 1.000.000 × $0.30 | $0.000300 |
| Output | 500 ÷ 1.000.000 × $1.20 | $0.000600 |
| **Total** | | **$0.000900** |

### Prompt 2 — 3.000 input (1.500 miss + 1.500 hit) + 200 output

Versi tarif terpublikasi — Token Harbor tidak mencantumkan tarif cache, jadi semua input
ditagih tarif input penuh:

| Komponen | Hitungan | Biaya |
| --- | --- | --- |
| Input (3.000) | 3.000 ÷ 1.000.000 × $0.30 | $0.000900 |
| Output | 200 ÷ 1.000.000 × $1.20 | $0.000240 |
| **Total** | | **$0.001140** |

Versi ilustrasi jika cache hit dihargai — memakai cache read **$0.01/M** dari
[OpenCode Zen](../entities/opencode-zen.md) untuk model yang sama (Novita: $0.006/M; pola
10% ala Agnes). **Ini bukan tarif Token Harbor**: hit 1.500 ÷ 1.000.000 × $0.01 = $0.000015
→ prompt 2 = $0.000450 + $0.000015 + $0.000240 = **$0.000705**.

### Kapasitas pasang prompt 1+2

| Skenario | Per pasang | Per $10/bulan | Per jendela $2,50 |
| --- | --- | --- | --- |
| Standar, tanpa cache | $0.002040 | ≈ 4.900 pasang | ≈ 1.225 pasang |
| Cache hit @$0.01/M (asumsi) | $0.001605 | ≈ 6.230 pasang | ≈ 1.560 pasang |
| Off-peak (tanpa cache) | $0.001020 | ≈ 9.800 pasang | ≈ 2.450 pasang |

### Verifikasi silang estimasi resmi

Estimasi Agent Pass untuk V4.1 Flash = "2.5k+" request pada basis 10K input + 1K output
([estimasi](../entities/token-harbor-pass-estimates.md)):
$10 ÷ (10K × $0.30/M + 1K × $1.20/M) = $10 ÷ $0.0042 ≈ **2.381 ≈ 2.5k+** ✓.
Rumus yang sama cocok untuk GPT-6 Luna (6.6k+) dan GLM 5.3 Flash (10k+, boost 2×);
Qwen3.8 Flash (13.2k+) menyimpang dari hasil formula (~10.2k) — angka "+" adalah estimasi
penerbit, bukan rumus resmi.

## 4. Beban konteks besar

Asumsi output 1.000 token/turn; output hanya berpengaruh kecil kecuali disebut lain.

### A. ±50k input per turn, konteks tetap

50k × $0.30/M + 1k × $1.20/M = **$0.0162/turn** → **≈ 617 turn/bulan**, ≈ 154 turn/jendela.

### B. Konteks tumbuh +50k tiap turn (riwayat dikirim ulang)

Turn ke-n membawa `n × 50k` input → biaya turn = `n × $0.015`; total N turn =
`$0.015 × N(N+1) ÷ 2`:

- **$10 habis di ≈ 36 turn/bulan** (total $9,99); **jendela $2,50 habis di ≈ 17–18 turn**.
- Batas konteks 1M token (per [Novita](../entities/novita.md)) tercapai sekitar turn ke-20;
  steady-state 1M input = $0.30/turn (~33 turn tambahan).
- Output 1k/turn hanya menggeser ke ≈ 35 turn; **off-peak** → ≈ 51 turn/bulan (jika berlaku
  untuk pemakaian pass — masih open question).

### C. Jika cache dihargai (kondisional)

Dengan cache read $0.01/M, prefix lama dibaca murah (~$0.0005 per 50k) dan hanya konten baru
dibayar penuh → **≈ 170 turn/bulan**; jendela pertama ≈ 70–75 turn, jendela berikutnya lebih
cepat habis karena konteks makin besar. Bergantung pada tarif cache yang tidak dipublikasikan.

### Naik pass

Karena biaya tumbuh kuadratik terhadap jumlah turn, kapasitas turn naik ±√ dari kenaikan
allowance: Agent $10 → ≈ 36; Office $35 → ≈ 68; Frontier $180 → ≈ 154 turn.

## 5. Kesimpulan

1. Penggerak utama habisnya limit: **konteks yang dikirim ulang dan tumbuh setiap turn**,
   bukan sekadar input besar sekali jalan.
2. Tidak ada batas keras — setelah $10, pemakaian lanjut dari saldo (diskon 5%); dari titik
   itu efektif menjadi pay-per-token.
3. Mitigasi: prompt caching (jika didukung), compaction/reset sesi, manfaatkan off-peak,
   atau layanan per-token seperti [Zen](../entities/opencode-zen.md) untuk beban berat.
4. Tarif cache dan keberlakuan off-peak/boost pada pass masih belum jelas (lihat
   [Token Harbor](../entities/token-harbor.md) → Open questions).

## Open questions

- Apakah tarif cache read berlaku di Token Harbor, dan apakah cache hit ikut memperpanjang
  usage value pass?
- Apakah tarif off-peak berlaku untuk trafik pass, bukan hanya pay-as-you-go?
- Mengapa beberapa angka estimasi resmi (mis. Qwen3.8 Flash 13.2k+) tidak persis mengikuti
  perhitungan tarif katalog?

## Related

- [Token Harbor](../entities/token-harbor.md)
- [Katalog Model Token Harbor](../entities/token-harbor-model-catalog.md)
- [Estimasi Request per Pass](../entities/token-harbor-pass-estimates.md)
- [One API for the world's leading AI models](../sources/tokenharbor-pricing.md)
- [OpenCode Zen](../entities/opencode-zen.md)
- [Layanan Akses Model](../concepts/model-access-services.md)

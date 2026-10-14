---
title: "Perbandingan DeepSeek V4.1 Flash: OpenCode Go vs Token Harbor Office"
type: analysis
created: 2026-10-15
updated: 2026-10-15
sources: [opencode-go, tokenharbor-office-pass, tokenharbor-pricing, tokenharbor-models-value, tokenharbor-models-free, tokenharbor-docs-subscription, opencode-zen-price-list, deepseek-models-pricing]
tags: [deepseek, perbandingan, pricing, opencode, token-harbor]
---

# Perbandingan DeepSeek V4.1 Flash: OpenCode Go vs Token Harbor Office

## Pertanyaan

(per user, 2026-10-15) Jika ingin memakai **DeepSeek V4.1 Flash**, mana yang lebih *worth it*: **OpenCode Go** ($10/bln) atau **Token Harbor Office Pass** ($9,99/bln)?

## Jawaban singkat

Untuk model ini **saja**, di atas kertas **OpenCode Go lebih unggul**: ia memberi cap bulanan **$60** khusus DSH V4.1 Flash — rasio **6×** dari harga langganan — sedangkan Office memberi **$35** nilai pakai — rasio **3,5×** ([OpenCode](../entities/opencode.md); [Estimasi Request per Pass](../entities/token-harbor-pass-estimates.md)). Setara ≈14,3k vs ≈8,8k request pada basis 10K input + 1K output per request.

Dua syarat bisa membalik kesimpulan: (1) bila **tarif off-peak** TH ($0,15/$0,60) berlaku untuk metering pass, kapasitas Office naik ke ≈16,7k request; (2) bila pemakaian **campur banyak model**, pool bersama Office lebih luwes daripada jatah per-model Go.

## Data kunci

| Aspek | OpenCode Go | Token Harbor Office |
| --- | --- | --- |
| Harga | $10/bln | $9,99/bln |
| Jatah DSH V4.1 Flash | **26.000 req/5 jam** + **cap bulanan $60** (Go Plus: 52.000/$120) | **$35 nilai usage** (estimasi penerbit **8,8k+ request**/bulan) |
| Boost | Tidak berlaku | Tidak berlaku |
| Jendela | 5 jam + bulanan | 4×7 hari ($8,75/jendela, tanpa carry-over) |
| Setelah jatah habis | PAYG otomatis dari kredit Go–Zen (harga Zen, tanpa diskon) | PAYG dari wallet **diskon 10%**, atau hard limit (toggle) |
| Rasio nilai vs harga | **6×** | **3,5×** |
| Estimasi token/bulan (10K+1K per request) | ±143 juta input + ±14,3 juta output | ±88 juta input + ±8,8 juta output |

Sumber: [OpenCode Go](../sources/opencode-go.md); [Office Pass](../sources/tokenharbor-office-pass.md); [docs Subscription](../sources/tokenharbor-docs-subscription.md).

## Hitungan

- **Paritas harga**: DSH V4.1 Flash = $0,30/$1,20 per 1M di [katalog TH](../sources/tokenharbor-models-value.md) (off-peak $0,15/$0,60), [Zen](../sources/opencode-zen-price-list.md) (cache read $0,01), dan **API resmi DeepSeek** peak (off-peak setengah; cache hit $0,006) ([DeepSeek pricing](../sources/deepseek-models-pricing.md)).
- Satu request basis 10K input + 1K output = $0,003 + $0,0012 = **$0,0042**.
- **Go**: $60 ÷ $0,0042 ≈ **14,3k request**.
- **Office**: $35 ÷ $0,0042 ≈ 8,3k; penerbit membulatkan **8,8k+** (pola "+" yang sama dengan [analisis Agent Pass](perhitungan-limit-agent-pass.md)).
- Token = jumlah request × basis (10K in + 1K out).

## Syarat pembalik: off-peak

- TH off-peak DSH V4.1 Flash $0,15/$0,60 → $0,0021/request → Office ≈ **16,7k request** (±167 juta input + ±16,7 juta output).
- Status: **belum dikonfirmasi** apakah off-peak berlaku pada metering pass ([Token Harbor → open questions](../entities/token-harbor.md)). Jika ya, Office unggul untuk pemakaian pukul 14:00–00:00 UTC.

## Faktor non-harga

- **Free allowance TH berjalan terpisah** dan DSH V4.1 Flash ada di lineup gratis (berotasi/limited) — bonus di luar $35 ([sumber free](../sources/tokenharbor-models-free.md)).
- **Go per model**: jatah tidak bisa dipindah antar model, tetapi tiap model punya jatah sendiri (total lintas model besar) dan burst 26k req/5 jam.
- **Office satu pool**: $35 dibagi semua model Office (Claude Sonnet 5, GPT-5.6 Terra, Qwen3.8 Max, GLM-5.3, dst.).
- Overage: TH diskon 10%; Go tanpa diskon (harga Zen).
- Definisi "cap bulanan $60" Go belum terkonfirmasi — asumsi: nilai usage pada harga Zen ([OpenCode](../entities/opencode.md) → open questions).

## Opsi lain untuk DSH V4.1 Flash

- **API resmi DeepSeek**: peak $0,30/$1,20; off-peak $0,15/$0,60; cache hit $0,006; konkurensi 2.500; konteks 1M, output 384K ([sumber](../sources/deepseek-models-pricing.md)) — tanpa perantara.
- **OpenCode Zen** per-token: $0,30/$1,20 dengan cache read eksplisit $0,01 ([sumber](../sources/opencode-zen-price-list.md)).
- **VyceAI**: "unlimited" DSH V4.1 untuk Lite $5/Pro $20 + reward harian; ketergantungan proxy & uptime 96,7% saat klip ([pricing](../sources/vyceai-pricing-monthly.md); [VyceAI](../entities/vyceai.md)).

## Rekomendasi

| Skenario | Pilihan | Alasan |
| --- | --- | --- |
| Fokus DSH V4.1 Flash, volume/burst besar | **OpenCode Go** | 6× vs 3,5%; 26k req/5 jam; fallback PAYG otomatis |
| DSH + model frontier lain dalam satu langganan | **Office** | Satu pool $35 lintas model |
| Pemakaian di jendela off-peak TH | Tunggu konfirmasi → **Office** | Off-peak bisa menggandakan kapasitas |
| Volume sangat besar / kendali penuh | **API resmi DeepSeek** | Off-peak $0,15/$0,60; cache hit; tanpa proxy |

## Caveats

- Estimasi request adalah **angka penerbit**, bukan verifikasi independen; basis 10K+1K per request.
- Definisi cap bulanan Go dan keberlakuan off-peak pada pass **belum terkonfirmasi**.
- Snapshot harga dari klip 1–8 Okt; harga/promo dapat berubah.

## Related

- [OpenCode](../entities/opencode.md) · [Token Harbor](../entities/token-harbor.md) · [OpenCode Zen](../entities/opencode-zen.md) · [DeepSeek](../entities/deepseek.md) · [VyceAI](../entities/vyceai.md)
- [Estimasi Request per Pass](../entities/token-harbor-pass-estimates.md)
- [Perbandingan GPT-6 Luna Antar Penyedia](perbandingan-gpt-6-luna.md) · [Perhitungan Limit Agent Pass & Beban Konteks Besar](perhitungan-limit-agent-pass.md)
- [Layanan Akses Model](../concepts/model-access-services.md)

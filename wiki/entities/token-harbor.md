---
title: Token Harbor
type: entity
created: 2026-10-01
updated: 2026-10-01
sources: [tokenharbor-pricing, opencode-go, opencode-zen-price-list, tokenharbor-models-frontier, tokenharbor-models-value, tokenharbor-models-free, tokenharbor-th-rudder, tokenharbor-frontier-pass, tokenharbor-office-pass]
tags: [token-harbor, api, pricing]
---

# Token Harbor

**Token Harbor** adalah layanan yang menyediakan akses ke banyak model AI lewat **satu API**. Model monetisasinya bukan kredit prabayar, melainkan **pass bulanan** dengan *included usage* yang diukur sebagai nilai pemakaian pada harga per-token publik — "usage value, not credit" (lihat [halaman sumber](../sources/tokenharbor-pricing.md)).

## Produk

- **API**: satu pintu untuk seluruh lineup model; model gratis harus diaktifkan di dashboard.
- **Pass bulanan**: Free, Agent, Office, dan Frontier — lihat tabel di bawah.
- **Rudder / TH-Rudder**: aplikasi web chat gratis (tokenharbor.ai/chat) dengan model **TH-Rudder** — "one model for everything" yang membaca tiap pesan dan meneruskannya ke model yang tepat; unlimited free, web chat only, tanpa nama API; gambar dan web search punya jatah harian (lihat [TH-Rudder](th-rudder.md)).

## Pass dan lineup

| Pass | Harga | Included usage | Boost maks. | Diskon pay-as-you-go |
| --- | --- | --- | --- | --- |
| Free | $0/bulan | free allowance (nilainya tidak disebut) | — | — |
| Agent | $0.99 bulan pertama, lalu $1.99/bulan | $10 | hingga $20 | 5% |
| Office | $9.99/bulan | $35 | hingga $70 | 10% |
| Frontier | $99/bulan | $180 | hingga $360 | 15% |

Model yang ditambahkan tiap pass (pass atas mencakup semua di bawahnya):

| Pass | Model baru |
| --- | --- |
| Free | Qwen3.8 Flash (limited time), DeepSeek V4.1 Flash, MiMo V2.6 Flash; TH-Rudder gratis di web chat (lineup berotasi) |
| Agent | GLM 5.3 Flash, GPT-6 Luna, Qwen3.8 Flash — ditambah Qwen3.7 Flash dan GPT-6 Luna Fast di tabel estimasi |
| Office | GPT-5.6 Terra, Qwen3.8 Max, GLM-5.3 |
| Frontier | Claude Fable 5.1, GPT-6 Astra, Claude Opus 5.5 |

### Estimasi kapasitas per pass

Basis 10K token input + 1K token output per request; token boost diperhitungkan. Estimasi untuk ketiga pass — Agent, Office, dan Frontier — beserta semua modelnya ada di [Estimasi Request per Pass](token-harbor-pass-estimates.md). Estimasi tampak proporsional dengan included usage ($10 → $35 → $180).

Sebagian model di atas juga muncul di layanan langganan lain: GPT-6 Luna, Qwen3.8 Max, GLM-5.3, GLM 5.3 Flash, Qwen3.8 Flash, DeepSeek V4 Flash, DeepSeek V4.1 Flash, dan MiMo V2.6 Flash juga ditawarkan lewat [OpenCode Go](opencode.md) dengan skema batas yang berbeda (lihat [sumbernya](../sources/opencode-go.md)). Model-model tersebut juga ada di katalog per-token [OpenCode Zen](opencode-zen.md), yang mencantumkan harga per 1M token (lihat [sumbernya](../sources/opencode-zen-price-list.md)).

## Katalog dan harga per token

Klip katalog model (2026-10-01) mendokumentasikan harga per 1M token tiap model, terbagi kategori **frontier**, **value**, dan **free**, lengkap dengan AA Rank dan [Intelligence Index](../concepts/intelligence-index.md) dari Artificial Analysis — lihat [Katalog Model Token Harbor](token-harbor-model-catalog.md). Beberapa model punya varian **Fast** (harga lebih tinggi) dan DeepSeek V4.1 Flash punya tarif **off-peak** $0.15·$0.60 (14:00–00:00 UTC; standar $0.3·$1.20).

## Mekanisme pass

- **Usage value, bukan saldo**: included usage mengukur berapa biaya trafik yang sama tanpa pass, dihitung pada harga per-token publik. Ini bukan saldo dompet.
- **Bulan = 4 jendela 7 hari**: tiap jendela menerima seperempat nilai; sisa ruang tidak carry-over. "Bulan" di Token Harbor karenanya bukan bulan kalender.
- **Boost = tarif lebih murah**: model terpilih di-boost hingga 2× nilai (plafon boost = 2× included usage: $20/$70/$360). Boost adalah alternatif pemakaian, bukan saldo terpisah.
- **Tidak berhenti di batas**: setelah nilai bulan habis, panggilan tetap berjalan dan ditagih dari saldo pada tarif per-token pass yang sudah didiskon.
- **Free allowance menyatu**: langganan tidak menggantikan free allowance; keduanya masuk satu pool dengan satu progress bar.

## Open questions

- Berapa besar free allowance bulanan? Sumber tidak menyebut angka dolar.
- Apakah tarif varian Fast dan off-peak juga berlaku untuk pemakaian pass/boost, atau hanya pay-as-you-go?
- Berapa besar jatah harian TH-Rudder untuk gambar dan web search? Tidak disebut.
- Siapa lab di balik masing-masing model? Nama-namanya mengikuti keluarga model besar (DeepSeek, MiMo, Qwen, GLM, GPT, Claude, Grok), tapi sumber tidak menyebut vendor.
- Tanggal publikasi halaman tidak diketahui; penawaran dapat berubah (boost Qwen3.8 Flash berakhir 4 Okt 2026).

## Related

- [Katalog Model Token Harbor](token-harbor-model-catalog.md) — daftar model + harga per token + Intelligence Index.
- [Estimasi Request per Pass](token-harbor-pass-estimates.md) — kapasitas per pass (Agent/Office/Frontier).
- [TH-Rudder](th-rudder.md) — model gratis web chat.
- [One API for the world's leading AI models](../sources/tokenharbor-pricing.md) — sumber harga dan pass.
- [OpenCode](opencode.md) — layanan langganan lain dengan lineup tumpang tindih.
- [OpenCode Zen](opencode-zen.md) — katalog per-token OpenCode; memuat harga untuk banyak model yang sama.
- [Layanan Akses Model](../concepts/model-access-services.md) — pola umum layanan seperti ini.
- [Overview](../overview.md)

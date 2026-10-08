---
title: Token Harbor
type: entity
created: 2026-10-01
updated: 2026-10-08
sources: [tokenharbor-pricing, tokenharbor-models-frontier, tokenharbor-models-value, tokenharbor-models-free, tokenharbor-th-rudder, tokenharbor-frontier-pass, tokenharbor-office-pass, tokenharbor-docs-subscription, tokenharbor-docs-credits, tokenharbor-docs-rewards, tokenharbor-docs-rate-limits, tokenharbor-docs-prompt-caching, tokenharbor-docs-models, tokenharbor-docs-web-chat-limits, tokenharbor-docs-speed, tokenharbor-docs-vs-openrouter, opencode-go, opencode-zen-price-list]
tags: [token-harbor, api, pricing]
---

# Token Harbor

**Token Harbor** adalah layanan **satu API untuk banyak model AI**. Monetisasinya: **pass bulanan** dengan *included usage* yang diukur sebagai **nilai pemakaian** pada harga per-token publik, plus **saldo wallet** untuk pemakaian di luar pass (markup 0%). Dua endpoint tersedia: OpenAI-compatible (`tokenharbor.ai/v1`) dan Anthropic native (`tokenharbor.ai/v1/messages`) ([harga](../sources/tokenharbor-pricing.md); [docs Subscription](../sources/tokenharbor-docs-subscription.md); [vs OpenRouter](../sources/tokenharbor-docs-vs-openrouter.md)).

## Produk

- **API**: satu Universal Key untuk seluruh lineup; dua wire-format (OpenAI `/v1/chat/completions` + Anthropic `/v1/messages`); smart routing + fallback antar upstream; CLI `connect` menyetel 20+ agent (Claude Code, Codex, Cursor, Cline, opencode, pi, dll.).
- **Pass bulanan**: Free, Agent, Office, Frontier — lihat tabel; billing tahunan tersedia (allowance tetap refresh tiap 4 minggu).
- **Wallet**: saldo USD untuk pay-as-you-go dan overage pass; top-up; rewards.
- **Rudder / TH-Rudder**: web chat gratis dengan model **TH-Rudder** — router "one model for everything"; teks unlimited; kuota harian gambar 10, web search 200, voice 100, file 20 (lihat [TH-Rudder](th-rudder.md)).

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

> **Catatan versi**: dokumen Subscription (2 Okt) menyebut sebagian model dengan nama versi berbeda dari klip harga/katalog (1 Okt) — mis. GPT-5.6 Luna vs GPT-6 Luna, MiMo V2.5 (Pro) vs MiMo V2.6 Flash (Pro), Claude Sonnet 5 vs 5.5, Grok 4.6 vs 4.7. Kemungkinan beda snapshot; rinciannya di [Katalog Model](token-harbor-model-catalog.md) → *Lineup dokumen vs katalog*.

### Estimasi kapasitas per pass

Basis 10K token input + 1K token output per request; token boost diperhitungkan. Estimasi untuk ketiga pass — Agent, Office, dan Frontier — beserta semua modelnya ada di [Estimasi Request per Pass](token-harbor-pass-estimates.md). Estimasi tampak proporsional dengan included usage ($10 → $35 → $180).

Sebagian model di atas juga muncul di layanan langganan lain: GPT-6 Luna, Qwen3.8 Max, GLM-5.3, GLM 5.3 Flash, Qwen3.8 Flash, DeepSeek V4 Flash, DeepSeek V4.1 Flash, dan MiMo V2.6 Flash juga ditawarkan lewat [OpenCode Go](opencode.md) dengan skema batas yang berbeda (lihat [sumbernya](../sources/opencode-go.md)). Model-model tersebut juga ada di katalog per-token [OpenCode Zen](opencode-zen.md), yang mencantumkan harga per 1M token (lihat [sumbernya](../sources/opencode-zen-price-list.md)).

## Wallet, top-up & rewards

- **Satu saldo USD** untuk web chat + kedua API; akun mulai **$0** (tanpa welcome credit); model `:free` tidak menyentuh saldo ([Credits & top-ups](../sources/tokenharbor-docs-credits.md)).
- **Top-up**: Starter $10, Community $50, Harbor $100 (via PayPal); kredit **tidak pernah kedaluwarsa**; sisa saldo top-up bisa direfund dalam 30 hari; kredit promosi/reward bisa dibelanjakan tapi tidak bisa ditarik.
- **Rewards**: first top-up match **100% s.d. $100** (14 hari setelah registrasi); milestone lifetime $10→$2, $50→$10, $200→$50; cap semua reward **$500 lifetime** per akun ([Rewards](../sources/tokenharbor-docs-rewards.md)).
- **Tagihan**: per token pada harga publik provider + markup per model (**0%** saat ini); tanpa fee per turn, tanpa diskon volume; transparan di `/models` dan `/dashboard/usage` ([docs Models](../sources/tokenharbor-docs-models.md)).

## Rate limits

- **Akun berbayar** (Pass aktif **atau** wallet pernah top-up): **tanpa limit request** (RPM/RPH).
- **Akun gratis**: 60/menit & 1.800/jam per akun; 100/menit & 3.000/jam per IP; image generation 10/menit & 150/jam.
- Tanpa batas konkurensi; satu API call = satu request (round trip tool agent dihitung masing-masing); limit API key = **cap pengeluaran USD**, bukan rate ([Rate limits](../sources/tokenharbor-docs-rate-limits.md)).

## Cache

- **Tiga lapis**: upstream (prefix berulang ≥1024 token, ~90% off bagian input ter-cache), semantic (pertanyaan sama/mirip, **$0**), exact (request identik dalam 5 menit, **$0**) ([docs Models](../sources/tokenharbor-docs-models.md)).
- **Claude**: cache read **0,1×** (0,025× di Fable 5.1), cache write **1,25×**; Token Harbor memasang mark otomatis bila klien tidak; entri hidup 5 menit ([docs Prompt caching](../sources/tokenharbor-docs-prompt-caching.md)).
- Sintesis lintas layanan (Zen, Agnes, Groq, Cerebras, Inception, Novita): [Prompt Caching](../concepts/prompt-caching.md).

## Mekanisme pass

- **Usage value, bukan saldo**: included usage mengukur berapa biaya trafik yang sama tanpa pass, dihitung pada harga per-token publik. Ini bukan saldo dompet.
- **Siklus 4 minggu = 4 jendela 7 hari**: tiap jendela menerima seperempat nilai; sisa ruang tidak carry-over. "Bulan" di Token Harbor karenanya bukan bulan kalender.
- **Boost = tarif lebih murah**: model terpilih di-boost hingga 2× nilai (plafon boost = 2× included usage: $20/$70/$360). Boost adalah alternatif pemakaian, bukan saldo terpisah.
- **Overage = toggle**: *"Keep working after my Pass allowance runs out"* di Dashboard → Billing ([docs Subscription](../sources/tokenharbor-docs-subscription.md)). **Aktif** → panggilan lanjut dari saldo pada tarif pass yang didiskon (5/10/15%), tunduk hard spending cap. **Nonaktif** → Pass menjadi **hard limit** sampai jendela berikutnya. Ini melunakkan klaim "Nothing stops at the limit" di halaman harga.
- **Free allowance menyatu tapi terpisah**: langganan tidak menggantikan, mereset, atau menambah free allowance; jika sudah terpakai, upgrade tidak memulihkannya; model gratis tetap via ID `:free`. Periode free allowance = **rolling 7×24 jam** sejak request gratis pertama, diukur nilai list-price dengan progress bar ([Rewards](../sources/tokenharbor-docs-rewards.md)).

## Katalog dan harga per token

Klip katalog model (2026-10-01) mendokumentasikan harga per 1M token tiap model, terbagi kategori **frontier**, **value**, dan **free**, lengkap dengan AA Rank dan [Intelligence Index](../concepts/intelligence-index.md) dari Artificial Analysis — lihat [Katalog Model Token Harbor](token-harbor-model-catalog.md). Beberapa model punya varian **Fast** (harga lebih tinggi) dan DeepSeek V4.1 Flash punya tarif **off-peak** $0.15·$0.60 (14:00–00:00 UTC; standar $0.3·$1.20). Katalog live ada di `/models` (harga, tanggal rilis, knowledge cutoff) dan `/v1/models` (JSON).

## Open questions

- Berapa besar nilai free allowance? Angka dolar tetap tidak disebut — periode (rolling 7×24 jam) dan cara ukur (nilai list-price) kini diketahui.
- Apakah tarif **off-peak** berlaku untuk pemakaian pass? Boost jelas berlaku untuk pass (docs Subscription); off-peak tidak disebut di dokumen.
- Apakah cache sepenuhnya diteruskan ke penghitungan usage value pass? Docs menghitung biaya dari token upstream dan cache memotongnya — implikasinya kuat, belum eksplisit ([Prompt Caching](../concepts/prompt-caching.md)).
- Versi model mana yang berlaku: katalog klip 1 Okt atau dokumen Subscription 2 Okt? (lihat [Katalog Model](token-harbor-model-catalog.md)).
- Siapa lab di balik masing-masing model? Nama-namanya mengikuti keluarga model besar (DeepSeek, MiMo, Qwen, GLM, GPT, Claude, Grok), tapi sumber tidak menyebut vendor.
- Tanggal publikasi halaman tidak diketahui; penawaran dapat berubah (boost Qwen3.8 Flash berakhir 4 Okt 2026).

## Related

- [Katalog Model Token Harbor](token-harbor-model-catalog.md) — daftar model + harga per token + Intelligence Index.
- [Estimasi Request per Pass](token-harbor-pass-estimates.md) — kapasitas per pass (Agent/Office/Frontier).
- [TH-Rudder](th-rudder.md) — model gratis web chat + kuota web chat.
- [Token Harbor docs — Subscription](../sources/tokenharbor-docs-subscription.md) · [Credits & top-ups](../sources/tokenharbor-docs-credits.md) · [Rewards](../sources/tokenharbor-docs-rewards.md)
- [Token Harbor docs — Rate limits](../sources/tokenharbor-docs-rate-limits.md) · [Models](../sources/tokenharbor-docs-models.md) · [Prompt caching on Claude](../sources/tokenharbor-docs-prompt-caching.md) · [Web chat limits](../sources/tokenharbor-docs-web-chat-limits.md) · [Speed](../sources/tokenharbor-docs-speed.md) · [vs OpenRouter](../sources/tokenharbor-docs-vs-openrouter.md)
- [One API for the world's leading AI models](../sources/tokenharbor-pricing.md) — sumber harga dan pass.
- [Prompt Caching](../concepts/prompt-caching.md) — sintesis tarif cache lintas layanan.
- [OpenRouter](openrouter.md) — gateway pembanding; perbandingan resmi dari sudut pandang Token Harbor.
- [OpenCode](opencode.md) — layanan langganan lain dengan lineup tumpang tindih.
- [OpenCode Zen](opencode-zen.md) — katalog per-token OpenCode; memuat harga untuk banyak model yang sama.
- [Layanan Akses Model](../concepts/model-access-services.md) — pola umum layanan seperti ini.
- [Perhitungan Limit Agent Pass & Beban Konteks Besar](../analyses/perhitungan-limit-agent-pass.md) — contoh hitungan biaya + analisis beban konteks besar.
- [Overview](../overview.md)

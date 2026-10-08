---
title: Perbandingan GPT-6 Luna Antar Penyedia
type: analysis
created: 2026-10-07
updated: 2026-10-08
sources: [tokenharbor-models-value, tokenharbor-pricing, tokenharbor-office-pass, tokenharbor-frontier-pass, tokenharbor-docs-subscription, opencode-go, opencode-zen-price-list, puter-tutorial-openai, puter-docs-user-pays, openrouter-decisions-models, openai-dev-pricing, openai-dev-gpt-6-luna, hermes-agent-nous-portal-models]
tags: [gpt-6-luna, perbandingan, pricing, token-harbor, opencode, puter, openai]
---

# Perbandingan GPT-6 Luna Antar Penyedia

## Pertanyaan

Jika ingin memakai **GPT-6 Luna**, penyedia mana yang "lebih baik" menurut wiki? (per user, 2026-10-07)

**Tambahan (8 Okt)**: bagaimana harga **resmi OpenAI** dibandingkan sumber lain (agregator)? (per user, 2026-10-08)

## Jawaban singkat

Tergantung **siapa yang membayar** dan **pola pemakaian**:

1. **Memakai sendiri, volume kecil–menengah** → [Token Harbor](../entities/token-harbor.md) **Agent Pass** — rasio biaya terbaik di wiki ($1,99 untuk nilai $10).
2. **Penggunaan harian via agen coding & ingin biaya flat** → [OpenCode Go](../entities/opencode.md) $10/bln — kuota 5 jam besar + fallback pay-as-you-go otomatis.
3. **Beban agentik konteks panjang (ber-cache)** → [OpenCode Zen](../entities/opencode-zen.md) — satu-satunya dengan **tarif cache eksplisit** untuk Luna.
4. **Membangun aplikasi untuk pengguna lain** → [Puter](../entities/puter.md) — developer **$0** via user-pays (tanpa API key).

**Harga resmi (8 Okt)**: API OpenAI langsung = **$0.10/$0.50** — berparitas dengan agregator utama; detail di section *Resmi vs agregator*.

## Ketersediaan & harga

| Penyedia | Skema | Tarif Luna | Kuota Luna | Catatan |
| --- | --- | --- | --- | --- |
| **[OpenAI API](../entities/openai.md) (resmi, 8 Okt)** | Pay-per-token langsung ([pricing](../sources/openai-dev-pricing.md)) | **$0.10 / $0.50**; cached $0.01; cache write $0.125 | — | >272K: 2×/1.5× → $0.20/$0.75; **Batch/Flex −50%**; **Fast 2×**; regional +10%; konteks 1,05M; cutoff 18 Mei 2026 ([model](../sources/openai-dev-gpt-6-luna.md)) |
| [Token Harbor](../entities/token-harbor.md) | Pass bulanan: Agent **$1.99** (bulan pertama $0.99; nilai $10; Office $9.99/nilai $35; Frontier $99/nilai $180) | $0.10 / $0.50 per 1M; varian Fast $0.20/$1.00 ([katalog](../entities/token-harbor-model-catalog.md), [value](../sources/tokenharbor-models-value.md)) | ≈ **6,6k request/bulan** (basis 10k in + 1k out); Office 23,3k+; Frontier 120k+ ([estimasi](../entities/token-harbor-pass-estimates.md)) | Boost **tidak** berlaku untuk Luna; jendela 7 hari tanpa carry-over; drift nama "GPT-5.6 Luna" di [docs Subscription](../sources/tokenharbor-docs-subscription.md) |
| [OpenCode Go](../entities/opencode.md) | Langganan $10 (Go) / $40 (Go Plus) | Kuota, bukan per-token | **4.230 req/5 jam** (Go); 16.920 (Go Plus); cap bulanan $15/$60 | Ditandai "New" ([sumber](../sources/opencode-go.md)); lewat batas → PAYG otomatis dari kredit bersama Go–Zen; definisi "batas bulanan" belum terkonfirmasi |
| [OpenCode Zen](../entities/opencode-zen.md) | Pay-as-you-go (saldo, menyatu dengan Go) | $0.10 / $0.50; **cache read $0.01**, cache write $0.13 ([daftar harga](../sources/opencode-zen-price-list.md)) | Tanpa kuota tetap | Model harus diaktifkan dulu ("Only enabled models will be available to members") |
| [Nous Portal](../entities/hermes-agent.md) (baru, 8 Okt) | Langganan kredit: Free $0; Plus $20; Super $100; Ultra $200 (+10% kredit; rollover cap) | $0.10 / $0.50; varian **Luna Pro juga $0.10/$0.50** ([katalog](../sources/hermes-agent-nous-portal-models.md)) | Kredit bulanan $22/$110/$220 | Portal menjual 350 model; promo 25–88% untuk sebagian model lain |
| [Puter](../entities/puter.md) | User-pays: developer $0; user menanggung usage dari akunnya ([docs](../sources/puter-docs-user-pays.md)) | **Tidak dipublikasikan di wiki** (per-model rates lewat `GET /metering/allCosts`, belum dikutip) | Allowance bulanan user (nominal tidak diketahui) | Konteks **1.050.000 token** + varian Pro (harga sama); tanpa API key; dari browser/agen/MCP ([tutorial OpenAI](../sources/puter-tutorial-openai.md)) |
| [VyceAI](../entities/vyceai.md) (baru, 7 Okt) | Langganan Lite $5/Pro $20 + reward harian $10–30 | **$2/$2** (jauh di atas TH/Zen) | Daily quota 50 juta token (tampilan klip); endpoint **offline** saat klip | Deskripsi vendor "flagship running in Codex" — berbeda dari posisi tier murah di sumber lain; data baru 1 snapshot ([status](../sources/vyceai-system-status.md)) |

## Resmi vs agregator (8 Okt)

Dengan ter-ingest-nya harga resmi OpenAI ([pricing](../sources/openai-dev-pricing.md)), perbandingan Luna kini bisa ditutup:

- **Paritas harga nyaris sempurna**: $0.10/$0.50 di [Token Harbor](../sources/tokenharbor-models-value.md), [OpenCode Zen](../entities/opencode-zen.md), dan [Nous Portal](../sources/hermes-agent-nous-portal-models.md) **sama persis** dengan API resmi — konsisten dengan pola paritas lintas katalog ([Layanan Akses Model](../concepts/model-access-services.md)). Cek generasi sebelumnya: Zen `gpt-5.6-luna` ($0.20/$1.20) = harga resmi 5.6 Luna.
- **Varian "Fast" Token Harbor terjelaskan**: $0.20/$1.00 = **Fast mode resmi (2× tarif)** — bukan markup agregator ([katalog TH](../entities/token-harbor-model-catalog.md)).
- **Cache Zen mengikuti resmi**: read $0.01 (= 10% input) & write $0.13 (≈ resmi $0.125, dibulatkan tampilan).
- **Yang tidak diteruskan agregator**: surcharge konteks **>272K** (2×/1.5× → $0.20/$0.75) dan diskon **Batch/Flex −50%** ($0.05/$0.25) — hanya ada di API resmi; uplift regional +10% juga khas resmi.
- **VyceAI tetap outlier**: $2/$2 = 20× input / 4× output resmi; tanpa penjelasan dari sumber.
- **Dimensi berbeda**: Puter (tarif tak dipublikasikan; $0 developer) dan OpenCode Go (kuota 4.230 req/5 jam; cap $15) tidak bisa dibandingkan langsung per-token.

**Catatan (8 Okt)**: GPT-6 Luna juga tersedia sebagai **GPT-6 Luna Decisions** — mode [Model Keputusan](../concepts/decision-models.md) lewat OpenAI Decisions API (terdaftar di OpenRouter: $0.10/M input, **output gratis**, konteks 1,05 jt, ≤200 pertanyaan/request). Ini produk berbeda dari GPT-6 Luna chat dan berada di luar perbandingan tarif di atas.

## Analisis biaya per skenario

- **Rasio pass**: Agent $1,99 → nilai $10 (≈5×; bulan pertama $0.99 → ≈10×). Konsekuensi jendela 7 hari: nilai terbagi $2,50/jendela **tanpa carry-over** — pemakaian "meledak sesekali" boros; pemakaian rutin untung besar.
- **Go vs Agent untuk Luna murni**: Go $10 memberi cap $15 untuk Luna (≈1,5×) — rasio lebih kecil dari Agent, tetapi kuota 5 jam-nya besar (4.230 req) dan jatuh tempo otomatis ke PAYG; unggul jika kamu memakai **banyak model** dalam satu langganan.
- **Peran cache pada beban besar**: analisis [Perhitungan Limit Agent Pass & Beban Konteks Besar](perhitungan-limit-agent-pass.md) memperkirakan konteks tumbuh 50k token/turn menghabiskan $10 dalam **≈36 turn tanpa cache**, tapi **≈170 turn dengan cache read $0,01/M** (asumsi tarif Zen). Zen mempublikasikan tarif cache Luna; TH hanya menyebut cache upstream "up to 90% off" secara umum tanpa rincian per model non-Claude — jadi **Zen lebih bisa dihitung** untuk beban berat.
- **Puter**: perbandingan dolar tidak mungkin dari wiki (tarif tidak dipublikasikan); nilai utamanya bukan harga per token melainkan **$0 developer + keyless + konteks 1,05 jt token + varian Pro**.

## Rekomendasi

| Skenario | Pilihan | Alasan utama |
| --- | --- | --- |
| Pemakaian pribadi rutin, volume ≤ ~$10 nilai/bulan | **Token Harbor Agent** | $1.99 vs nilai $10; ~6,6k request Luna/bulan |
| Harian via OpenCode, ingin flat & multi-model | **OpenCode Go** ($10) | Kuota 4.230 req/5 jam; fallback PAYG dari kredit bersama |
| Codebase besar/agentik konteks panjang | **OpenCode Zen** | Tarif cache transparan ($0,01/M read) — mitigasi biaya utama |
| Aplikasi yang dipakai orang lain | **Puter** | Developer $0 (user-pays); keyless; konteks 1,05M token |

**VyceAI (baru, 7 Okt)** belum masuk rekomendasi: endpoint Luna-nya **offline** saat klip dan harganya ($2/$2) jauh di atas kandidat lain — pantau setelah data stabil (bonus/reward-nya bisa mengubah kalkulasi untuk pemakaian lewat langganan).

## Caveats

- Sebagian besar angka dari klip **2026-10-01/02** (VyceAI: snapshot 7 Okt; harga resmi OpenAI & Nous Portal: 8 Okt) dan dapat berubah; estimasi request adalah angka penerbit, bukan verifikasi independen. Status Luna di VyceAI **offline** saat klip dan deskripsinya ("flagship") berbeda dari sumber lain — jangan jadikan dasar tunggal pemilihan.
- Harga resmi OpenAI dari snapshot 8 Okt; pembulatan tampilan agregator (mis. cache write Zen $0.13 vs $0.125) belum dikonfirmasi sebagai tarif penagihan sebenarnya.
- Definisi "batas bulanan" Go (dolar? nilai usage?) belum dikonfirmasi ([OpenCode](../entities/opencode.md) → Open questions).
- Tarif cache TH untuk model non-Claude tidak dirinci; keberlakuan off-peak pada pass juga belum jelas.
- Biaya per model di Puter dan nominal free allowance user tidak dipublikasikan (open questions [Puter](../entities/puter.md)).
- Posisi kualitas Luna: tier murah (#36; Intelligence Index 37,3) — untuk volume tinggi/summarization; klaim benchmark pihak ketiga (mis. Inception Mercury "5,9× lebih cepat") bersifat vendor ([Inception Labs](../entities/inception-labs.md)).

## Related

- [OpenAI](../entities/openai.md) (resmi) · [Nous Portal / Hermes](../entities/hermes-agent.md) · [Codex](../entities/codex.md)
- [Token Harbor](../entities/token-harbor.md) · [Katalog Model Token Harbor](../entities/token-harbor-model-catalog.md) · [Estimasi Request per Pass](../entities/token-harbor-pass-estimates.md)
- [OpenCode](../entities/opencode.md) · [OpenCode Zen](../entities/opencode-zen.md)
- [Puter](../entities/puter.md) · [User-Pays Model](../concepts/user-pays-model.md) · [VyceAI](../entities/vyceai.md)
- [Layanan Akses Model](../concepts/model-access-services.md) · [Prompt Caching](../concepts/prompt-caching.md)
- [Perhitungan Limit Agent Pass & Beban Konteks Besar](perhitungan-limit-agent-pass.md)

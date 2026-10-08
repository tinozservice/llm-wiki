---
title: Perbandingan GPT-6 Luna Antar Penyedia
type: analysis
created: 2026-10-07
updated: 2026-10-08
sources: [tokenharbor-models-value, tokenharbor-pricing, tokenharbor-office-pass, tokenharbor-frontier-pass, tokenharbor-docs-subscription, opencode-go, opencode-zen-price-list, puter-tutorial-openai, puter-docs-user-pays, openrouter-decisions-models]
tags: [gpt-6-luna, perbandingan, pricing, token-harbor, opencode, puter]
---

# Perbandingan GPT-6 Luna Antar Penyedia

## Pertanyaan

Jika ingin memakai **GPT-6 Luna**, penyedia mana yang "lebih baik" menurut wiki? (per user, 2026-10-07)

## Jawaban singkat

Tergantung **siapa yang membayar** dan **pola pemakaian**:

1. **Memakai sendiri, volume kecil–menengah** → [Token Harbor](../entities/token-harbor.md) **Agent Pass** — rasio biaya terbaik di wiki ($1,99 untuk nilai $10).
2. **Penggunaan harian via agen coding & ingin biaya flat** → [OpenCode Go](../entities/opencode.md) $10/bln — kuota 5 jam besar + fallback pay-as-you-go otomatis.
3. **Beban agentik konteks panjang (ber-cache)** → [OpenCode Zen](../entities/opencode-zen.md) — satu-satunya dengan **tarif cache eksplisit** untuk Luna.
4. **Membangun aplikasi untuk pengguna lain** → [Puter](../entities/puter.md) — developer **$0** via user-pays (tanpa API key).

## Ketersediaan & harga

| Penyedia | Skema | Tarif Luna | Kuota Luna | Catatan |
| --- | --- | --- | --- | --- |
| [Token Harbor](../entities/token-harbor.md) | Pass bulanan: Agent **$1.99** (bulan pertama $0.99; nilai $10; Office $9.99/nilai $35; Frontier $99/nilai $180) | $0.10 / $0.50 per 1M; varian Fast $0.20/$1.00 ([katalog](../entities/token-harbor-model-catalog.md), [value](../sources/tokenharbor-models-value.md)) | ≈ **6,6k request/bulan** (basis 10k in + 1k out); Office 23,3k+; Frontier 120k+ ([estimasi](../entities/token-harbor-pass-estimates.md)) | Boost **tidak** berlaku untuk Luna; jendela 7 hari tanpa carry-over; drift nama "GPT-5.6 Luna" di [docs Subscription](../sources/tokenharbor-docs-subscription.md) |
| [OpenCode Go](../entities/opencode.md) | Langganan $10 (Go) / $40 (Go Plus) | Kuota, bukan per-token | **4.230 req/5 jam** (Go); 16.920 (Go Plus); cap bulanan $15/$60 | Ditandai "New" ([sumber](../sources/opencode-go.md)); lewat batas → PAYG otomatis dari kredit bersama Go–Zen; definisi "batas bulanan" belum terkonfirmasi |
| [OpenCode Zen](../entities/opencode-zen.md) | Pay-as-you-go (saldo, menyatu dengan Go) | $0.10 / $0.50; **cache read $0.01**, cache write $0.13 ([daftar harga](../sources/opencode-zen-price-list.md)) | Tanpa kuota tetap | Model harus diaktifkan dulu ("Only enabled models will be available to members") |
| [Puter](../entities/puter.md) | User-pays: developer $0; user menanggung usage dari akunnya ([docs](../sources/puter-docs-user-pays.md)) | **Tidak dipublikasikan di wiki** (per-model rates lewat `GET /metering/allCosts`, belum dikutip) | Allowance bulanan user (nominal tidak diketahui) | Konteks **1.050.000 token** + varian Pro (harga sama); tanpa API key; dari browser/agen/MCP ([tutorial OpenAI](../sources/puter-tutorial-openai.md)) |
| [VyceAI](../entities/vyceai.md) (baru, 7 Okt) | Langganan Lite $5/Pro $20 + reward harian $10–30 | **$2/$2** (jauh di atas TH/Zen) | Daily quota 50 juta token (tampilan klip); endpoint **offline** saat klip | Deskripsi vendor "flagship running in Codex" — berbeda dari posisi tier murah di sumber lain; data baru 1 snapshot ([status](../sources/vyceai-system-status.md)) |

Harga Token Harbor ↔ Zen untuk Luna **identik** ($0,10/$0,50) — konsisten dengan pola paritas harga antar katalog ([Layanan Akses Model](../concepts/model-access-services.md)).

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

- Sebagian besar angka dari klip **2026-10-01/02** (VyceAI: snapshot 7 Okt) dan dapat berubah; estimasi request adalah angka penerbit, bukan verifikasi independen. Status Luna di VyceAI **offline** saat klip dan deskripsinya ("flagship") berbeda dari sumber lain — jangan jadikan dasar tunggal pemilihan.
- Definisi "batas bulanan" Go (dolar? nilai usage?) belum dikonfirmasi ([OpenCode](../entities/opencode.md) → Open questions).
- Tarif cache TH untuk model non-Claude tidak dirinci; keberlakuan off-peak pada pass juga belum jelas.
- Biaya per model di Puter dan nominal free allowance user tidak dipublikasikan (open questions [Puter](../entities/puter.md)).
- Posisi kualitas Luna: tier murah (#36; Intelligence Index 37,3) — untuk volume tinggi/summarization; klaim benchmark pihak ketiga (mis. Inception Mercury "5,9× lebih cepat") bersifat vendor ([Inception Labs](../entities/inception-labs.md)).

## Related

- [Token Harbor](../entities/token-harbor.md) · [Katalog Model Token Harbor](../entities/token-harbor-model-catalog.md) · [Estimasi Request per Pass](../entities/token-harbor-pass-estimates.md)
- [OpenCode](../entities/opencode.md) · [OpenCode Zen](../entities/opencode-zen.md)
- [Puter](../entities/puter.md) · [User-Pays Model](../concepts/user-pays-model.md) · [VyceAI](../entities/vyceai.md)
- [Layanan Akses Model](../concepts/model-access-services.md) · [Prompt Caching](../concepts/prompt-caching.md)
- [Perhitungan Limit Agent Pass & Beban Konteks Besar](perhitungan-limit-agent-pass.md)

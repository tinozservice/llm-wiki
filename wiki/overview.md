---
title: Overview
type: overview
created: 2026-10-01
updated: 2026-10-02
sources: [tokenharbor-pricing, opencode-go, opencode-zen-price-list, tokenharbor-models-frontier, tokenharbor-models-value, tokenharbor-models-free, tokenharbor-th-rudder, tokenharbor-frontier-pass, tokenharbor-office-pass, agnes-token-plan, agnes-model-pricing, agnes-token-plan-faq, groqcloud-plans, groq-billing-faqs, groq-rate-limits, groq-supported-models, groqcloud-free-limits, manus-plans-pricing, novita-model-libraries, novita-rate-limits, sailresearch-pricing, sailresearch-models, inception-models, inception-mercury-voice, inception-enterprise, cerebras-get-started, cerebras-model-catalog, cerebras-choose-a-model, cerebras-pricing, cerebras-limits, cerebras-gpt-oss, cerebras-qwen-38-27b, cerebras-reasoning, cerebras-structured-outputs, cerebras-tool-calling, cerebras-image-inputs, tokenharbor-docs-subscription, tokenharbor-docs-credits, tokenharbor-docs-rewards, tokenharbor-docs-rate-limits, tokenharbor-docs-prompt-caching, tokenharbor-docs-models, tokenharbor-docs-web-chat-limits, tokenharbor-docs-speed, tokenharbor-docs-vs-openrouter]
tags: [overview]
---

# Overview

Sintesis top-level wiki ini: apa yang sudah tercakup, pemahaman terbaik saat ini, dan pertanyaan terbuka.

## Sejauh ini

- Wiki berisi **45 sumber** yang mencakup **sepuluh layanan akses model**: [Token Harbor](entities/token-harbor.md), [OpenCode Go](entities/opencode.md) + [Zen](entities/opencode-zen.md), [Agnes](entities/agnes.md), [Groq](entities/groq.md), [Manus](entities/manus.md), [Novita](entities/novita.md), [Sail Research](entities/sail-research.md), [Inception Labs](entities/inception-labs.md), dan [Cerebras](entities/cerebras.md). Pola umumnya dirangkum di [Layanan Akses Model](concepts/model-access-services.md).
- **Ragam model akses**: langganan bernilai (Token Harbor), langganan batas per model (Go), kuota request + media (Agnes), pay-per-token (Zen, Novita, Sail, Inception, Cerebras), completion windows (Sail), rate limit per organisasi (Groq), kredit tugas (Manus).
- **Token Harbor**: [Katalog Model](entities/token-harbor-model-catalog.md) 19 model dengan harga, AA Rank, dan [Intelligence Index](concepts/intelligence-index.md); [estimasi request per pass](entities/token-harbor-pass-estimates.md); [TH-Rudder](entities/th-rudder.md) router gratis web chat.
- **Dokumentasi Token Harbor (9 klip, 2 Okt)**: wallet/top-up/refund, [rewards](sources/tokenharbor-docs-rewards.md) (first top-up match, cap $500), rate limit (akun berbayar tanpa limit request), [cache 3 lapis + tarif Claude](concepts/prompt-caching.md), kuota web chat, cara ukur kecepatan, dan perbandingan dengan OpenRouter; [toggle overage pass](sources/tokenharbor-docs-subscription.md).
- **Kecepatan jadi medan bersaing**: [Cerebras](entities/cerebras.md) mengklaim ~3.000 t/s (GPT OSS 120B) dan ~1.850 t/s (Qwen 3.8 27B); [Groq](entities/groq.md) ~1.000 t/s (gpt-oss-20b); [Inception Labs](entities/inception-labs.md) 1.000+ t/s lewat dLLM dan fokus latensi voice (TTFAT p50 320 ms).
- **Harga model yang sama sangat bervariasi antar penyedia** — contoh `gpt-oss-120b`: $0.05/$0.25 (Novita), $0.06/$0.40 (Sail), $0.15/$0.60 (Groq), $0.35/$0.75 (Cerebras); `qwen3.8-27b`: $0.42/$3.00 (Novita), $0.80/$4.00 (Groq), $0.99/$1.49 (Cerebras).
- **Data teknis model**: Sail mencatat params/context (Kimi K3 2,8T/104B, GLM-5.3 753B/40B, DeepSeek V4 Pro 1,65T/49B; context 1M); Cerebras mencatat 120B/27B dan context 65k–131k.
- **Kapabilitas API** kini terdokumentasi untuk Cerebras: reasoning (`reasoning_effort`/`reasoning_format`), structured outputs (strict mode), tool calling (strict/parallel/multi-turn), image inputs (public preview).
- **OpenCode**: kredit dari top up, menyatu Go–Zen; overage Go → pay-as-you-go (per user, 2026-10-01).
- Ekosistem pendukung muncul di sumber: **OpenRouter**, **Models.dev**, **Vercel**, **AWS Bedrock/Marketplace**, **Hugging Face**, **Cerebras** (kini berhalaman) — beberapa belum berhalaman.
- Yang masih minim: deskripsi kualitatif model (lab/arsitektur) di luar params; harga Manus; harga on-demand Groq; drift versi model antara katalog 1 Okt dan dokumen 2 Okt.

## Pertanyaan terbuka

- **Halaman per model**: kandidat kuat — model kini punya harga lintas 3–4 penyedia, limit, dan sebagian params/context.
- Metodologi Intelligence Index dan estimasi request Token Harbor.
- Apakah harga berbeda antar penyedia mencerminkan kualitas layanan (kecepatan, limit, SLA) atau margin?
- **OpenRouter** kini teridentifikasi (gateway pembanding, dari dokumen Token Harbor); **Models.dev** dan **Vercel** masih butuh sumber.
- Selisih metrik Inception (TTFT <170 ms vs TTFAT 320 ms) dan token gratis 10M vs 100M.

## Related

- [Token Harbor](entities/token-harbor.md)
- [Katalog Model Token Harbor](entities/token-harbor-model-catalog.md)
- [Estimasi Request per Pass](entities/token-harbor-pass-estimates.md)
- [OpenCode](entities/opencode.md)
- [OpenCode Zen](entities/opencode-zen.md)
- [TH-Rudder](entities/th-rudder.md)
- [Agnes](entities/agnes.md)
- [Groq](entities/groq.md)
- [Manus](entities/manus.md)
- [Novita](entities/novita.md)
- [Sail Research](entities/sail-research.md)
- [Inception Labs](entities/inception-labs.md)
- [Cerebras](entities/cerebras.md)
- [Layanan Akses Model](concepts/model-access-services.md)
- [Prompt Caching](concepts/prompt-caching.md)
- [Intelligence Index (Artificial Analysis)](concepts/intelligence-index.md)
- [Index](index.md)

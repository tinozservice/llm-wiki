---
title: Overview
type: overview
created: 2026-10-01
updated: 2026-10-02
sources: [tokenharbor-pricing, opencode-go, opencode-zen-price-list, tokenharbor-models-frontier, tokenharbor-models-value, tokenharbor-models-free, tokenharbor-th-rudder, tokenharbor-frontier-pass, tokenharbor-office-pass, agnes-token-plan, agnes-model-pricing, agnes-token-plan-faq, groqcloud-plans, groq-billing-faqs, groq-rate-limits, groq-supported-models, groqcloud-free-limits, manus-plans-pricing, novita-model-libraries, novita-rate-limits, sailresearch-pricing, sailresearch-models, inception-models, inception-mercury-voice, inception-enterprise, cerebras-get-started, cerebras-model-catalog, cerebras-choose-a-model, cerebras-pricing, cerebras-limits, cerebras-gpt-oss, cerebras-qwen-38-27b, cerebras-reasoning, cerebras-structured-outputs, cerebras-tool-calling, cerebras-image-inputs, tokenharbor-docs-subscription, tokenharbor-docs-credits, tokenharbor-docs-rewards, tokenharbor-docs-rate-limits, tokenharbor-docs-prompt-caching, tokenharbor-docs-models, tokenharbor-docs-web-chat-limits, tokenharbor-docs-speed, tokenharbor-docs-vs-openrouter, hostinger-nodejs-overview, hostinger-nodejs-product, hostinger-nodejs-creating-app, hostinger-nodejs-build-settings, hostinger-nodejs-env-vars, hostinger-nodejs-file-structure, hostinger-nodejs-deployments, hostinger-nodejs-github, hostinger-nodejs-runtime-logs, hostinger-nodejs-frameworks, hostinger-nodejs-vulnerabilities, hostinger-cloud-hosting, hostinger-vps, hostinger-web-hosting, hostinger-price-list, rumahweb-shared-hosting, rumahweb-unlimited-hosting, rumahweb-vps, rumahweb-vps-alibaba, rumahweb-dedicated-server, domainesia-web-hosting, domainesia-cloud-hosting]
tags: [overview]
---

# Overview

Sintesis top-level wiki ini: apa yang sudah tercakup, pemahaman terbaik saat ini, dan pertanyaan terbuka.

## Sejauh ini

- Wiki berisi **67 sumber** dalam **dua domain**: (1) akses model AI — 45 sumber; (2) hosting web — 22 sumber.
- **Domain 1 — layanan akses model (10 layanan)**: [Token Harbor](entities/token-harbor.md), [OpenCode Go](entities/opencode.md) + [Zen](entities/opencode-zen.md), [Agnes](entities/agnes.md), [Groq](entities/groq.md), [Manus](entities/manus.md), [Novita](entities/novita.md), [Sail Research](entities/sail-research.md), [Inception Labs](entities/inception-labs.md), [Cerebras](entities/cerebras.md). Pola umum: [Layanan Akses Model](concepts/model-access-services.md).
- **Ragam model akses**: langganan bernilai (Token Harbor), langganan batas per model (Go), kuota request + media (Agnes), pay-per-token (Zen, Novita, Sail, Inception, Cerebras), completion windows (Sail), rate limit per organisasi (Groq), kredit tugas (Manus).
- **Token Harbor**: [Katalog Model](entities/token-harbor-model-catalog.md) (19 model, harga, AA Rank, [Intelligence Index](concepts/intelligence-index.md)); [estimasi request per pass](entities/token-harbor-pass-estimates.md); [TH-Rudder](entities/th-rudder.md); [dokumentasi platform](sources/tokenharbor-docs-subscription.md) (wallet, rewards, rate limit, [cache 3 lapis](concepts/prompt-caching.md), kuota web chat, cara ukur kecepatan, [vs OpenRouter](sources/tokenharbor-docs-vs-openrouter.md)).
- **Kecepatan jadi medan bersaing**: [Cerebras](entities/cerebras.md) ~3.000 t/s (GPT OSS 120B); [Groq](entities/groq.md) ~1.000 t/s (gpt-oss-20b); [Inception Labs](entities/inception-labs.md) dLLM 1.000+ t/s + latensi voice.
- **Harga model sama bervariasi antar penyedia** — `gpt-oss-120b`: $0.05/$0.25 (Novita), $0.06/$0.40 (Sail), $0.15/$0.60 (Groq), $0.35/$0.75 (Cerebras).
- **Domain 2 — hosting web (3 provider)**: [Hostinger](entities/hostinger.md), [Rumahweb](entities/rumahweb.md), [DomaiNesia](entities/domainesia.md); pola & jenis layanan di [Hosting Web](concepts/web-hosting.md).
  - Hostinger: shared/cloud/VPS KVM + **managed Node.js (Web App)**; pembeda **Hostinger Agent & Connector (MCP)**; auto-deploy GitHub + vulnerability auto-fix PR.
  - Rumahweb: shared/unlimited/VPS KVM/VPS Alibaba/**dedicated server (ada GPU T4/L4)**; **dual availability zone** (Tier 3 + Tier 4), Turbo Booster, cPanel NOC Partner.
  - DomaiNesia: Nimbus & Cirrus dengan **integrasi MCP AI** (ChatGPT/Claude/OpenCode/OpenClaw), AMD EPYC + NVMe, ISO 27001:2022.
  - Harga pasar Indonesia agresif: shared mulai ~Rp13.000–18.000/bln (promo), VPS mulai Rp50.000, dedicated Rp2,5 jt+.
- **Tren AI/MCP masuk ke hosting**: agent AI kini dapat mengelola deployment dan server (Hostinger Connector/Agent, DomaiNesia MCP) — beririsan dengan cara kerja agen coding di domain 1.
- Yang masih minim: deskripsi kualitatif model (lab/arsitektur) di luar params; harga Manus; harga on-demand Groq; batas "unlimited" hosting; resource limit detail per paket hosting.

## Pertanyaan terbuka

- **Halaman per model**: kandidat kuat — harga lintas 3–4 penyedia, limit, params/context.
- Metodologi Intelligence Index dan estimasi request Token Harbor.
- Apakah harga berbeda antar penyedia mencerminkan kualitas layanan (kecepatan, limit, SLA) atau margin?
- Selisih metrik Inception (TTFT <170 ms vs TTFAT 320 ms) dan token gratis 10M vs 100M.
- Hosting: batas wajar AUP "unlimited"; perbandingan apple-to-apple resource; harga perpanjangan vs promo per paket.

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
- [Hostinger](entities/hostinger.md)
- [Rumahweb](entities/rumahweb.md)
- [DomaiNesia](entities/domainesia.md)
- [Layanan Akses Model](concepts/model-access-services.md)
- [Prompt Caching](concepts/prompt-caching.md)
- [Intelligence Index (Artificial Analysis)](concepts/intelligence-index.md)
- [Hosting Web](concepts/web-hosting.md)
- [Index](index.md)

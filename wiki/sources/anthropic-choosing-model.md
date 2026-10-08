---
title: "Anthropic docs — Choosing the right model"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [anthropic, claude, models, panduan]
---

# Anthropic docs — Choosing the right model

- **Sumber**: platform.claude.com — dokumentasi *Choosing a model*
- **Penulis**: Anthropic
- **URL**: <https://platform.claude.com/docs/en/about-claude/models/choosing-a-model>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/Claude. Choosing the right model.md`

## TL;DR

Panduan resmi memilih model Claude lewat empat kriteria (capabilities, speed, cost, **effort**) dan dua strategi: **efficiency-first** (mulai Haiku 5.5, naik bila perlu) atau **capability-first** (mulai Opus 5.5, turunkan via effort/optimasi; lompat ke Fable 5.1 bila eval di `xhigh`/`max` masih kurang). Effort adalah "lever" utama — sering lebih baik daripada ganti model. Pola multi-model (executor→advisor, orchestrator→workers) disarankan untuk menekan biaya.

## Key points

- **Fast mode** (research preview): Opus 5.5/Opus 5/Opus 4.8 → output hingga **2,5× lebih cepat** dengan harga premium ([pricing](anthropic-pricing.md)).
- **Default effort**: Fable 5.1 & Opus 5 → `high`; Opus 5.5 & Haiku 5.5 → `medium`; untuk Opus 4.8/4.7, `xhigh` terbaik untuk coding/agentic.
- **Matriks pemilihan**: kapabilitas tertinggi → Fable 5.1; agentic coding kompleks → Opus 5.5; kecepatan+kemampuan harian → Sonnet 5.5; latensi/harga terendah → Haiku 5.5.
- **Fable 5.1** = model paling capable yang terbuka untuk semua pelanggan; **Mythos 5.1** = kemampuan sama tetapi hanya untuk organisasi terverifikasi (mis. Cyber Verification Program); keduanya adaptive thinking always-on.
- Catatan breaking changes Opus 5.5: thinking tak bisa dimatikan, forced tool use error, thinking blocks terikat model/percakapan, `computer_20251124` tidak diterima di Claude API & Google Cloud.
- Pola multi-model: **executor→advisor** (eskalasi keputusan sulit) dan **orchestrator→workers** (delegasi massal ke model murah) dengan contoh terukur di docs.

## Notable quotes

> "Tuning effort is often a better lever than switching models."

> "Multi-model strategies pair a lower-cost model with a frontier model so that most tokens are billed at the lower rate."

## What this changes

- Panduan operasional untuk [Anthropic](../entities/anthropic.md) (effort, fast mode, strategi biaya).
- Tidak ada kontradiksi.

## Related

- [Anthropic](../entities/anthropic.md)
- [Models overview](anthropic-models-overview.md) · [Pricing](anthropic-pricing.md)

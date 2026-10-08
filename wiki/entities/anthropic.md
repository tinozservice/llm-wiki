---
title: Anthropic
type: entity
created: 2026-10-08
updated: 2026-10-08
sources: [anthropic-models-overview, anthropic-choosing-model, anthropic-pricing, anthropic-plans-pricing, anthropic-opus, anthropic-sonnet, anthropic-haiku-55, anthropic-fable-51, anthropic-mythos-51, anthropic-mythos, anthropic-claude-code]
tags: [anthropic, claude, lab, model-provider, platform]
---

# Anthropic

**Anthropic** (Anthropic PBC) adalah lab AI AS di balik keluarga model **Claude** dan produk **Claude** (chat), **[Claude Code](claude-code.md)** (coding agent), serta **Claude Platform** (API). Entitas ini melengkapi jejak Claude yang sebelumnya hanya muncul lewat katalog agregator di wiki ([Token Harbor](token-harbor.md), [OpenCode Zen](opencode-zen.md), [Nous Portal](hermes-agent.md), [VyceAI](vyceai.md), [Puter](puter.md)) — kini dengan **harga & spesifikasi resmi** ([Models overview](../sources/anthropic-models-overview.md), [Pricing](../sources/anthropic-pricing.md)).

## Lineup model (resmi, 8 Okt)

| Model | Harga /1M (in/out) | Cache read | Konteks / Out | Thinking & effort | Status |
| --- | --- | --- | --- | --- | --- |
| **Fable 5.1** | $10 / $50 | $0,25 (0,025×) | 1M / 128K | always-on, `high` | Rilis 1 Sep 2026 — "most capable open to all customers" |
| **Mythos 5.1** | $10 / $50 | $0,25 (0,025×) | 1M / 128K | always-on, `high` | Model sama dgn Fable 5.1, **hanya organisasi terverifikasi** |
| **Opus 5.5** | $4 / $20 | $0,20 (0,05×) | 1M / 128K | always-on, `medium` | Rilis 22 Sep 2026 — daily driver agentic coding |
| **Sonnet 5.5** | $2 / $10 | $0,10 (0,05×) | 1M / 128K | adaptive, `high` | Rilis 28 Sep 2026 — speed + intelligence |
| **Haiku 5.5** | $0,10 / $0,50 (≤100K; $0,50/$2,50 >100K) | $0,01 / $0,05 | 1M / 128K | adaptive, `medium` | Rilis 7 Okt 2026 — tercepat & termurah |

- Semua: input teks+gambar → teks, knowledge cutoff **Jun 2026**, output batch beta hingga 300K, API ID `claude-{nama}-{versi}` ([overview](../sources/anthropic-models-overview.md)).
- **Tokenizer baru** (4.7+): teks yang sama ±30% lebih banyak token dari tokenizer lama ([Pricing](../sources/anthropic-pricing.md)).

## Mekanisme harga

- **Prompt caching**: write 5m 1,25×; write 1h 2×; hit standar 0,1× — dengan diskon khusus **0,025×** (Fable/Mythos 5.1) & **0,05×** (Opus/Sonnet 5.5); minimum cacheable 512 token ([Pricing](../sources/anthropic-pricing.md)).
- **Batch API**: −50% input+output (tumpuk dengan caching). **US-only inference** (`inference_geo: us`): 1,1×.
- **Fast mode** (research preview, Opus 5.5/5/4.8): Opus 5.5 **$8/$40**, Opus 5/4.8 $10/$50; hanya Claude API first-party; tidak bisa digabung batch ([Opus](../sources/anthropic-opus.md)).
- **Tool**: web search $10/1.000 pencarian; web fetch gratis; code execution gratis bila bersama web search/fetch (jika tidak: $0,05/jam setelah 1.550 jam gratis/bulan/org); overhead toolset computer use ±4.500 token ([Pricing](../sources/anthropic-pricing.md)).
- **Claude Managed Agents**: token + runtime **$0,08/session-hour**.
- **Billing cloud**: Bedrock & Google Cloud (invoice provider); Claude Platform on AWS & Microsoft Foundry via **CCU $0,01** (hourly, postpaid).

## Plan & akses

- **Konsumen/tim**: Free $0 · **Pro $17–20** · **Max dari $100** (5×/20×); Team & Enterprise (SSO/SCIM/audit/Compliance API). **Claude Code termasuk Pro+**; Fable = usage credits (Pro) / 50% weekly limits (Max); **training opt-out di semua plan** ([Plans](../sources/anthropic-plans-pricing.md)).
- **Mythos = verified-only**: Cyber & Life Sciences Verification Program; **retensi data 30 hari wajib** untuk safety monitoring; **Claude Security berjalan di Mythos 5.1**; Fable 5.1 = model dasar yang sama dengan safeguard (bio 85% lebih jarang intervensi; blokir pentest/exploit/binary scan) ([Mythos](../sources/anthropic-mythos.md)).
- **Claude Code**: terminal + IDE, lokal, izin sebelum aksi, MCP servers (mis. GitHub), platform macOS/Linux/Windows ([produk](../sources/anthropic-claude-code.md)).

## Paritas & verifikasi di wiki

- **Opus 5.5 $4/$20** = persis listing [Token Harbor](token-harbor.md)/[Zen](opencode-zen.md)/[Nous Portal](hermes-agent.md); **Sonnet 5.5 $2/$10** = resmi; harga Opus/Sonnet di [VyceAI](vyceai.md) mengikuti pola yang sama.
- **Fast mode resmi ($8/$40, 2,5×)** menjelaskan varian `claude-opus-5-fast` di [Puter](puter.md) (2,5× cepat, 2× harga) ([tutorial](../sources/puter-tutorial-claude.md)).
- **Promo caching**: docs Token Harbor menulis cache read Claude 0,1× (0,025× Fable 5.1) — resmi kini menambahkan tier 0,05× untuk Opus/Sonnet 5.5; perbandingan dicatat, bukan kontradiksi ([Token Harbor docs](../sources/tokenharbor-docs-prompt-caching.md)).
- [DeepSeek](deepseek.md) menyediakan jalur **Claude Code ↔ DeepSeek** (env `ANTHROPIC_BASE_URL`; opus→V4 Pro, sonnet/haiku→Flash) ([sumber](../sources/deepseek-integrate-claude-code.md)).

## Open questions

- **Team & Enterprise pricing** persis (per seat) — tab di klip tidak tertangkap penuh.
- **Rate limit tier** Start/Build/Scale (RPM/TPM) belum dirinci di klip.
- Nominal **kredit gratis** pengguna baru API tidak disebut.
- Harga **Bedrock & Google Cloud** (provider-operated) tidak di-ingest (hanya tautan).
- Roadmap model berikutnya & kebijakan data platform API (retensi default) belum didokumentasikan dari sumber Anthropic sendiri.

## Related

- Sumber: [Models overview](../sources/anthropic-models-overview.md) · [Pricing](../sources/anthropic-pricing.md) · [Plans](../sources/anthropic-plans-pricing.md) · [Opus](../sources/anthropic-opus.md) · [Sonnet](../sources/anthropic-sonnet.md) · [Haiku 5.5](../sources/anthropic-haiku-55.md) · [Fable 5.1](../sources/anthropic-fable-51.md) · [Mythos](../sources/anthropic-mythos.md)
- [Claude Code](claude-code.md) · [Prompt Caching](../concepts/prompt-caching.md)
- [OpenAI](openai.md) — lab frontier pembanding.
- [Layanan Akses Model](../concepts/model-access-services.md)
- [Overview](../overview.md)

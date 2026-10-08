---
title: "TypeSafe Docs — Quick Start"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [typesafe, jev, quickstart, api]
---

# TypeSafe Docs — Quick Start

- **Sumber**: Dokumentasi resmi TypeSafe — Quick start
- **Penulis**: TypeSafe
- **URL**: <https://docs.typesafe.ai/introduction/quickstart>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/typesafe docs. Quick start.md`

## TL;DR

Cara mulai tercepat dengan Jev: **Playground** (console.typesafe.ai) → **HTTP API** (`POST https://api.typesafe.ai/v1/systemone`) → **Python SDK** (`pip install typesafe-sdk`, Python ≥3.10) → **agent skill** (Claude Code plugin atau `npx skills add typesafe-ai/skills`). Contoh tiket dukungan: Choice `department`, Score `frustration`, Noul `is_urgent` — semua dijawab sekaligus dalam satu request.

## Key points

- Contoh state: keluhan koneksi Stripe 3 hari; pertanyaan Noul "Does this message express urgency?".
- Request inti: `state`, `model` (`jev-latest`), `questions` (map; tiap entry bertipe `choice`/`score`/`noul` dengan `instructions` + `criteria`).
- Contoh respons: `department` → `choice: "technical"`, `confidence: 0.78`, probabilities; `frustration` → `score: 1.0` + `legend`; `is_urgent` → `noul: 1.0`; `usage` input/output token (output dihitung walau tidak ditagih).
- SDK: client membaca `TYPESAFE_API_KEY` dari environment; tipe `Choice`, `Score`, `Noul`, `TypeSafeClient`.
- Agent skill: dua metode instalasi (`claude plugin marketplace add typesafe-ai/skills` + `claude plugin install typesafe@typesafe-ai`, atau `npx skills add typesafe-ai/skills --skill typesafe-ai`); default per-project, `-g` global; SKILL.md di GitHub typesafe-ai/skills.

## Notable quotes

> "The client reads `TYPESAFE_API_KEY` from the environment and calls `jev-latest` by default."

## What this changes

- Melengkapi [entitas Jev](../entities/jev.md) dengan jalur adopsi.
- Tidak ada kontradiksi.

## Related

- [Jev](../entities/jev.md) · [TypeSafe](../entities/typesafe.md)
- [TypeSafe — API Reference](typesafe-docs-api.md)
- [TypeSafe — Agent Skill](typesafe-docs-agent-skill.md)

---
title: "TypeSafe Docs — Agent Skill"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [typesafe, agent-skill]
---

# TypeSafe Docs — Agent Skill

- **Sumber**: Dokumentasi resmi TypeSafe — halaman Agent Skill
- **Penulis**: TypeSafe
- **URL**: <https://docs.typesafe.ai/agent-skill>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/typesafe docs. Agent skill.md`

## TL;DR

TypeSafe merilis **agent skill drop-in** untuk Claude Code, Codex, dan agen lain — memberi agen konteks penuh API TypeSafe (primitives, patterns, best practice). Instalasi via plugin marketplace Claude atau `npx skills add typesafe-ai/skills --skill typesafe-ai`; ada juga SKILL.md di GitHub.

## Key points

- Instalasi Claude Code: `claude plugin marketplace add typesafe-ai/skills` + `claude plugin install typesafe@typesafe-ai`; agen lain: `npx skills add typesafe-ai/skills --skill typesafe-ai` (pilih agent; `-g` untuk global).
- Update: marketplace update/plugin update (Claude Code), `npx skills update`, atau ganti direktori manual.
- Prompt contoh: brainstorming peluang TypeSafe di proyek; eksperimen dengan `TYPESAFE_API_KEY`; menunjuk cookbook tertentu untuk refactor kode.
- **Good vibe coding principles**: (1) diskusikan dulu dengan agen; (2) review rencana sebelum implementasi; (3) letakkan konstanta (pertanyaan & threshold) di satu tempat — agen tidak bagus menulis pertanyaan, sunting bersama; (4) jangan terima asersi apa adanya.
- Common issues: skill tidak terpakai; routing tidak sesuai (threshold terlalu tinggi/rendah); kebanyakan memakai confidence padahal cukup pilih opsi paling tinggi; kode sulit direview (questions + threshold sebaiknya di satu file); agen "mengarang" field API karena skill basi → update.

## Notable quotes

> "The most important thing for humans to review is the questions and any threshold constants used in your TypeSafe code."

## What this changes

- Pattern distribusi "agent skill" (mirip skill kustom di [OpenCode](../entities/opencode.md)/harness lain) masuk wiki.
- Tidak ada kontradiksi.

## Related

- [TypeSafe](../entities/typesafe.md) · [Jev](../entities/jev.md)
- [TypeSafe — Quick Start](typesafe-docs-quickstart.md)

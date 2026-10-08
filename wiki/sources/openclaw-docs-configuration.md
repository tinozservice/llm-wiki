---
title: "OpenClaw Docs — Configuration"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openclaw, docs, configuration]
---

# OpenClaw Docs — Configuration

- **Sumber**: docs.openclaw.ai/gateway/configuration
- **Penulis**: OpenClaw AI
- **URL**: <https://docs.openclaw.ai/gateway/configuration>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenClaw Docs. Configuration.md`

## TL;DR

Config OpenClaw = file **JSON5 opsional** di `~/.openclaw/openclaw.json` (tanpa file = default aman). Dua "bucket": root sibling = infrastruktur & default lintas agen; `agents.defaults` = perilaku agent-loop; `agents.entries` bisa override per agen. Validasi ketat: key tak dikenal → **Gateway menolak start** (perbaiki dengan `openclaw doctor --fix`).

## Key points

- Cara edit: wizard (`openclaw onboard`/`configure`), CLI one-liner (`openclaw config get/set/unset`), **Control UI** (form dari live schema + editor Raw JSON + `config.schema.lookup`), atau edit langsung (Gateway **hot reload**).
- Skema: `openclaw config schema` mencetak JSON Schema kanonik; `uiHints.advanced` hanya memengaruhi presentasi (common vs advanced).
- Migrasi startup deterministik (sama seperti doctor); config lama disimpan di `.bak` ring; `$include`/Nix/config versi lebih baru tidak otomatis dimigrasi.
- Bila validasi gagal: Gateway tidak boot, hanya perintah diagnostik (`doctor`, `logs`, `health`, `status`); `openclaw doctor --fix` menerapkan perbaikan; last-known-good **tidak** direstore otomatis kecuali oleh doctor.
- Proteksi clobber: tulisan yang tampak menghapus `gateway.mode` atau menyusutkan file >50% diblokir; payload ditolak disimpan sebagai `<path>.rejected.<timestamp>`; placeholder redacted (`***`) menghalangi promosi last-known-good.

## Notable quotes

> "OpenClaw only accepts configurations that fully match the schema."

## What this changes

- Melengkapi [OpenClaw](../entities/openclaw.md) (kontrak konfigurasi).
- Tidak ada kontradiksi.

## Related

- [OpenClaw](../entities/openclaw.md)
- [OpenClaw Docs — Onboarding (CLI)](openclaw-docs-onboarding-cli.md) · [OpenClaw Docs — Team Setup](openclaw-docs-team-setup.md)

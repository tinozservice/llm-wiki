---
title: "DeepSeek — Integrate with Hermes Agent"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [deepseek, integration, hermes]
---

# DeepSeek — Integrate with Hermes Agent

- **Sumber**: api-docs.deepseek.com/quick_start/agent_integrations/hermes
- **Penulis**: DeepSeek AI
- **URL**: <https://api-docs.deepseek.com/quick_start/agent_integrations/hermes>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/DeepSeek Docs. Integrate with Hermes Agent  DeepSeek API Docs.md`

## TL;DR

[Hermes Agent](../entities/hermes-agent.md) (Nous Research) memakai DeepSeek sebagai provider resmi: pasang via installer satu baris, lalu `hermes setup` → Quick Setup → pilih provider **DeepSeek** → masukkan API key → base URL `https://api.deepseek.com` → pilih `deepseek-v4-pro`.

## Key points

- Instalasi: `curl … hermes-agent …/scripts/install.sh | bash` (prasyarat hanya Git).
- Alur konfigurasi identik dengan provider lain Hermes (wizard).
- Konteks wiki: Hermes juga menjual model DeepSeek via **Nous Portal** (mis. DeepSeek V4.1 Flash $0.11/$0.51) — panduan ini jalur BYO-key langsung ke DeepSeek.

## Notable quotes

> "When prompted for the model provider, select DeepSeek."

## What this changes

- Entitas [DeepSeek](../entities/deepseek.md) & [Hermes Agent](../entities/hermes-agent.md) (koneksi resmi dua arah).
- Tidak ada kontradiksi.

## Related

- [DeepSeek](../entities/deepseek.md) · [Hermes Agent](../entities/hermes-agent.md)
- [DeepSeek — Integrate with OpenClaw](deepseek-integrate-openclaw.md)

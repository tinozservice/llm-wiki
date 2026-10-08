---
title: "OpenClaw Blog — Onboarding macOS & Model Lokal Windows RTX"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openclaw, blog, onboarding, windows, macos]
---

# OpenClaw Blog — Onboarding macOS & Model Lokal Windows RTX

- **Sumber**: openclaw.ai/blog/macos-installer-windows-local-ai
- **Penulis**: OpenClaw Team / OpenClaw AI
- **URL**: <https://openclaw.ai/blog/macos-installer-windows-local-ai>
- **Tanggal publikasi**: 2026-09-03; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenClaw Blog. OpenClaw improves user onboarding with a new installer on macOS, plus easier local model setup for Windows NVIDIA RTX PCs.md`

## TL;DR

Onboarding dipermudah: **installer native macOS** (UI seperti aplikasi biasa, tanpa terminal; deteksi otomatis akses AI yang sudah ada — Claude/Codex/Ollama) dan **setup model lokal di Windows NVIDIA RTX** — GPU RTX ≥24GB RAM dideteksi saat onboarding, lalu menyarankan model kelas **30B yang berjalan sepenuhnya lokal** (dikelola lewat llama-server). Juga: layar izin (permissions) seragam di macOS & Windows + dukungan **MXC (Microsoft Execution Containers)**.

## Key points

- Konteks: feedback bahwa setup >30 menit jadi penghalang; Windows App installer sudah hadir Juni, kini versi macOS.
- RTX: mendukung GeForce RTX & RTX PRO; rencana NVIDIA RTX Spark & DGX Station for Windows; model lokal = kendali data + "private, unmetered intelligence".
- Permissions: macOS mendapat layar tunggal review akses sistem (seperti Windows); MXC gratis open-source, GA diperkirakan musim gugur.
- Windows app: managed local AI via llama-server + perbaikan startup/limit/routing.
- Untuk enterprise: agen otonom dengan keamanan/governance/visibilitas lebih kuat + mengurangi ketergantungan cloud.

## Notable quotes

> "Whether you're on a Mac or a Windows NVIDIA RTX PC, a clearer setup lets you decide what OpenClaw has the keys to."

## What this changes

- Entitas [OpenClaw](../entities/openclaw.md) (onboarding & model lokal).
- Tidak ada kontradiksi.

## Related

- [OpenClaw](../entities/openclaw.md)
- [OpenClaw Blog — 2.0](openclaw-blog-2-0.md) · [OpenClaw Docs — Install](openclaw-docs-install.md)

---
title: "OpenClaw Blog — Audit Keamanan Trail of Bits (Patch the Planet)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openclaw, blog, security, audit]
---

# OpenClaw Blog — Audit Keamanan Trail of Bits (Patch the Planet)

- **Sumber**: openclaw.ai/blog/openclaw-trail-of-bits-engagement-recap
- **Penulis**: Josh Avant / OpenClaw AI
- **URL**: <https://openclaw.ai/blog/openclaw-trail-of-bits-engagement-recap>
- **Tanggal publikasi**: 2026-09-21; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenClaw Blog. OpenClaw Completes Security Audit Through OpenAI's Patch the Planet Initiative.md`

## TL;DR

Audit keamanan luas oleh **Trail of Bits** via inisiatif **Patch the Planet (OpenAI)** — kombinasi riset keamanan berbantuan AI (Codex) + review manusia: **27 advisory privat + 3 PR hardening**; dari 24 laporan berseveritas: **0 Critical, 2 High, 16 Medium, 6 Low**; 3 temuan defense-in-depth tanpa severity. **Semua isu diperbaiki** dan dikirim di rilis stabil **2026.8.1 & 2026.7.33 LTS**.

## Key points

- Tema temuan berulang: (1) **permission tidak mengikuti request antar langkah** (pekerjaan lanjutan kehilangan/mendapat akses); (2) **satu hal dua nama** (cek keamanan melihat nama A, sistem memakai nama B); (3) **cek ≠ yang benar-benar dipakai** (arsip diperiksa sebagian; path berubah setelah approval); (4) **permission bisa berubah saat agen bekerja** (fitur dimatikan tapi run lama tetap memakai akses).
- Perbaikan pola: ikat approval ke file/identitas/aksi persis; cek lagi bila berubah; tool memeriksa setting saat beraksi; pekerjaan lanjutan tidak mewarisi akses hanya karena konteks hilang.
- Pelajaran: tes harus mengeksekusi trust boundary nyata, bukan helper tempat bug muncul.

## Notable quotes

> "Permissions and identity must follow a request for as long as OpenClaw is working on it."

## What this changes

- Entitas [OpenClaw](../entities/openclaw.md) (rekam jejak keamanan).
- Tidak ada kontradiksi.

## Related

- [OpenClaw](../entities/openclaw.md)
- [OpenClaw Docs — Policy as Code](openclaw-docs-policy-as-code.md) · [OpenClaw Docs — Trust Boundary](openclaw-docs-trust-boundary.md)

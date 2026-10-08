---
title: "OpenClaw Docs — The Trust Boundary"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openclaw, docs, security, sandbox]
---

# OpenClaw Docs — The Trust Boundary

- **Sumber**: docs.openclaw.ai/start/why-openclaw/the-trust-boundary
- **Penulis**: OpenClaw AI
- **URL**: <https://docs.openclaw.ai/start/why-openclaw/the-trust-boundary>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenClaw Docs. The trust boundary.md`

## TL;DR

Model kepercayaan OpenClaw: **Gateway = control plane tepercaya** (koneksi channel, config, kredensial via SecretRefs, state berversi) dan **eksekusi terisolasi = untrusted** (sandbox Docker/Podman/SSH/OpenShell, node hosted, cloud worker). **Sandboxing off by default** — OpenClaw default = asisten satu operator tepercaya; postur enterprise = konfigurasi eksplisit yang bisa diverifikasi.

## Key points

- Gateway bind loopback default; menolak bind non-loopback tanpa jalur auth.
- `tools.exec.host` → host gateway / sandbox / node terpasang; escape per-call ke host ditolak saat sandbox aktif; `host=sandbox` tanpa runtime = gagal (bukan diam-diam jalan di host).
- Profil Docker/Podman default: tanpa network, root read-only, semua capability di-drop, user non-root; OpenShell sebagai plugin backend; bind mount divalidasi dua kali (path ternormalisasi + setelah resolusi ancestor) — denylist path kredensial/system **tidak bisa dimatikan**.
- **Node terpasang**: artefak worker tersegel, hash diverifikasi di 3 titik (download, manifest, setiap reuse); tanpa instal paket/lifecycle script; tiap sesi bisa dikontainerkan secara lokal.
- **Cloud workers**: mesin sekali pakai, RPC allowlist tertutup, kredensial per-dispatch (TTL 10 menit, disimpan hashed), tanpa kredensial standing; inference diproksikan lewat Gateway; transkrip durable hanya di Gateway.
- Verifikasi postur: `openclaw sandbox explain`, `openclaw security audit` (check ID stabil).
- Perbandingan singkat vs Hermes: Hermes dapat memindahkan terminal/file/Python ke backend remote; desain cloud worker OpenClaw menambahkan lifecycle milik Gateway, otoritas RPC terbatas, inference terproksi, dan transkrip milik Gateway.

## Notable quotes

> "Sandboxing is off by default. Out of the box, OpenClaw is a personal assistant for one trusted operator."

## What this changes

- Entitas [OpenClaw](../entities/openclaw.md) (model keamanan).
- Tidak ada kontradiksi.

## Related

- [OpenClaw](../entities/openclaw.md)
- [OpenClaw Docs — Policy as Code](openclaw-docs-policy-as-code.md) · [OpenClaw Docs — Why OpenClaw](openclaw-docs-why-openclaw.md)

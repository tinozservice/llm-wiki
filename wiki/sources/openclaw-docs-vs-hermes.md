---
title: "OpenClaw Docs — OpenClaw vs Hermes Agent"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openclaw, hermes, comparison, security]
---

# OpenClaw Docs — OpenClaw vs Hermes Agent

- **Sumber**: docs.openclaw.ai/start/why-openclaw/openclaw-and-hermes-agent
- **Penulis**: OpenClaw AI
- **URL**: <https://docs.openclaw.ai/start/why-openclaw/openclaw-and-hermes-agent>
- **Tanggal publikasi**: tidak dicantumkan ("review 27 Agustus 2026, snapshot `6defe7eb6c`"); klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenClaw Docs. OpenClaw and Hermes Agent.md`

## TL;DR

Dokumen perbandingan resmi (sudut pandang OpenClaw) antara OpenClaw dan **Hermes Agent (Nous Research, MIT)** — membandingkan source pada snapshot Agustus 2026: trust boundary, policy gate, harness vendor, eksekusi kode, roles, secrets, email, upgrade, memory provenance, audit, plugin, security record, governance, dan pendanaan. Disertai catatan bahwa ini bukan uji adversarial & bukan jaminan.

## Key points

- **Governance/funding** (baris paling mencolok): OpenClaw = yayasan 501(c)(3) donasi, tanpa tier berbayar; Hermes = venture-backed (**Paradigm-led Series A**; laporan TechCrunch $75M pada valuasi $1,5B, Juli 2026) dengan **tier Nous Portal $20–200/bln** sebagai model bisnis; Nous Portal mengumpulkan prompt/upload/output kecuali Privacy Mode; agen self-hosted Hermes sendiri tidak mengirim telemetri.
- **Trust boundary**: OpenClaw = otoritas milik Gateway, eksekusi sandbox/node/cloud-worker terpisah; Hermes = dispatch tool milik parent, kerja terminal/file/Python bisa ke backend remote.
- **Policy gate**: OpenClaw = tool policy struktural + denial deterministik; Hermes = "smart review" di belakang deny hardline/konfigurasi; cron/one-shot default deny, jalur headless lain bisa auto-approve.
- **Memory**: Hermes menghapus entri tanpa tombstone sesi sumber (fakta bisa masuk lagi); autonomous write default on (opsional approval). OpenClaw: provenance terlacak, admission policy, purge attributable + forgotten-session records.
- **Kredensial**: Hermes = env/vault, resolusi profil scoped, opsi proxy token Docker; tanpa batas redaksi transcript-store umum. OpenClaw = SecretRefs + sentinel egress.
- Catatan historical Hermes (dari laporan pihak ketiga, ditandai jelas oleh penulis): audit statis v0.8.0 user-reported (4 critical/9 high), updater failure & memory leak (closed dengan fix), CVE third-party CNA (CVE-2026-14625) dengan catatan non-response vendor; **nol advisory repo publik Hermes** pada tanggal review.
- Kesimpulan penulis: "kedua proyek menjawab kepada pihak yang berbeda" — pilih insentif yang Anda inginkan mengarah ke Anda.

## Notable quotes

> "We are not saying Hermes is worse engineering. We are saying the two projects answer to different people."

## What this changes

- Sumber terpenting untuk [Hermes Agent](../entities/hermes-agent.md) (insentif bisnis, Nous Portal) dan [OpenClaw](../entities/openclaw.md).
- **Bias vendor**: seluruh dokumen ditulis OpenClaw; klaim tentang Hermes harus dibaca sebagai posisi kompetitif, bukan verifikasi independen.
- Tidak ada kontradiksi keras (dicatat sebagai perspektif).

## Related

- [OpenClaw](../entities/openclaw.md) · [Hermes Agent](../entities/hermes-agent.md)
- [OpenClaw Docs — Why OpenClaw](openclaw-docs-why-openclaw.md)
- [Platform Agen Self-Hosted](../concepts/self-hosted-agent-platforms.md)

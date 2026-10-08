---
title: "OpenClaw Docs — Why OpenClaw (arsitektur & governance)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openclaw, arsitektur, security, governance, hermes]
---

# OpenClaw Docs — Why OpenClaw (arsitektur & governance)

- **Sumber**: docs.openclaw.ai/start/why-openclaw
- **Penulis**: OpenClaw AI
- **URL**: <https://docs.openclaw.ai/start/why-openclaw>
- **Tanggal publikasi**: tidak dicantumkan ("source review 27 Agustus 2026"); klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenClaw Docs. Why OpenClaw.md`

## TL;DR

Esai arsitektur & tata kelola: agen memperoleh **kredensial, membaca email, menjalankan perintah** — jadi arsitektur menentukan *apa yang bisa* dilakukan, sebelum kebijakan menentukan *apa yang boleh*. OpenClaw memisahkan **Gateway tepercaya** dari **eksekusi tak-tepercaya**, menegakkan **policy as code**, dan dinaungi yayasan netral (501(c)(3), MIT, rilis ditandatangani). Dokumen ini juga memuat **perbandingan eksplisit vs Hermes Agent**.

## Key points

- **Tujuh properti yang harus dibuktikan harness enterprise**: (1) trust boundary terpisah; (2) policy = code (denial struktural, bukan permintaan ke model); (3) akses terautentikasi & role terbatas (default-deny); (4) secret punya pemilik (kegagalan terisolasi); (5) state berversi + upgrade terjaga; (6) provenance tercatat (memori/audit/deletion limits); (7) stewardship independen (tanpa edisi enterprise terpisah, rilis ditandatangani).
- **Jawaban OpenClaw**: sandbox/node/cloud worker memisahkan eksekusi dari otoritas Gateway; tool availability & exec denial di kode; pairing mode untuk pengirim tak dikenal; **SecretRefs** (nilai rahasia pakai handle + egress substitution); schema versioned + release channels; memori dapat di-purge dengan batas yang didokumentasikan.
- **Harness vendor sebagai plugin**: Codex app-server, Copilot SDK, Claude Code CLI jadi runtime native (OpenClaw tetap pemilik channels/sessions/policy/state); ~150 entrypoint SDK plugin dengan "shrink-only surface budgets"; registry **ClawHub** (publish, moderasi, security audit, verdict per rilis; scan VirusTotal/ClawScan/static).
- **Standar terbuka**: MCP client+server, **A2A 1.0** (Linux Foundation), Agent Client Protocol (ACP), AgentSkills spec, OpenAI-compatible API di Gateway (`/v1/chat/completions`, `/v1/responses`, `/v1/models`, `/v1/embeddings` — default off), OpenTelemetry, Prometheus, Bonjour/DNS-SD, Matrix/IRC/Nostr native, npm provenance.
- **Kerja bersama**: gateway bersama → sesi dengan creator/owner/prompter, presence, git co-author credit, cloud workers, portal dev-server, worker desktop VNC (loopback-only, single-use broker ticket).
- **Perbandingan vs Hermes Agent** (vendor OpenClaw): Hermes = CLI+messaging+desktop+plugin oleh Nous Research (venture, MIT); policy gate "smart review" vs policy code; memory Hermes tanpa tombstone sumber; upgrade via fast-forward git; **Nous Research terdaftar di portofolio Paradigm; putaran $75M pada valuasi $1,5B (TechCrunch Juli 2026); tier berbayar $20–200/bln sebagai model bisnis; Nous Portal mengumpulkan prompt/output kecuali Privacy Mode**. OpenClaw: yayasan donasi, "no paid tier, no hosted service, no token".
- **What we do not claim** (transparansi): sandboxing & exec approvals **off by default**; satu gateway = satu trust domain; plugin native in-process tanpa sandbox; egress allowlisting hanya trafik kooperatif; memori promoted tanpa retensi berbasis waktu.
- **Hardened setup**: sandbox mode "all" (OpenShell/Docker), `workspaceAccess: "ro"`, permission mode `guarded`/`workspace`, Tailscale/identity-aware proxy, `gateway.roles` default deny-all, SecretRefs + `openclaw secrets audit --check`, message auditing + OTel, `openclaw security audit --deep`.
- Records: 647 advisory OpenClaw di repo publik vs **nol advisory Hermes** pada tanggal review (catatan: hitungan disclosure, bukan skor keamanan).

## Notable quotes

> "An assistant that acts for you holds credentials, reads mail, and runs commands on real computers. The architecture decides what it *can* do long before any policy decides what it *may*."

> "The aim is to be the Switzerland of AI: neutral ground for every model and every lab."

## What this changes

- Sumber utama profil keamanan & governance [OpenClaw](../entities/openclaw.md); mempertajam [perbandingan OpenClaw↔Hermes](../sources/openclaw-docs-vs-hermes.md).
- Klaim kompetitif vendor (vs Hermes/Nous) dicatat **sebagai sudut pandang vendor**, bukan fakta netral.
- Tidak ada kontradiksi keras; lihat catatan nuansa "no enterprise edition" vs rilis OCE di [entitas](../entities/openclaw.md).

## Related

- [OpenClaw](../entities/openclaw.md) · [Hermes Agent](../entities/hermes-agent.md)
- [OpenClaw Docs — Trust Boundary](openclaw-docs-trust-boundary.md) · [Policy as Code](openclaw-docs-policy-as-code.md) · [vs Hermes](openclaw-docs-vs-hermes.md)
- [Platform Agen Self-Hosted](../concepts/self-hosted-agent-platforms.md)

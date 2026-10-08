---
title: "OpenClaw Docs — Policy as Code"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [openclaw, docs, security, policy]
---

# OpenClaw Docs — Policy as Code

- **Sumber**: docs.openclaw.ai/start/why-openclaw/policy-as-code
- **Penulis**: OpenClaw AI
- **URL**: <https://docs.openclaw.ai/start/why-openclaw/policy-as-code>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/OpenClaw Docs. Policy as code.md`

## TL;DR

Penegakan deterministik: **denial bersifat struktural, bukan permintaan yang diharapkan dipatuhi model**. Tiga kontrol terpisah: **sandbox** (di mana tool berjalan), **tool policy** (tool mana yang ada; deny selalu menang), dan **elevated** (escape hatch exec-only yang tak bisa menimpa deny). Approval mengikat perintah ke binding persisnya; drift = deny; tanpa UI approval = deny by default.

## Key points

- Permission modes membentuk tool: sesi `read-only` menghapus `edit`, `write`, `apply_patch`; `full` butuh `operator.admin`; scopes diturunkan dari parameter request sebelum dispatch.
- Exec approvals: mengikat command kanonik, cwd, hash environment, operand file ber-hash; pipeline/rantai perintah yang didukung memakai execution plan; bentuk shell yang tak bisa diikat = ditolak; kasus strict (inline eval, heredoc) selalu deny.
- Audit ledger mencatat outcome terblokir (tanpa rule yang match — itu di log debug).
- Peringatan eksplisit: tool policy memfilter **berdasarkan nama, bukan efek samping** — mengizinkan `exec` sambil menolak `write` tidak membuat shell jadi read-only; pembatasan efek samping = tanggung jawab sandbox.
- Catatan konteks: gating deterministik juga ada di Claude Code, Codex, Goose; yang lebih jarang = gating tool struktural di asisten multi-channel.

## Notable quotes

> "Denial is structural, not a request the model is asked to honor; approval paths fail closed."

## What this changes

- Entitas [OpenClaw](../entities/openclaw.md) (policy).
- Tidak ada kontradiksi.

## Related

- [OpenClaw](../entities/openclaw.md)
- [OpenClaw Docs — Trust Boundary](openclaw-docs-trust-boundary.md) · [OpenClaw Blog — Security Audit](openclaw-blog-security-audit.md)

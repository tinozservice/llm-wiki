---
title: Dots
type: entity
created: 2026-10-08
updated: 2026-10-08
sources: [openai-dots, openai-learn-dots]
tags: [openai, dots, agent, always-on]
---

# Dots

**Dots** adalah produk agen **always-on** OpenAI: "remarkably capable, always-on agents built to handle everything — powered by **GPT-6 Astra**" ([halaman produk](../sources/openai-dots.md), [panduan](../sources/openai-learn-dots.md)). Setiap "dot" adalah agen pribadi yang hidup **di cloud dengan komputer & browser sendiri**, belajar prioritas pengguna, mengambil tugas berkelanjutan, dan **terus bekerja di antara percakapan**.

## Cara kerja

- **Memori & konteks**: mulai dari memori ChatGPT + catatan sendiri (preferensi, keputusan, pekerjaan berjalan); memori mengikuti agen lintas channel; riset read-only, aksi butuh permission.
- **Channel**: ChatGPT (desktop/mobile/web), **Slack, Microsoft Teams, atau panggilan suara**; handle `@nama-dot`; satu dot di semua surface (bukan memori terpisah per channel).
- **Komputer**: komputer cloud sendiri (take over/return control); bisa menghubungkan **satu** komputer pribadi (file lokal/apps; komputer harus online); plugin (Gmail/Drive/GitHub…) dengan izin yang ada; sign-in web via flow privat.
- **Task**: background agents, cloud threads, task Work/Codex (termasuk Codex cloud environment); Activity untuk inspeksi; pause/stop terpisah per task.
- **Keamanan**: safeguards bawaan + **Auto-review** (approval untuk aksi berdampak; ganti password tetap di user); Custom Rules opsional.

## Akses

- **Pro 100/200/500** (18+, di luar EEA/UK/Swiss), **Business Premium** (worldwide), **Enterprise** (default off; diaktifkan admin). Rollout bertahap. "Texting your dot is coming next."

## Open questions

- Harga/credit khusus dots tidak dirinci di klip.
- Detail teknis sandbox & retensi memori dot belum terdokumentasi di wiki.

## Related

- Sumber: [Dots — produk](../sources/openai-dots.md) · [Learn — Meet dots](../sources/openai-learn-dots.md)
- [OpenAI](openai.md) · [Codex](codex.md)
- [Platform Agen Self-Hosted](../concepts/self-hosted-agent-platforms.md) — pembanding konsep (dots = hosted, bukan self-hosted).

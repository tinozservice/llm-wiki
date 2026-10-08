---
title: "DeepSeek Harness — Schedule Reminders"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [deepseek-harness, dsh, otomasi, reminder]
---

# DeepSeek Harness — Schedule Reminders

- **Sumber**: deepseek-harness.github.io/en/guide/schedule
- **Penulis**: DeepSeek Harness
- **URL**: <https://deepseek-harness.github.io/deepseek-harness/en/guide/schedule>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/DeepSeek Harness Docs. Schedule reminders  DeepSeek Harness.md`

## TL;DR

Plugin **Automation tasks** (opsional, grup Official; bundle eksperimental `@deepseek-ai/dsh-experimental-schedule-bundle`) menambah penjadwalan: buat/list/edit/hapus reminder lewat chat (`schedule_create/list/update/delete`). Dukungan: delay sekali, tanggal-waktu absolut, interval tetap (≥1 menit), harian dengan zona IANA, mingguan + hari ISO, atau **cron 5-field** dengan zona eksplisit.

## Key points

- Halaman Automation tasks: telusuri lintas Session tanpa membuka percakapan; filter All/Enabled/Inactive; **delivery records** (20 terbaru + "load older"), retensi via `deliveryHistoryDays`/`deliveryHistoryRecords`; edit nama/instruksi/waktu untuk task aktif (draft lokal → Save).
- Timing: daily mengikuti waktu & zona tersimpan; fixed-rate selaras sejak dibuat (atau sejak save setelah diubah); waktu lokal yang tidak ada dilewati; tabrakan DST memakai instan lebih awal.
- **Tidak menjamin exactly-once**: record = pesan tersimpan di inbox percakapan, bukan bukti model menyelesaikan tugas; crash bisa mengulang delivery.
- Batasan: tanpa pause & tanpa session baru per run; reminder hanya di log sesi lama tidak dijadwalkan otomatis.

## Notable quotes

> "Saved delivery records confirm messages persisted in the conversation inbox, not that the model completed the requested work."

## What this changes

- Entitas [DeepSeek Harness](../entities/deepseek-harness.md) (otomasi).
- Tidak ada kontradiksi.

## Related

- [DeepSeek Harness](../entities/deepseek-harness.md)
- [DeepSeek Harness — GitHub Webhooks](deepseek-harness-github-webhooks.md)

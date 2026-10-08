---
title: DomaiNesia
type: entity
created: 2026-10-02
updated: 2026-10-08
sources: [domainesia-web-hosting, domainesia-cloud-hosting, domainesia-cloud-vps-lite, domainesia-cloud-vps-turbo, domainesia-managed-vps, domainesia-object-storage, domainesia-dedicated-server]
tags: [domainesia, hosting, vps, ai]
---

# DomaiNesia

**DomaiNesia** adalah penyedia hosting Indonesia (sejak 2009; 300.000+ pelanggan; ISO/IEC 27001:2022). Pembeda utamanya: **integrasi [MCP (Model Context Protocol)](../concepts/mcp.md)** yang menghubungkan hosting langsung ke AI seperti ChatGPT, Claude, OpenCode, dan OpenClaw; infrastruktur AMD EPYC + SSD NVMe dengan cPanel ([web hosting](../sources/domainesia-web-hosting.md)).

## Produk & harga (IDR, promo)

| Produk | Paket | Harga promo |
| --- | --- | --- |
| Web hosting | Nimbus One / Go / Plus / Cloud | Rp18.000 / 32.000 / 59.000 / 112.500 per bln |
| Cloud hosting | Cirrus 2GB / 4GB / 12GB | Rp112.500 / 210.000 / 705.000 per bln |
| Cloud VPS Lite | 1–32 GB (Intel Xeon Platinum, RAID10) | Rp43.200 – Rp2.065.500 per bln |
| Cloud VPS Turbo | 1–64 GB (EPYC Genoa, 3× replikasi) | Rp80.000 – Rp4.800.000 per bln |
| Managed VPS | Pluton 2 / 4 / 8 GB | Rp985.500 – Rp1.777.500 per bln |
| Dedicated Server | Neva Xeon/Milan/Genoa (+GPU L4) | Rp4.799.000 – Rp13.950.000 per bln |
| Object Storage | S3-compatible 15 GB–10 TB | dari Rp12.000/bln |
| Lainnya | Email / SSL / WP hosting | dari Rp3.500/bln / Rp94.050/th / Rp25.000/bln |

- Nimbus: disk 2–25 GB; Go/Plus unlimited website/database/email/bandwidth, domain gratis, 2×/4× performa; Cloud 40 GB semi-dedicated, 8× performa.
- Cirrus: 2–24 GB RAM (2–7 core), disk 40–320 GB (paket unggulan 2/4/12 GB), akses SSH, Direct Connect 10G ke CDN (Akamai, Cloudflare).
- Fitur teknis: HTTP/3 QUIC, Brotli, LiteSpeed SAPI, Nginx cache, CloudLinux; bahasa PHP, Node.js, Python, Ruby, Go, Rust; database MySQL/PostgreSQL/MongoDB/SQLite; Git/SFTP/FTP.
- Keamanan: Imunify360, WAF, DDoS, 2FA, CageFS, Let's Encrypt SSL, backup offsite/weekly + restore wizard.
- Promo: "Beli 1 Dapat 2" domain; diskon paket s.d. 50%.
- Support 24/7 manusia (bukan chatbot), uptime 99,9%, garansi uang kembali 100%, rating 4,8/5.

## Lini VPS & server (klip 3 Okt)

- **Cloud VPS Lite** — ekonomis; Intel Xeon Platinum, RAID10, jaringan 1 Gbps; 1–32 GB; diskon 10% (kode `CLOUDVPSHEMAT`, siklus 1 tahun).
- **Cloud VPS Turbo** — AMD EPYC Genoa (Zen4, 96C/192T, DDR5-4800, PCIe 5.0), **3× replikasi data**, 40 GbE, direct connect 10G, IPv6, failover otomatis; diskon 50% (`CLOUDHANDAL`).
- **Managed VPS (Pluton)** — dikelola penuh (monitoring, maintenance, patch); gratis cPanel, CloudLinux, Imunify360, SSL, migrasi; weekly backup (mulai Pluton 4GB).
- **Dedicated Server (Neva)** — HPE ProLiant enterprise; Xeon/EPYC 8–64 core; varian **GPU NVIDIA L4** (Rp13.599.000) untuk AI/ML; proteksi DDoS; use case e-commerce, game, big data.
- **Object Storage** — S3-compatible, 15 GB–10 TB, 3× replikasi (uptime 99,99%), HTTP/3 + Brotli, Cloudflare CDN, unlimited bandwidth ([sumber](../sources/domainesia-object-storage.md)).

## Open questions

- Detail paket Cirrus 8/16/24 GB (harga tidak tercantum di klip; hanya tabel perbandingan).
- Apa dan bagaimana "MCP Hosting" diaktifkan (FAQ tidak termuat isinya).
- Harga perpanjangan beberapa layanan lain.

## Related

- [DomaiNesia — Web Hosting (sumber)](../sources/domainesia-web-hosting.md)
- [DomaiNesia — Cloud Hosting (sumber)](../sources/domainesia-cloud-hosting.md)
- [DomaiNesia — Cloud VPS Turbo (sumber)](../sources/domainesia-cloud-vps-turbo.md)
- [DomaiNesia — Dedicated Server (sumber)](../sources/domainesia-dedicated-server.md)
- [Hostinger](hostinger.md) · [Rumahweb](rumahweb.md) · [Exabytes](exabytes.md) — pembanding.
- [Overview](../overview.md)

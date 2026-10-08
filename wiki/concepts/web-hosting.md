---
title: Hosting Web
type: concept
created: 2026-10-02
updated: 2026-10-08
sources: [hostinger-cloud-hosting, hostinger-vps, hostinger-nodejs-overview, rumahweb-shared-hosting, rumahweb-vps, domainesia-web-hosting, domainesia-cloud-hosting, exabytes-web-hosting-murah, exabytes-vps-linux, exabytes-nvme-vps-hermes, exabytes-nvme-vps-openclaw, openclaw-docs-install]
tags: [hosting, web, vps, indonesia]
---

# Hosting Web

**Hosting web** adalah layanan menyimpan file, database, dan email agar situs dapat diakses di internet. Perbedaannya terletak pada **isolasi resource** (shared vs dedicated) dan **tingkat manajemen** (managed vs self-managed).

## Jenis layanan

- **Shared hosting** — satu server untuk banyak pengguna; resource dibagi; paling murah (mis. Hostinger Single Rp12.900/bln promo 48 bulan; Rumahweb Entry Rp15.000; DomaiNesia Nimbus One Rp18.000).
- **Cloud hosting** — jaringan server virtual; redundancy lebih baik, resource lebih besar dari shared; dikelola provider (mis. Hostinger Cloud Startup Rp116.900; Rumahweb Grow; DomaiNesia Cirrus 2GB Rp112.500).
- **VPS (KVM)** — virtual machine terisolasi dengan resource dedicated dan **full root access**; self-managed (opsi managed berbayar). Contoh entry: Rumahweb XS Rp50.000; Hostinger KVM 1 Rp116.900; DomaiNesia Cloud VPS Rp80.000.
- **Dedicated server** — server fisik eksklusif; termahal, kontrol penuh; tersedia varian GPU (Rumahweb NVIDIA T4/L4).

## Dimensi pembanding

- **Resource**: CPU/RAM/disk/inode/entry process (EP)/bandwidth — "unlimited" tetap tunduk AUP.
- **Keandalan**: SLA uptime (99,9%–99,995%), tier datacenter (Tier 3/4), availability zone ganda (Rumahweb Zone A TechnoVillage + Zone B DCI).
- **Manajemen & tooling**: cPanel (Rumahweb NOC Partner; DomaiNesia cPanel kustom) vs hPanel (Hostinger); 1-click CMS; SSH/Git; dukungan Node.js/Python.
- **Keamanan & backup**: SSL gratis, WAF, Imunify360/Monarx, malware scan, DDoS, backup harian/mingguan + restore.
- **Lokasi server**: memengaruhi latensi (Singapura ~17 ms untuk Hostinger; server Indonesia untuk Rumahweb/DomaiNesia).
- **Kebijakan**: siklus pembayaran & harga perpanjangan, refund, downgrade, bantuan migrasi, pembatasan port 25.

## Provider di wiki

| Provider | Rentang produk | Pembeda |
| --- | --- | --- |
| [Hostinger](../entities/hostinger.md) | Shared, cloud, VPS KVM, **managed Node.js (Web App)** | Hostinger Agent & Connector (MCP untuk agen AI), auto-deploy GitHub, vulnerability auto-fix PR |
| [Rumahweb](../entities/rumahweb.md) | Shared, unlimited, VPS KVM, VPS Alibaba, dedicated | Turbo Booster (LiteSpeed), dual availability zone, cPanel NOC Partner, dedicated GPU |
| [DomaiNesia](../entities/domainesia.md) | Web hosting Nimbus, cloud Cirrus, **Cloud VPS Lite/Turbo, Managed VPS, Object Storage, Dedicated (GPU L4)** | **Integrasi MCP AI** (ChatGPT/Claude/OpenCode/OpenClaw), AMD EPYC Genoa + NVMe, 3× replikasi, ISO 27001:2022 |
| [Exabytes](../entities/exabytes.md) | Web hosting cPanel/Plesk "AI", WP hosting, VPS Linux NVMe & Windows SSD, **VPS aplikasi AI (Hermes/OpenClaw/n8n)**, dedicated Linux/Windows, domain, bizapp (M365, Google Workspace, Heylink, Lark) | Merek **"AI Hosting"** (AI website builder/writer/image), **agent AI siap pakai** di VPS, reseller bizapp satu pintu, NEX DC Jakarta Tier-3, ISO 27001 & 9001 |

## Tren yang terlihat

- **AI/MCP masuk ke panel hosting**: Hostinger Agent/Connector dan DomaiNesia MCP menghubungkan agen AI langsung ke infrastruktur; Exabytes menjadikan AI fitur jual utama ("AI Hosting", AI website builder) dan **membundel agent AI di VPS**.
- **VPS sebagai rumah agent self-hosted** (tren baru Okt 2026): Exabytes menjual paket dengan **[Hermes](../entities/hermes-agent.md)/[OpenClaw](../entities/openclaw.md)/n8n** pre-installed (mulai Rp194.000/bln), Hostinger menyediakan keduanya di katalog deploy 1 klik (dan dicantumkan docs OpenClaw sebagai target deploy VPS), DomaiNesia mengoneksikan hosting ke OpenClaw via MCP — pola lengkap di [Platform Agen Self-Hosted](self-hosted-agent-platforms.md).
- Shared hosting mulai mendukung **Node.js/Python** tanpa VPS; LiteSpeed/NVMe menjadi standar.
- **Reseller bizapp**: provider hosting mulai membundel aplikasi bisnis pihak ketiga (Exabytes: Microsoft 365, Google Workspace, Heylink, Lark) sebagai satu paket dengan hosting.
- Harga pasar Indonesia sangat agresif (mulai ~Rp13.000–Rp18.000/bln promo) dengan domain gratis tahun pertama; VPS mulai Rp43.200 (DomaiNesia Lite) / Rp50.000 (Rumahweb XS).

## Open questions

- Batas wajar paket "unlimited" tidak dirinci di klip (AUP).
- Perbandingan apple-to-apple resource antar provider (artikel parameter/limit belum di-ingest).
- Harga perpanjangan vs promo perlu pemetaan per paket.

## Related

- [Hostinger](../entities/hostinger.md)
- [Rumahweb](../entities/rumahweb.md)
- [DomaiNesia](../entities/domainesia.md)
- [Exabytes](../entities/exabytes.md)
- [Overview](../overview.md)

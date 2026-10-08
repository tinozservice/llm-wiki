---
title: Solana
type: entity
created: 2026-10-08
updated: 2026-10-08
sources: [solana-landing, solana-learn, solana-use, solana-x402, solana-coding-with-agents, solana-program-examples, x402]
tags: [solana, blockchain, payments, capital-markets, agents]
---

# Solana

**Solana** adalah jaringan blockchain **high-performance** yang memposisikan diri sebagai infrastruktur **internet capital markets, pembayaran, dan aplikasi kripto** — "the capital market for every asset on earth" ([landing](../sources/solana-landing.md)). Di wiki, Solana masuk sebagai **lapisan pembayaran agentik**: rumah utama [x402](../concepts/x402.md) (70% volume bulanan x402) dan penyedia tooling agen (MCP, skills) yang bersinggungan dengan [Claude Code](claude-code.md), [OpenClaw](openclaw.md), [Hermes](hermes-agent.md), dll.

## Skala jaringan (klip 8 Okt)

| Metrik | Nilai |
| --- | --- |
| Transaksi total | **557,5 miliar** |
| TPS (real) | **5.068** |
| Alamat aktif bulanan | **50 juta** |
| Transaksi/bulan | **3,5 miliar** |
| Volume trading | **$3,3 triliun** |
| Pendapatan aplikasi | **$3,4 miliar** |
| Slot time | 250ms live (target **200ms**; monitor live di solana.com/200ms) |

- Aset & institusi: stablecoin $17,51B (Sep 2026; pemegang 14M+), tokenized equity $684 juta, **RWA $4,6B+**, Open USD, USDPT (2026), PYUSD; **Samsung Wallet × Solana** (USDC lintas batas, 82 juta perangkat Galaxy AS, akhir Okt 2026), Fiserv, Hamilton Lane, Société Générale ([landing](../sources/solana-landing.md)).
- Tooling baru: **Solana DvP** (atomic settlement institusi), **Microscope** (monitoring program + alert), changelog Agave/Firedancer.
- Artikel "**Solana x AI: The Democratization Layer**": akses permissionless ke compute, training, identity, memory, dan **machine-native payments** untuk agen.

## Untuk agen & developer

- **Solana Developer MCP** (`mcp.solana.com`): pengetahuan Solana terkini (docs, Anchor, Program Examples, Stack Exchange) langsung di IDE — jalur utama coding agent ([coding with agents](../sources/solana-coding-with-agents.md)).
- **Solana skill** resmi: `npx skills add https://github.com/solana-foundation/solana-dev-skill` + **Agent Skills library** di solana.com/skills.
- **Program Examples**: repo contoh onchain program dalam **Anchor/Pinocchio/Native Rust** — basics, tokens & Token-2022 (transfer hooks), cNFT, kriptografi (BN254, BLS12-381), Pyth, games (ECVRF gacha) ([repo](../sources/solana-program-examples.md)).
- **Agent-native surfaces**: `llms.txt`, `llms-full.txt`, `SKILL.md`, **Agent Registry** ([learn](../sources/solana-learn.md)).
- **Pembayaran**: [x402 on Solana](../sources/solana-x402.md) — 37 juta+ transaksi, 20K+ pembeli/penjual, 70% volume x402; finality 400ms; biaya ~$0,00025; toolkit (Faremeter, PayAI, x402Secure, Privy, **MCP with x402**) & 40+ mitra ekosistem.
- **Onboarding pengguna**: jalur wallet → dasar → keamanan → apps ([use](../sources/solana-use.md)).

## Peran di wiki

- **Pembayaran untuk layanan model**: [Nous Portal](hermes-agent.md) menerima x402 (Solana USDC, bayar-per-request tanpa akun) — Solana adalah jaringan yang dipakai.
- **Persilangan MCP**: Solana MCP & "MCP with x402" menyambung ke konsep [MCP](../concepts/mcp.md).
- Domain baru wiki: **Solana & pembayaran agentik (7 sumber, 8 Okt)** bersama konsep [x402](../concepts/x402.md).

## Open questions

- Biaya per transaksi ($0,00025 dikutip) vs kondisi jaringan nyata — perlu sumber independen.
- Detail teknis x402 di Solana (facilitator, settlement, dispute) belum di-ingest dari docs.
- Regulasi & kepatuhan (USDPT/aset teregulasi) — hanya klaim pemasaran sejauh ini.
- Adopsi Solana MCP di tool coding non-IDE (OpenCode/Claude Code/Cli) belum dicontohkan.

## Related

- Sumber: [Landing](../sources/solana-landing.md) · [x402 on Solana](../sources/solana-x402.md) · [Coding with agents](../sources/solana-coding-with-agents.md) · [Program Examples](../sources/solana-program-examples.md) · [Learn](../sources/solana-learn.md) · [Use](../sources/solana-use.md)
- [x402 (konsep)](../concepts/x402.md)
- [Hermes Agent](hermes-agent.md) · [Model Context Protocol (MCP)](../concepts/mcp.md)
- [Overview](../overview.md)

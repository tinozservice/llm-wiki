---
title: "Solana — Program Examples (repo)"
type: source
created: 2026-10-08
updated: 2026-10-08
sources: []
tags: [solana, programs, anchor, pinocchio, rust]
---

# Solana — Program Examples (repo)

- **Sumber**: github.com — `solana-foundation/program-examples` (README)
- **Penulis**: Solana Foundation
- **URL**: <https://github.com/solana-foundation/program-examples/blob/main/README.md>
- **Tanggal publikasi**: tidak dicantumkan; klip dibuat 2026-10-08
- **Berkas mentah**: `raw/2026/oktober/08/program-examplesREADME.md at main.md`

## TL;DR

Repo resmi **contoh program onchain Solana** ("smart contracts") dalam tiga rasa: **Anchor** (framework Rust paling populer), **Pinocchio** (zero-copy/zero-allocation), dan **Native Rust** — pakai **pnpm** untuk build/test. Cakupannya luas: basics (accounts, counter, PDA, CPI), tokens & **Token Extensions/Token-2022** (transfer hooks, transfer fee, metadata pointer), compression (cNFT), kriptografi (BN254, BLS12-381), oracles (Pyth), dan games (World Cup bracket, gacha provably-fair dengan ECVRF).

## Key points

- **Basics**: hello world, account-data, counter, favorites, checking/closing/creating accounts, CPI, PDA rent-payer, processing instructions, realloc, repository layout, transfer SOL.
- **Tokens**: create/transfer, NFT (Metaplex), escrow, fundraiser, Merkle-tree claim, PDA mint authority, AMM, external delegate (secp256k1).
- **Token Extensions**: CPI guard, default account state, grouping, immutable owner, interest-bearing, memo transfer, metadata, NFT metadata pointer, mint close authority, non-transferable, permanent delegate, transfer fee, **transfer hooks** (hello world, counter, account-data-as-seed, allow/block list, block list + Codama clients, transfer cost, transfer switch).
- **Compression**: cnft-burn, cnft-vault, cutils (Metaplex cNFT).
- **Cryptography**: BN254 (`sol_alt_bn128_group_op`, SIMD-0302) & BLS12-381 (`sol_curve_group_op`) — stateless per curve; applied examples di repo `crypto-primitives-examples`.
- **Games**: World Cup bracket prediction (Pinocchio + Codama + webapp), Gacha provably-fair (RFC 9381 ECVRF, `cc-vrf` registry, NFT Token-2022 dengan metadata `rarity`).
- Catatan repo: tugas umum (akun, token, mint NFT) **tidak butuh program sendiri** — System Program/token program sudah cukup.

## Notable quotes

> "If you're new to Solana, you don't need to create your own programs to perform basic things like making accounts, creating tokens, sending tokens, or minting NFTs."

## What this changes

- Bahan rujukan untuk [Solana](../entities/solana.md) & [Solana MCP](solana-coding-with-agents.md) (sumber pengetahuan yang di-query MCP).
- Tidak ada kontradiksi.

## Related

- [Solana](../entities/solana.md)
- [Coding with agents](solana-coding-with-agents.md)

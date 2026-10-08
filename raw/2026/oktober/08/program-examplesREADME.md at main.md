---
title: program-examples/README.md at main
source: https://github.com/solana-foundation/program-examples/blob/main/README.md
author:
  - "[[Solana Foundation]]"
published:
created: 2026-10-08
description:
tags:
  - clippings
---
## Program Examples

## Onchain program examples for ⚓ Anchor, 🤥 Pinocchio, and 🦀 Native Rust.

This repo contains Solana onchain programs (referred to as 'Smart Contracts' in other blockchains).

> [!note] Note
> If you're new to Solana, you don't need to create your own programs to perform basic things like making accounts, creating tokens, sending tokens, or minting NFTs. These common tasks are handled with existing programs, for example the System Program (for making account or transferring SOL) or the token program (for creating tokens and NFTs). See the [Solana Developer site](https://solana.com/developers) to learn more.

> ⚠️
> 
> This repository uses **pnpm** as the default package manager.  
> Ensure pnpm is installed before running any examples.

Each folder includes examples for one or more of the following:

- `anchor` - Written using [Anchor](https://www.anchor-lang.com/), the most popular framework for Solana development, which uses Rust. Use `anchor build` and `anchor deploy` to build and deploy the program. Tests should be executed using `pnpm test` as defined in the `Anchor.toml` scripts section.
- `pinocchio` - Written using [Pinocchio](https://github.com/febo/pinocchio), a zero-copy, zero-allocation library for Solana programs. Build and test commands are the same as native examples. Run `pnpm test` to execute tests.
- `native` - Written using Solana's native Rust crates and vanilla Rust. Build and test commands are defined via pnpm scripts and use `litesvm` for testing. Run `pnpm test` to execute tests.

**If a given example is missing, please send us a PR to add it!** Our aim is to have every example available in every option. We'd also love to see more programs involving staking, wrapped tokens, oracles, compression and VRF. Follow the [contributing guidelines](https://github.com/solana-foundation/program-examples/blob/main/CONTRIBUTING.md) to keep things consistent.

## The example programs

## Basics

### Hello world

[Hello World on Solana! A minimal program that logs a greeting.](https://github.com/solana-foundation/program-examples/blob/main/basics/hello-solana/README.md)

[anchor](https://github.com/solana-foundation/program-examples/blob/main/basics/hello-solana/anchor) [pinocchio](https://github.com/solana-foundation/program-examples/blob/main/basics/hello-solana/pinocchio) [native](https://github.com/solana-foundation/program-examples/blob/main/basics/hello-solana/native)

### Account-data

Store and retrieve data using Solana accounts.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/basics/account-data/anchor) [pinocchio](https://github.com/solana-foundation/program-examples/blob/main/basics/account-data/pinocchio) [native](https://github.com/solana-foundation/program-examples/blob/main/basics/account-data/native)

### Storing global state - Counter

[Store global state in an account, making a counter that increments when called.](https://github.com/solana-foundation/program-examples/blob/main/basics/counter/README.md)

[anchor](https://github.com/solana-foundation/program-examples/blob/main/basics/counter/anchor) [pinocchio](https://github.com/solana-foundation/program-examples/blob/main/basics/counter/pinocchio) [native](https://github.com/solana-foundation/program-examples/blob/main/basics/counter/native)

### Saving per-user state - Favorites

Save and update per-user state on the blockchain, ensuring users can only update their own information.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/basics/favorites/anchor) [pinocchio](https://github.com/solana-foundation/program-examples/blob/main/basics/favorites/pinocchio) [native](https://github.com/solana-foundation/program-examples/blob/main/basics/favorites/native)

### Checking Instruction Accounts

[Check that the accounts provided in incoming instructions meet particular criteria.](https://github.com/solana-foundation/program-examples/blob/main/basics/checking-accounts/README.md)

[anchor](https://github.com/solana-foundation/program-examples/blob/main/basics/checking-accounts/anchor) [pinocchio](https://github.com/solana-foundation/program-examples/blob/main/basics/checking-accounts/pinocchio) [native](https://github.com/solana-foundation/program-examples/blob/main/basics/checking-accounts/native)

### Closing Accounts

Close an account and get the Lamports back.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/basics/close-account/anchor) [pinocchio](https://github.com/solana-foundation/program-examples/blob/main/basics/close-account/pinocchio) [native](https://github.com/solana-foundation/program-examples/blob/main/basics/close-account/native)

### Creating Accounts

[Make new accounts on the blockchain, calculating the necessary minimum rent from the account's size.](https://github.com/solana-foundation/program-examples/blob/main/basics/create-account/README.md)

[anchor](https://github.com/solana-foundation/program-examples/blob/main/basics/create-account/anchor) [pinocchio](https://github.com/solana-foundation/program-examples/blob/main/basics/create-account/pinocchio) [native](https://github.com/solana-foundation/program-examples/blob/main/basics/create-account/native)

### Cross program invocations

[Invoke an instruction handler from one onchain program in another onchain program.](https://github.com/solana-foundation/program-examples/blob/main/basics/cross-program-invocation/README.md)

[anchor](https://github.com/solana-foundation/program-examples/blob/main/basics/cross-program-invocation/anchor) [native](https://github.com/solana-foundation/program-examples/blob/main/basics/cross-program-invocation/native)

### PDA rent-payer

[Use a PDA to pay the rent for the creation of a new account.](https://github.com/solana-foundation/program-examples/blob/main/basics/pda-rent-payer/README.md)

[anchor](https://github.com/solana-foundation/program-examples/blob/main/basics/pda-rent-payer/anchor) [pinocchio](https://github.com/solana-foundation/program-examples/blob/main/basics/pda-rent-payer/pinocchio) [native](https://github.com/solana-foundation/program-examples/blob/main/basics/pda-rent-payer/native)

### Processing instructions

[Add parameters to an instruction handler and use them.](https://github.com/solana-foundation/program-examples/blob/main/basics/processing-instructions/README.md)

[anchor](https://github.com/solana-foundation/program-examples/blob/main/basics/processing-instructions/anchor) [pinocchio](https://github.com/solana-foundation/program-examples/blob/main/basics/processing-instructions/pinocchio) [native](https://github.com/solana-foundation/program-examples/blob/main/basics/processing-instructions/native)

### Storing date in program derived addresses

Store and retrieve state in Solana.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/basics/program-derived-addresses/anchor) [pinocchio](https://github.com/solana-foundation/program-examples/blob/main/basics/program-derived-addresses/pinocchio) [native](https://github.com/solana-foundation/program-examples/blob/main/basics/program-derived-addresses/native)

### Handling accounts that expand in size

How to store state that changes size in Solana.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/basics/realloc/anchor) [pinocchio](https://github.com/solana-foundation/program-examples/blob/main/basics/realloc/pinocchio) [native](https://github.com/solana-foundation/program-examples/blob/main/basics/realloc/native)

### Laying out larger programs

[Layout larger Solana onchain programs.](https://github.com/solana-foundation/program-examples/blob/main/basics/repository-layout/README.md)

[anchor](https://github.com/solana-foundation/program-examples/blob/main/basics/repository-layout/anchor) [native](https://github.com/solana-foundation/program-examples/blob/main/basics/repository-layout/native)

### Transferring SOL

[Send SOL between two accounts.](https://github.com/solana-foundation/program-examples/blob/main/basics/transfer-sol/README.md)

[anchor](https://github.com/solana-foundation/program-examples/blob/main/basics/transfer-sol/anchor) [pinocchio](https://github.com/solana-foundation/program-examples/blob/main/basics/transfer-sol/pinocchio) [native](https://github.com/solana-foundation/program-examples/blob/main/basics/transfer-sol/native)

## Tokens

### Creating tokens

[Create a token on Solana with a token symbol and icon.](https://github.com/solana-foundation/program-examples/blob/main/tokens/create-token/README.md)

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/create-token/anchor) [pinocchio](https://github.com/solana-foundation/program-examples/blob/main/tokens/create-token/pinocchio) [native](https://github.com/solana-foundation/program-examples/blob/main/tokens/create-token/native)

### NFT operations

Create an NFT collection, mint NFTs, and verify NFTs as part of a collection using Metaplex Token Metadata. Reminder: you don't need your own program just to mint an NFT, see the note at the top of this README.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/nft-operations/anchor) [pinocchio](https://github.com/solana-foundation/program-examples/blob/main/tokens/nft-operations/pinocchio)

### Transferring Tokens

[Create a token mint, mint tokens, and transfer tokens between accounts.](https://github.com/solana-foundation/program-examples/blob/main/tokens/transfer-tokens/README.md)

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/transfer-tokens/anchor) [pinocchio](https://github.com/solana-foundation/program-examples/blob/main/tokens/transfer-tokens/pinocchio) [native](https://github.com/solana-foundation/program-examples/blob/main/tokens/transfer-tokens/native)

### Allowing users to swap digital assets - Escrow

Allow two users to swap digital assets with each other, each getting 100% of what the other has offered due to the power of decentralization!

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/escrow/anchor) [pinocchio](https://github.com/solana-foundation/program-examples/blob/main/tokens/escrow/pinocchio) [native](https://github.com/solana-foundation/program-examples/blob/main/tokens/escrow/native)

### Fundraising with SPL Tokens

Create a fundraiser account specifying a target mint and amount, allowing contributors to deposit tokens until the goal is reached.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-fundraiser/anchor)

### Distributing tokens with Merkle-proof claims

[Fund a vault once, publish a Merkle root of a balance snapshot, and let each holder claim their allocation with a proof](https://github.com/solana-foundation/program-examples/blob/main/tokens/merkle-tree-token-claimer/README.md) — the claim pattern behind large airdrops and chain migrations.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/merkle-tree-token-claimer/anchor)

### Minting a token from inside a program with a PDA as the mint authority

[Mint a Token from inside your own onchain program using the Token program.](https://github.com/solana-foundation/program-examples/blob/main/tokens/pda-mint-authority/README.md) Reminder: you don't need your own program just to mint an NFT, see the note at the top of this README.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/pda-mint-authority/anchor) [native](https://github.com/solana-foundation/program-examples/blob/main/tokens/pda-mint-authority/native) [pinocchio](https://github.com/solana-foundation/program-examples/blob/main/tokens/pda-mint-authority/pinocchio)

### Creating an Automated Market Maker

[Create liquidity pools to allow trading of new digital assets and allows users that provide liquidity to be rewarded by creating an Automated Market Maker.](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-swap/README.md)

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-swap/anchor)

### External delegate token master

Control token transfers using an external secp256k1 delegate signature.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/external-delegate-token-master/anchor)

## Token Extensions

### Basics - create token mints, mint tokens, and transfer tokens with Token Extensions

Create token mints, mint tokens, and transfer tokens using Token Extensions.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/basics/anchor)

### Preventing CPIs with CPI guard

Enable CPI guard to prevents certain token action from occurring within CPI (Cross-Program Invocation).

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/cpi-guard/anchor)

### Using default account state

Create new token accounts that are frozen by default.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/default-account-state/anchor) [native](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/default-account-state/native)

### Grouping tokens

Create tokens that belong to larger groups of tokens using the Group Pointer extension.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/group/anchor)

### Creating token accounts whose owner cannot be changed

Create tokens whose owning program cannot be changed.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/immutable-owner/anchor)

### Interest bearing tokens

Create tokens that show an 'interest' calculation.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/interest-bearing/anchor)

### Requiring transactions to include descriptive memos

Create tokens where transfers must have a memo describing the transaction attached.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/memo-transfer/anchor)

### Adding on-chain metadata to the token mint

Create tokens that store their onchain metadata inside the token mint, without needing to use or pay for additional programs.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/metadata/anchor)

### Storing NFT metadata using the metadata pointer extension

Create an NFT using the Token Extensions metadata pointer, storing onchain metadata (including custom fields) inside the mint account itself.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/nft-meta-data-pointer/anchor)

### Allow a designated account to close a mint

Allow a designated account to close a Mint.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/mint-close-authority/anchor) [native](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/mint-close-authority/native) [pinocchio](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/mint-close-authority/pinocchio)

### Using multiple token extensions

Use multiple Token Extensions at once.

[native](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/multiple-extensions/native)

### Non-transferrable - create tokens that can't be transferred.

Create tokens that cannot be transferred.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/non-transferable/anchor) [native](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/non-transferable/native) [pinocchio](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/non-transferable/pinocchio)

### Permanent Delegate - Create tokens permanently under the control of a particular account

Create tokens that remain under the control of an account, even when transferred elsewhere.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/permanent-delegate/anchor)

### Create tokens with a transfer-fee.

Create tokens with an inbuilt transfer fee.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/transfer-fee/anchor) [native](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/transfer-fee/native)

### Transfer hook - hello world

A minimal transfer hook program that executes custom logic on every token transfer.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/transfer-hook/hello-world/anchor)

### Transfer hook - counter

Count how many times tokens have been transferred using a transfer hook.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/transfer-hook/counter/anchor)

### Transfer hook - using account data as seed

Use token account owner data as seeds to derive extra accounts in a transfer hook.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/transfer-hook/account-data-as-seed/anchor)

### Transfer hook - allow/block list

Restrict or allow token transfers using an on-chain allow/block list managed by a list authority.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/transfer-hook/allow-block-list-token/anchor)

### Transfer hook - block list with Codama clients

A block-list transfer hook as a full project: Pinocchio program, Codama-generated Rust and TypeScript clients, and a CLI.

[pinocchio](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/transfer-hook/block-list/pinocchio)

### Transfer hook - transfer cost

Charge an additional cost or fee on every token transfer using a transfer hook.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/transfer-hook/transfer-cost/anchor)

### Transfer hook - transfer switch

Enable or disable token transfers with an on-chain switch using a transfer hook.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/tokens/token-2022/transfer-hook/transfer-switch/anchor)

## Compression

### Cnft-burn

Burn compressed NFTs.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/compression/cnft-burn/anchor)

### Cnft-vault

Store Metaplex compressed NFTs inside a PDA.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/compression/cnft-vault/anchor)

### Cutils

Work with Metaplex compressed NFTs.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/compression/cutils/anchor)

## Cryptography

One stateless program per curve, wrapping the raw cryptographic syscalls. These run in LiteSVM today but only work on public clusters once their feature gates activate. Applied examples (multisig, key registry, encrypted ballot) live in the [crypto-primitives-examples](https://github.com/solana-foundation/crypto-primitives-examples) reference repo.

### BN254 (alt\_bn128) operations

Add and scalar-multiply G2 points (SIMD-0302) and verify aggregate BLS signatures with a single pairing check, via the `sol_alt_bn128_group_op` syscall.

[pinocchio](https://github.com/solana-foundation/program-examples/blob/main/cryptography/bn254/pinocchio)

### BLS12-381 curve operations

Add, subtract, and scalar-multiply BLS12-381 G1 and G2 points with the `sol_curve_group_op` syscall.

[pinocchio](https://github.com/solana-foundation/program-examples/blob/main/cryptography/bls12-381/pinocchio)

## Oracles

### pyth

Use a data source for offchain data (called an Oracle) to perform activities onchain.

[anchor](https://github.com/solana-foundation/program-examples/blob/main/oracles/pyth/anchor)

## Games

### World Cup bracket prediction

A bracket-prediction game: entrants pay a fee to submit a 32-game bracket, an oracle posts results, scores are tallied on-chain, and the unique winner sweeps the pot. A full Pinocchio + Codama project with a TypeScript client and a webapp.

[pinocchio](https://github.com/solana-foundation/program-examples/blob/main/games/world-cup/pinocchio)

### Gacha (provably-fair pack pulls)

A provably-fair gacha / loot-box game — the on-chain mechanic behind RWA pack platforms like Collector Crypt and Phygitals. Buyers open pulls revealed with an RFC 9381 ECVRF anchored in the deployed [`cc-vrf`](https://vrf.collectorcrypt.com/) registry by CPI; the VRF input binds buyer entropy, reveals are publicly verifiable off-chain, unsettled pulls are refundable, and prizes are minted as Token-2022 NFTs carrying a `rarity` metadata field. A full Pinocchio + Codama project with TypeScript + Rust clients.

[pinocchio](https://github.com/solana-foundation/program-examples/blob/main/games/gacha/pinocchio)
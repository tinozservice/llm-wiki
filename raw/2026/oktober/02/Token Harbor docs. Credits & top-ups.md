---
title: "Token Harbor docs. Credits & top-ups "
source: "https://tokenharbor.ai/docs/billing/credits"
author:
  - "[[Token Harbor]]"
published:
created: 2026-10-02
description: "How the wallet works, what the free tier covers, and what the top-up packs actually cost."
tags:
  - "clippings"
---
## Credits & top-ups

Token Harbor has one balance in USD. Web chat, the OpenAI-compat API, the Anthropic-compat API — they all draw from the same wallet.

## Starting balance

New accounts start at **$0** — there is no sign-up or welcome credit.

You can still use Token Harbor before you pay anything: selected models are free through their `:free` model IDs, and free routes never charge your balance. See [Rewards → Free model access](https://tokenharbor.ai/docs/billing/cashback#free-model-access) for the current set and the allowance.

Balance you topped up yourself is withdrawable (see [Refunds](#refunds)). Promotional and reward credit — for example the [first top-up match](https://tokenharbor.ai/docs/billing/cashback#first-top-up-match) — can be spent on any model but is not withdrawable.

## Top-up packages

| Package | You pay | You get | Bonus |
| --- | --- | --- | --- |
| Starter | $10 | $10 | — |
| Community | $50 | $50 | — |
| Harbor | $100 | $100 | — |

Charged via PayPal. Credits **never expire**.

## How spend is calculated

Token Harbor bills **per token**, against the provider's published prices, plus an optional per-model markup (currently 0% on every model). Full formula in [Models → How we bill](https://tokenharbor.ai/docs/api/models#how-we-bill).

Three cache layers reduce what you pay:

- Identical requests within 5 minutes — $0.
- Semantically similar questions — $0.
- Long repeated prefixes (≥1024 tokens) — up to 90% off via the vendor's prompt cache.

## Refunds

Unused wallet balance is refundable within **30 days** of the original top-up — email [billing@tokenharbor.ai](mailto:billing@tokenharbor.ai) and we return it to the original payment method whenever possible.

|  | Refundable? |
| --- | --- |
| Unused top-up balance | Yes — in full |
| Already-consumed balance | No |
| Promotional credits | No |
| Reward credits | No |

Promotional credits include the [first top-up match](https://tokenharbor.ai/docs/billing/cashback#first-top-up-match), which is credited to your spendable promotional balance as soon as your top-up completes.

## Seeing your balance

The balance pill in the top bar updates live. For per-call detail, [/dashboard/usage](https://tokenharbor.ai/dashboard/usage) shows your last 100 requests with tokens, cache layer, and exact cost. Export the full history as CSV from the same page.

## Top-up audit trail & reconciliation

Need a record that proves every payment was credited to your account — for accounting, expense reports, or peace of mind? Export your full transaction ledger as CSV:

1. Sign in and go to **[Dashboard → Billing](https://tokenharbor.ai/dashboard/billing)**.
2. Click the **Top-ups** filter to show only recharges (or leave it on **All** for the complete ledger).
3. Click **Export CSV**. A file named `tokenharbor-ledger-<date>.csv` downloads — open it in Excel, Google Sheets, or Numbers.

Each row is one ledger entry. For a top-up it carries everything you need to reconcile against PayPal:

| Column | Meaning |
| --- | --- |
| Date (ISO UTC) | When the entry posted |
| Type | e.g. *Recharge* for a top-up |
| Source pool | Which balance it credited (*Paid pool* for top-ups) |
| Amount USD | Exact amount credited to your account |
| Running balance USD | Account balance right after that entry |
| Status | e.g. *completed* |
| Order ID | Your PayPal order ID |
| PayPal capture ID | Your PayPal capture (transaction) ID |

To reconcile a payment, match the **PayPal capture ID** (and Order ID) in the CSV against your PayPal receipt — the **Amount USD** confirms the credit landed in your account, and the ledger is append-only. For a statement covering a specific date range, email [billing@tokenharbor.ai](mailto:billing@tokenharbor.ai).
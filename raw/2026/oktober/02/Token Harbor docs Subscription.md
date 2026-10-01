---
title: "Token Harbor docs Subscription"
source: "https://tokenharbor.ai/docs/billing/subscription"
author:
  - "[[Token Harbor]]"
published:
created: 2026-10-02
description: "Token Harbor Passes — what each one includes, how the allowance works, and how it sits alongside your wallet and free access."
tags:
  - "clippings"
---
## Subscription

Token Harbor Passes include subsidized usage for selected paid models. Choose a monthly or yearly Pass, keep your existing free-model access, and optionally continue with discounted pay-as-you-go usage after the included allowance runs out.

See the current plans and subscribe at **[Plans](https://tokenharbor.ai/pricing)**.

## Choose a Pass

Token Harbor currently offers three paid Passes. Each Pass includes a recurring four-week usage allowance subsidized by Token Harbor.

| Pass | Monthly price | Included usage | With Model Boost | PAYG discount | Best for |
| --- | --- | --- | --- | --- | --- |
| Agent Pass | **$0.99 for the first month**, then $1.99/month | **$10** | Up to **$20** of usage value | **5% off** | Agents, scripts, and light API usage |
| Office Pass | **$9.99/month** | **$35** | Up to **$70** of usage value | **10% off** | Everyday writing, research, coding, and desktop-agent work |
| Frontier Pass | **$99/month** | **$180** | Up to **$360** of usage value | **15% off** | Heavy usage, frontier models, and professional workflows |

The Agent Pass first-month price is available to all eligible new Agent Pass subscribers. After the first month it renews at the standard price unless canceled. Office Pass and Frontier Pass are charged the same amount every month, including the first.

Yearly billing is also available. When selected, the Plans page shows the annual total and effective monthly price before checkout. Pass allowances continue to refresh every four weeks, including on yearly subscriptions.

The **[Plans](https://tokenharbor.ai/pricing)** page and Stripe checkout always show the amount charged today and the renewal amount before payment.

## What the subsidy means

The subsidy is **included usage value, not wallet credit**.

- The allowance is consumed automatically when you use an eligible paid model.
- It cannot be withdrawn, transferred, or used as wallet credit.
- The same allowance is shared across all models covered by the Pass; models do not receive separate balances.

Usage value is measured using Token Harbor's published per-token prices. More expensive models consume the allowance faster than lower-cost models, so the ceiling is in dollars rather than in requests.

## Model Boost

Selected models receive a **Model Boost**. A boosted model is billed against the same Pass allowance at a reduced rate, which lets that allowance go further on it.

For example, an Agent Pass has one shared allowance of $10. Spent entirely on a model with a 2× Boost, it covers up to $20 of that model's standard usage value. The Boost does not create a second balance and does not add cash to the wallet.

A higher Pass keeps every Boost the Passes below it carry and may add more, so moving up never makes a model you already use worse value.

Which models are boosted, and by how much, is marked on the **[Plans](https://tokenharbor.ai/pricing)** page beside each Pass. Model eligibility and Boost rates may change as the catalog is updated.

## Models included with each Pass

Each paid Pass includes the models and benefits in the tiers below it. The lists below highlight the current lineup; check **[Plans](https://tokenharbor.ai/pricing)** for the latest availability and Boost status.

### Free

- DeepSeek V4 Flash
- MiMo V2.5
- Promotional free models added over time
- One OpenAI-compatible API

### Agent Pass

Everything in Free, plus:

- GLM-5.3 Flash
- GPT-5.6 Luna
- MiMo V2.5 Pro
- Qwen3.8 Flash
- Selected cost-efficient paid models

### Office Pass

Everything in Agent Pass, plus:

- Claude Sonnet 5
- DeepSeek V4 Pro
- GPT-5.6 Terra
- Qwen3.8 27B
- Qwen3.8 Max
- Selected Value and frontier models

### Frontier Pass

Everything in Office Pass, plus:

- Claude Fable 5.1
- Claude Opus 5
- GLM-5.3
- GPT-5.6 Sol
- GPT-6 Astra
- Grok 4.6
- Kimi K3
- The complete Frontier model pool

Named models are representative inclusions, not necessarily the complete catalog. The lineup may change as models are added, replaced, or updated.

## How included usage refreshes

Each Pass allowance covers a four-week cycle and is divided into four 7-day windows:

- Each 7-day window contains one quarter of the four-week allowance.
- Unused usage does not carry into the next 7-day window.
- Pass usage is not added to the Token Harbor wallet balance.
- Current usage and remaining allowance are shown in the dashboard.

## Free access remains available

Your existing free-model allowance remains active alongside your paid Pass. Subscribing does not replace, reset, or increase the free allowance.

If you have already used the current free allowance, upgrading to a Pass does not restore it. The free allowance resets at the start of the next free-access period. In the meantime, you can use eligible paid routes covered by your Pass.

Free models continue to use their `:free` model IDs. Pass usage applies to eligible paid routes.

## Keep working after the allowance runs out

After the included allowance is exhausted, you can continue through pay-as-you-go billing at your Pass's discounted rate — 5% off on Agent Pass, 10% off on Office Pass, 15% off on Frontier Pass.

Pay-as-you-go usage is charged to your Token Harbor wallet balance. Add funds before using this option. Your available wallet balance and hard spending cap still apply.

In **[Dashboard → Billing](https://tokenharbor.ai/dashboard/billing)**, use **Keep working after my Pass allowance runs out** to control what happens when the allowance is exhausted.

### When enabled

- Eligible calls continue while sufficient wallet balance is available.
- Additional usage is billed at the discounted pay-as-you-go rate for the active Pass.
- Charges are deducted from the Token Harbor wallet balance.
- The account's hard spending cap continues to apply.

### When disabled

- The Pass acts as a hard usage limit.
- Covered calls stop when the current allowance is exhausted.
- Usage resumes when the next allowance window begins, or after pay-as-you-go continuation is enabled and the wallet has sufficient funds.

## Manage your subscription

Your active Pass appears next to your account name and in **[Dashboard → Billing](https://tokenharbor.ai/dashboard/billing)**.

From Billing, select **Open billing portal** to manage the subscription through Stripe. You can:

- View the current plan, price, renewal date, and cancellation date.
- Update or add a payment method.
- View payment history and invoices.
- Cancel the subscription.

When canceled, the Pass remains active until the end of the paid billing period shown in the billing portal.

## Subscription billing and wallet balance

Subscription payments and wallet funds are separate:

- The subscription pays for the Pass and its included subsidized usage.
- Wallet balance pays for usage beyond the included allowance when pay-as-you-go continuation is enabled.
- Model Boost changes how quickly eligible models consume the Pass allowance; it does not change the wallet balance.
- Auto-reload and the hard spending cap are managed separately in **[Dashboard → Billing](https://tokenharbor.ai/dashboard/billing)**.

## Data and privacy

Pass traffic uses Token Harbor's paid per-token routes and follows the zero-data-retention policy for those routes.

Free-model traffic is separate. Free routes follow the free-model retention setting selected in the dashboard. Subscribing does not automatically change that setting or count as consent for free-route data retention.
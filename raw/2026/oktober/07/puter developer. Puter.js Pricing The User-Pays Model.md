---
title: "Puter.js Pricing: The User-Pays Model"
source: https://developer.puter.com/pricing/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Puter.js is free for developers. With the User-Pays model, each user covers their own storage, database, and AI usage through their Puter account, so you pay $0 for infrastructure whether your app has one user or a million.
tags:
  - clippings
---
## Every user bringstheir own resources

Every Puter account comes with its own storage, database, and AI allowance, and your Puter.js calls run against the signed-in user's account.

[Read the User-Pays model docs](https://docs.puter.com/user-pays-model/)

your app your users' accounts puter.com $

your-app.com

// no servers, no api keys

await puter.ai.chat(prompt)

// runs as the signed-in user

your infrastructure bill $0.00

@sarah

allowance used

@leo

allowance used

@mei

allowance used

$ tops up with Puter

## Costs that don'tgrow with your users

A traditional backend bills you for every user. With User-Pays, those costs never reach you.

- No API keys to manage
- No rate limits, captchas, or fraud systems
- $0 on launch day, $0 at a million users

### Monthly infrastructure cost as an app grows

Traditional backend Puter

<svg viewBox="0 0 520 300" role="img" aria-label="Chart comparing monthly infrastructure cost as an app grows from one user to one million: a traditional backend's cost rises steadily with users, while Puter stays flat at zero dollars."><text x="46" y="26" font-size="11.5" fill="#9aa1ad">monthly infrastructure cost</text> <line x1="46" y1="84" x2="500" y2="84" stroke="#f2f3f7" stroke-width="1"></line><line x1="46" y1="168" x2="500" y2="168" stroke="#f2f3f7" stroke-width="1"></line><line x1="46" y1="252" x2="500" y2="252" stroke="#e7e9f1" stroke-width="1"></line><text x="38" y="256" font-size="11.5" fill="#9aa1ad" text-anchor="end">$0</text> <text x="46" y="278" font-size="11.5" fill="#9aa1ad">1 user</text> <text x="273" y="278" font-size="11.5" fill="#9aa1ad" text-anchor="middle">500K</text> <text x="500" y="278" font-size="11.5" fill="#9aa1ad" text-anchor="end">1M users</text> <path pathLength="1" d="M 46 252 C 210 240 360 172 500 66" fill="none" stroke="currentColor"></path><text x="498" y="50" font-size="12.5" fill="#6b7280" text-anchor="end">Traditional backend</text> <path pathLength="1" d="M 46 252 L 488 252" fill="none" stroke="currentColor"></path><circle cx="496" cy="252" r="5" fill="#1d49e7" stroke="#ffffff" stroke-width="2"></circle><text x="496" y="234" font-size="13" font-weight="600" fill="#1d49e7" text-anchor="middle">$0</text></svg>

Illustrative comparison. Traditional backend costs vary by stack and usage.

## Who pays for what

The whole model, in two columns.

You

the developer

$0 for infrastructure, at any scale

- Unlimited users
- Auth, storage, database, AI Gateway, hosting, and more
- No servers, no API keys
- No usage metered to you

Your users

each with a Puter account

Their own usage

- Free allowance of storage, database, and AI usage
- Pay Puter directly, only beyond the allowance
- One account works across all Puter apps
- Billing never goes through you

## Frequently Asked Questions

Do I really pay nothing to run my app?

Yes. Puter doesn't charge developers for infrastructure. Storage, database, and AI usage are metered to each signed-in user's own Puter account, so your costs don't grow with your user count. Whether your app has one user or a million, your infrastructure bill is $0.

What do my users get for free?

Every Puter account includes an allowance of storage, database, and AI usage at no charge. Your app runs against that allowance, and users who stay within it pay nothing. One Puter account works across every app built on Puter.

What happens when a user exceeds their allowance?

They pay Puter directly for the extra usage through their own account. Their billing never goes through you, and other users of your app are unaffected.

How is this different from bring-your-own-key?

Bring-your-own-key asks each user to create accounts with API providers, generate keys, and paste them into your app, and every key becomes a secret your app has to protect. With Puter there are no keys at all. Users [sign in with their Puter account](https://developer.puter.com/auth/), and every request is authenticated and metered to them automatically.

What stops someone from abusing my app?

Abuse can't run up your bill, because usage is metered to each user's own account, so a bad actor has no free resources to farm. Anti-abuse, rate limiting, and fraud detection are also built into the Puter account layer, so bots and fake sign-ups are filtered before they reach your app.

Can my app use my own resources instead of the user's?

Yes. App-level resources shared by all users, such as a [serverless worker](https://developer.puter.com/serverless-workers/) and its data, can run on your own account. The User-Pays model covers per-user usage such as each user's files, key-value data, and AI calls.
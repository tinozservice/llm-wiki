---
title: User Authentication Without a Server
source: https://developer.puter.com/auth/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Add user authentication to your web app with one line of Puter.js. Each user gets their own storage, data, and AI access, included with their Puter account. No servers, no passwords, no user database.
tags:
  - clippings
---
### Auth API

Authenticate users with their Puter accounts in a single call.

### No servers, No API Keys

Skip session management, password hashing, and OAuth setup. There are no API keys to provision, rotate, or leak, and no auth server to build or maintain.

### Abuse Protection Included

Puter screens accounts for bots, fraud, and abuse at the account layer. No captchas to add, no SMS verification to pay for, no rate limiting to build.

### Per-User Everything

Each user gets their own storage, data, and quota the moment they sign in. Every cloud call is scoped to their account and your app, so there is no user database to build.

### User-Pays Model

Build apps without worrying about infrastructure costs. With the [User-Pays model](https://docs.puter.com/user-pays-model/), users cover their own costs.

## How It Works

### 1 Include Puter.js

Add Puter.js to your app:

`<script src="https://js.puter.com/v2/"></script>`

or with npm:

`npm install @heyputer/puter.js`

### 2 Add a Sign-In Button

Trigger the sign-in popup from a user action, like a click:

```
await puter.auth.signIn();
```

View the [Auth documentation](https://docs.puter.com/Auth/) for the full list of available methods.

### 3 Use Any API as the User

Once signed in, every Puter.js call runs as the user:

```
await puter.kv.set('theme', 'dark');
```

Their data, their usage, billed to their account. Read their profile any time with `puter.auth.getUser()`.

### ✓That's it!

No servers, no passwords, no API keys. Puter manages identity and sessions for you.

[Read the Docs](https://docs.puter.com/Auth/) • [Try the Playground](https://docs.puter.com/playground/auth-sign-in/)

## Simple API, Real Sign-In

Sign in, check status, read the profile.  
The API handles the popup, sessions, and tokens so you can focus on building your app.

```javascript
// Sign in when the user clicks your button
document.getElementById("sign-in").addEventListener("click", async () => {
    await puter.auth.signIn();

    // Now you know who they are
    const user = await puter.auth.getUser();
    puter.print(\`Welcome, ${user.username}!\`);

    // Saved to their account, scoped to your app
    await puter.kv.set("visits", 1);
});

// Check auth status any time, no await needed
if (puter.auth.isSignedIn()) {
    puter.print("This user is already signed in.");
}

// End the session
// puter.auth.signOut();
```

[Find more examples →](https://docs.puter.com/Auth/#examples)

## Frequently Asked Questions

What is the Puter.js Auth API?

The Puter.js Auth API lets users sign in to your web app with a Puter account they already have. You don't create or manage accounts: the API provides sign-in, sign-out, authentication-status checks, and access to basic user information, all from the browser with no servers and no API keys.

Do I need to manage passwords or run an auth server?

No. Puter handles identity, sessions, and tokens for you. There are no passwords to hash, no OAuth flows to configure, and no auth server to build or maintain. The trade-off is that Puter owns the account layer: you don't build custom sign-up flows or store custom account fields. App-specific data goes in `puter.kv` or `puter.fs` instead, scoped to each user.

Call `puter.auth.signIn()` from a user action, such as a button click. Puter opens a secure popup where the user authenticates with their Puter account, and the call resolves once they have signed in. You can check status at any time with `puter.auth.isSignedIn()`.

What user information can I access?

After sign-in, `puter.auth.getUser()` resolves to the current user's basic profile, such as their username, and you can see their API usage for your app. You never handle their password or account security; Puter takes care of the account itself.

Is it secure?

Yes. Authentication happens through Puter's own secure sign-in popup, so your app never handles passwords. Sessions are managed by Puter, communication is encrypted in transit, and you can end a session at any time with `puter.auth.signOut()`.

Do I need a captcha or SMS verification to block fake accounts?

No. Anti-abuse and fraud detection are built into the Puter account layer, so bots and fake sign-ups are filtered before they reach your app. You don't add a captcha, pay for SMS verification, or build your own rate limiting. And because each user's usage is billed to their own account, fake accounts can't run up your bill.

How much does it cost?

Nothing. Puter doesn't charge you per user or per sign-in, unlike auth providers that bill by monthly active users. And with the [User-Pays model](https://docs.puter.com/user-pays-model/), your users' API usage is billed to their own Puter account, so your costs don't grow with your user count or their usage.
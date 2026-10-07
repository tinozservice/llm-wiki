---
title: Puter.js Documentation
source: https://docs.puter.com/Email/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Read the user's Puter mailbox and send transactional email from your app with Puter.js.
tags:
  - clippings
---
## Email

Websites Puter Apps Node.js Workers

---

The Email API lets your app read the user's Puter mailbox and send transactional email.

Every Puter account has an email address, `{username}@puter.email`. Mail sent to it is stored in the user's own cloud drive, so your app can list the inbox and read messages, attachments included, once the user grants access to their mailbox. Your app can also send transactional email — a signup confirmation, a receipt, an alert — from a Puter-controlled address, with no mail server, sending domain, or DKIM to set up. A recipient with a Puter account can be reached at `{username}@puter.email`: that copy is filed straight into their Puter mailbox rather than relayed, on any plan, as long as they have set their mailbox up.

With the [User-Pays Model](https://docs.puter.com/user-pays-model/), the account making the call covers its own usage: mail lives in the user's storage, and sends land on the caller's allowance rather than yours.

Transactional email is available to accounts on a paid plan for now. A call from a free account fails with `402` `subscription_required`.

## Features

List Messages

Read a Message

Send Transactional Email

#### List the ten newest messages in the inbox

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            const page = await puter.email.list({ limit: 10 });
            for (const message of page.items) {
                puter.print(\`${message.date}  ${message.subject}<br>\`);
            }
        })();
    </script>
</body>
</html>
```

#### Read the newest message

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            const { items } = await puter.email.list({ limit: 1 });
            if (items.length === 0) return puter.print('Inbox is empty');

            const message = await puter.email.get(items[0].id);
            puter.print(\`From: ${message.from?.address}<br>\`);
            puter.print(\`Subject: ${message.subject}<br>\`);
            puter.print(\`<pre>${message.text}</pre>\`);
        })();
    </script>
</body>
</html>
```

#### Send a transactional email from a worker

```js
// In a worker: the worker authorizes the send, the calling user pays for it.
router.post('/notify', async ({ request, user }) => {
    const { to, subject, text } = await request.json();
    return await user.puter.email.sendTransactional({
        to,
        subject,
        text,
        emailAccessToken: me.puter.authToken,
    });
});
```

## Functions

- **[`puter.email.list()`](https://docs.puter.com/Email/list/)** - List the messages in the user's mailbox, newest first
- **[`puter.email.get()`](https://docs.puter.com/Email/get/)** - Fetch and parse one message, attachments included
- **[`puter.email.sendTransactional()`](https://docs.puter.com/Email/sendTransactional/)** - Send a transactional email from your app
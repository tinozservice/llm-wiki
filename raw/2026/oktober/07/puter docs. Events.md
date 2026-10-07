---
title: Puter.js Documentation
source: https://docs.puter.com/Events/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Watch a user's files, key-value data and notifications, and react to changes as they happen.
tags:
  - clippings
---
## Events

Websites Puter Apps Node.js Workers

---

The Events API is in beta. Event shapes, limits, and behavior may change between releases.

The Events API tells your app when a user's data changes. Subscribe to a file, a folder, a path that doesn't exist yet, a key-value key, or the user's notifications, and your handler runs each time it changes. There's nothing to poll and no server to run.

There are two kinds of subscription:

- **Session subscriptions** ([`onLocal()`](https://docs.puter.com/Events/onLocal/)) live on the open page and end when it closes. Use them to keep a UI in sync.
- **Persistent subscriptions** ([`onPersistent()`](https://docs.puter.com/Events/onPersistent/)) are stored on the account and keep running while your app is closed, running a [handler](https://docs.puter.com/Events/handlers/) your app publishes. Use them for background work, such as processing uploads as they arrive.

What you watch is written as a subject string:

| Subject | Watches |
| --- | --- |
| `fs:~/Documents` | Everything under a folder, or one file by path or uid |
| `fs:~/inbox/*.json:add` | Matching paths, one kind of change |
| `kv:cart` | One key in your app's key-value store (`kv:cart*` for a prefix) |
| `notif:account` | The user's notifications |

See [`onLocal()`](https://docs.puter.com/Events/onLocal/#subjects) for the full subject syntax, the event shape, and how to share key-value events with another user.

With the [User-Pays Model](https://docs.puter.com/user-pays-model/), deliveries are billed to the user holding the subscription, not to you. See [Rate Limits and Quotas](https://docs.puter.com/rate-limits-and-quotas/#events) for limits and costs.

## Features

Watch a Folder

Watch a Key

Wait for a File

Run in the Background

List Subscriptions

Catch Up

#### Print every change under a folder

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            // (1) Create a directory to watch
            const dir = \`~/${puter.randName()}\`;
            await puter.fs.mkdir(dir);

            // (2) Subscribe to everything under it
            const sub = await puter.events.onLocal(\`fs:${dir}\`, ({ event }) => {
                if (event.op === 'gap') {
                    puter.print(\`missed some changes (${event.reason})<br>\`);
                    return;
                }
                puter.print(\`${event.op}: ${event.path}<br>\`);
            });

            // (3) Change something — the handler runs
            await puter.fs.write(\`${dir}/hello.txt\`, 'Hello!');

            // (4) Stop listening (cleanup)
            setTimeout(() => sub.off(), 2000);
        })();
    </script>
</body>
</html>
```

#### Watch a key-value key and a key prefix

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            // (1) Exactly one key, and separately every key under a prefix.
            const one = await puter.events.onLocal('kv:cart', ({ event }) =>
                puter.print(\`${event.op}: ${event.key}<br>\`));
            const many = await puter.events.onLocal(
                \`kv:${puter.appID}:cart:*\`,
                ({ event }) => puter.print(\`under cart: ${event.key}<br>\`));

            // (2) \`cart\` reaches the first, \`cart:items\` only the second.
            await puter.kv.set('cart', { total: 0 });
            await puter.kv.set('cart:items', ['apple']);

            // (3) Cleanup
            setTimeout(async () => {
                await one.off();
                await many.off();
                await puter.kv.del('cart');
                await puter.kv.del('cart:items');
            }, 2000);
        })();
    </script>
</body>
</html>
```

#### React to a file that does not exist yet

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            // (1) A directory to work in. \`inbox/\` below it does not exist yet.
            const dir = \`~/${puter.randName()}\`;
            await puter.fs.mkdir(dir);

            // (2) Subscribe anyway — the subscription anchors on \`dir\` and
            //     matches the rest of the path as it appears.
            const sub = await puter.events.onLocal(
                \`fs:${dir}/inbox/trigger.json:add\`,
                ({ event }) => puter.print(\`appeared: ${event.path}<br>\`),
                { onError: (error) => puter.print(\`subscription ended: ${error.code}<br>\`) },
            );
            puter.print(\`anchored on ${sub.anchor.path}, matching ${sub.match}<br>\`);

            // (3) Create it, several directories deep
            await puter.fs.write(\`${dir}/inbox/trigger.json\`, '{}', {
                createMissingParents: true,
            });

            setTimeout(() => sub.off(), 2000);
        })();
    </script>
</body>
</html>
```

#### Keep watching with a handler after the page closes

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            // (1) An app of your own to publish the handler under
            const name = \`ingest-${puter.randName()}\`;
            const app = await puter.apps.create(name, \`https://example.com/${name}\`);

            // (2) Publish the handler. It closes over nothing — everything it
            //     needs arrives as \`ctx\`.
            await puter.events.handlers.publish(
                'ingestUpload',
                async ({ event, ctx }) => {
                    await fetch(ctx.endpoint, {
                        method: 'POST',
                        body: JSON.stringify({ path: event.path, key: ctx.apiKey }),
                    });
                },
                { appUid: app.uid },
            );

            // (3) Subscribe. \`context\` is read now and never again.
            const dir = \`~/${puter.randName()}\`;
            await puter.fs.mkdir(dir);
            const sub = await puter.events.onPersistent({
                subject: \`fs:${dir}\`,
                handlerName: 'ingestUpload',
                context: { endpoint: 'https://example.com/ingest', apiKey: 'k-123' },
            });

            puter.print(\`watching ${dir} as ${sub.subId}<br>\`);

            // (4) It outlives this page. End it explicitly when you are done.
            await puter.events.unsubscribe(sub.subId);
        })();
    </script>
</body>
</html>
```

#### List the persistent subscriptions this account holds

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            const dir = \`~/${puter.randName()}\`;
            await puter.fs.mkdir(dir);
            const sub = await puter.events.onPersistent({
                subject: \`fs:${dir}\`,
                context: { label: 'inbox' },
            });

            for (const row of await puter.events.list()) {
                puter.print(\`${row.subject} — ${row.delivery}\`);
                puter.print(\` (context: ${row.contextKeys?.join(', ') ?? 'none'})<br>\`);
            }

            await puter.events.unsubscribe(sub.subId);
        })();
    </script>
</body>
</html>
```

#### Read the notifications missed while the app was closed

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            let after;
            let seen = 0;
            do {
                const page = await puter.events.fetch({
                    subject: 'notif:account',
                    after,
                });
                for (const event of page.items) {
                    puter.print(\`${event.type}: ${event.notification.title}<br>\`);
                    seen++;
                }
                after = page.cursor;
            } while (after);

            if (!seen) puter.print('nothing missed<br>');
        })();
    </script>
</body>
</html>
```

## Functions

These Events features are supported out of the box when using Puter.js:

- **[`puter.events.onLocal()`](https://docs.puter.com/Events/onLocal/)** - Subscribe for as long as this client is connected
- **[`subscription.off()`](https://docs.puter.com/Events/off/)** - End a session subscription
- **[`puter.events.onPersistent()`](https://docs.puter.com/Events/onPersistent/)** - Subscribe with a subscription that keeps running when your app is closed
- **[`puter.events.list()`](https://docs.puter.com/Events/list/)** - List the persistent subscriptions this caller holds
- **[`puter.events.unsubscribe()`](https://docs.puter.com/Events/unsubscribe/)** - End a persistent subscription
- **[`puter.events.fetch()`](https://docs.puter.com/Events/fetch/)** - Read what a subject recorded while nothing was listening
- **[`puter.events.handlers`](https://docs.puter.com/Events/handlers/)** - Publish, list and remove the named handlers persistent subscriptions run
- **[`puter.events.workers`](https://docs.puter.com/Events/workers/)** - List and destroy an app's events worker

## Examples

You can see various Puter.js Events features in action from the following examples:

- Session subscriptions
- Persistent subscriptions
- Catching up
- Handlers and workers
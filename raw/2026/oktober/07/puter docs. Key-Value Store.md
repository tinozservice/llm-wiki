---
title: Puter.js Documentation
source: https://docs.puter.com/KV/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Store and retrieve data using key-value pairs in the user's own cloud store.
tags:
  - clippings
---
## Key-Value Store

---

The Key-Value Store API lets you store and retrieve data using key-value pairs in the cloud.

It supports various operations such as set, get, delete, list keys, increment and decrement values, and flush data. This enables you to build powerful functionality into your app, including persisting application data, caching, storing configuration settings, and much more.

Puter.js handles all the infrastructure for you, so you don't need to set up servers, handle scaling, or manage backups. And thanks to the [User-Pays Model](https://docs.puter.com/user-pays-model/), you don't have to worry about storage, read, or write costs, as users of your application cover their own usage.

**Need to share data across users?** Each user's key-value store lives in their own account, so one user can't read another's data. To keep a single, centralized store that every user reads from and writes to, use a [Serverless Worker](https://docs.puter.com/Workers/) — its code can act on the worker owner's resources, giving all users one shared backend.

**Key layout is the access boundary.** To let another account watch part of your store instead of copying it, mint an [Events share handle](https://docs.puter.com/Events/onLocal/#sharing-key-value-events-with-another-user) over a key prefix. A handle pins the prefix it was granted on, so reorganizing your keys breaks every handle already given out — grant on a stable synthetic segment such as `workspace:<uuid>:` rather than a semantic one like `q3-planning:`, which is the kind of name that gets renamed.

## Features

Set

Get

Increment

Decrement

Delete

List Keys

Flush Data

#### Create a new key-value pair

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        puter.kv.set('name', 'Puter Smith').then((success) => {
            puter.print(\`Key-value pair created/updated: ${success}\`);
        });
    </script>
</body>
</html>
```

#### Retrieve the value of key 'name'

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            // (1) Create a new key-value pair
            await puter.kv.set('name', 'Puter Smith');
            puter.print("Key-value pair 'name' created/updated<br>");

            // (2) Retrieve the value of key 'name'
            const name = await puter.kv.get('name');
            puter.print(\`Name is: ${name}\`);
        })();
    </script>
</body>
</html>
```

#### Increment the value of a key

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        puter.kv.incr('testIncrKey').then((newValue) => {
            puter.print(\`New value: ${newValue}\`);
        });
    </script>
</body>
</html>
```

#### Decrement the value of a key

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        puter.kv.decr('testDecrKey').then((newValue) => {
            puter.print(\`New value: ${newValue}\`);
        });
    </script>
</body>
</html>
```

#### Delete the key 'name'

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            // create a new key-value pair
            await puter.kv.set('name', 'Puter Smith');
            puter.print("Key-value pair 'name' created/updated<br>");

            // delete the key 'name'
            await puter.kv.del('name');
            puter.print("Key-value pair 'name' deleted<br>");

            // try to retrieve the value of key 'name'
            const name = await puter.kv.get('name');
            puter.print(\`Name is now: ${name}\`);
        })();
    </script>
</body>
</html>
```

#### Retrieve all keys in the user's key-value store for the current app

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            // (1) Create a number of key-value pairs
            await puter.kv.set('name', 'Puter Smith');
            await puter.kv.set('age', 21);
            await puter.kv.set('isCool', true);
            puter.print("Key-value pairs created/updated<br><br>");

            // (2) Retrieve all keys
            const keys = await puter.kv.list();
            puter.print(\`Keys are: ${keys}<br><br>\`);

            // (3) Retrieve all keys and values
            const key_vals = await puter.kv.list(true);
            puter.print(\`Keys and values are: ${(key_vals).map((key_val) => key_val.key + ' => ' + key_val.value)}<br><br>\`);

            // (4) Match keys with a pattern
            const keys_matching_pattern = await puter.kv.list('is*');
            puter.print(\`Keys matching pattern are: ${keys_matching_pattern}<br>\`);

            // (5) Delete all keys (cleanup)
            await puter.kv.del('name');
            await puter.kv.del('age');
            await puter.kv.del('isCool');
        })();
    </script>
</body>
```

#### Remove all key-value pairs from the user's key-value store for the current app

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            // (1) Create a number of key-value pairs
            await puter.kv.set('name', 'Puter Smith');
            await puter.kv.set('age', 21);
            await puter.kv.set('isCool', true);
            puter.print("Key-value pairs created/updated<br>");

            // (2) Rretrieve all keys
            const keys = await puter.kv.list();
            puter.print(\`Keys are: ${keys}<br>\`);

            // (3) Flush the key-value store
            await puter.kv.flush();
            puter.print('Key-value store flushed<br>');

            // (4) Retrieve all keys again, should be empty
            const keys2 = await puter.kv.list();
            puter.print(\`Keys are now: ${keys2}<br>\`);
        })();
    </script>
</body>
```

## Functions

These Key-Value Store features are supported out of the box when using Puter.js:

- **[`puter.kv.set()`](https://docs.puter.com/KV/set/)** - Set a key-value pair
- **[`puter.kv.get()`](https://docs.puter.com/KV/get/)** - Get a value by key
- **[`puter.kv.incr()`](https://docs.puter.com/KV/incr/)** - Increment a numeric value
- **[`puter.kv.decr()`](https://docs.puter.com/KV/decr/)** - Decrement a numeric value
- **[`puter.kv.add()`](https://docs.puter.com/KV/add/)** - Add values to an existing key
- **[`puter.kv.remove()`](https://docs.puter.com/KV/remove/)** - Remove values by path
- **[`puter.kv.update()`](https://docs.puter.com/KV/update/)** - Update values by path
- **[`puter.kv.del()`](https://docs.puter.com/KV/del/)** - Delete a key-value pair
- **[`puter.kv.expire()`](https://docs.puter.com/KV/expire/)** - Set key expiration in seconds
- **[`puter.kv.expireAt()`](https://docs.puter.com/KV/expireAt/)** - Set key expiration timestamp
- **[`puter.kv.list()`](https://docs.puter.com/KV/list/)** - List keys in ascending or descending order
- **[`puter.kv.flush()`](https://docs.puter.com/KV/flush/)** - Clear all data

## Examples

You can see various Puter.js Key-Value Store features in action from the following examples:

- [Set](https://docs.puter.com/playground/kv-set/)
- [Get](https://docs.puter.com/playground/kv-get/)
- [Increment](https://docs.puter.com/playground/kv-incr/)
- [Decrement](https://docs.puter.com/playground/kv-decr/)
- [Delete](https://docs.puter.com/playground/kv-del/)
- [List](https://docs.puter.com/playground/kv-list/)
- [Querying with Prefix Patterns](https://docs.puter.com/playground/kv-prefix-patterns/)
- [Flush](https://docs.puter.com/playground/kv-flush/)
- [Expire](https://docs.puter.com/playground/kv-expire/)
- [Expire At](https://docs.puter.com/playground/kv-expireAt/)
- [What's your name?](https://docs.puter.com/playground/kv-name/)

## Tutorials

- [Add Key-Value Store to Your App: A Free Alternative to DynamoDB](https://developer.puter.com/tutorials/add-a-cloud-key-value-store-to-your-app-a-free-alternative-to-dynamodb/)
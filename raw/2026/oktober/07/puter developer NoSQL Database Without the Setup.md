---
title: NoSQL Database Without the Setup
source: https://developer.puter.com/key-value-database/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Add a cloud key-value database to your app with a simple JavaScript API that AI coding agents use correctly. No servers, no configuration, no infrastructure.
tags:
  - clippings
---
### Key-Value API

Simple operations for storing and retrieving data, with a small, consistent syntax that AI coding agents use correctly.

### No Infrastructure

No servers to configure, no databases to set up. Just write code and store data.

### User-Pays Model

Build apps without worrying about storage costs. With the [User-Pays model](https://docs.puter.com/user-pays-model/), users cover their own costs.

### No Servers to Provision

Store data directly from the browser with client-side JavaScript. No server code for your AI to write, secure, or maintain.

### Works Everywhere

Use from any frontend with a simple script tag, or install via npm for Node.js projects.

## How It Works

### 1 Include Puter.js

Add Puter.js to your app:

`<script src="https://js.puter.com/v2/"></script>`

or with npm:

`npm install @heyputer/puter.js`

### 2 Store Data in the Cloud

Use the simple JavaScript API to store data:

```
puter.kv.set('name', 'Puter Smith');
```

View the [NoSQL Database documentation](https://docs.puter.com/KV/) for a full list of available features.

### ✓That's it!

No servers to configure, no databases to set up. Your data is stored in the cloud instantly.

[Browse Tutorials](https://developer.puter.com/tutorials/?category=kv) • [Read the Docs](https://docs.puter.com/KV/) • [Try the Playground](https://docs.puter.com/playground/kv-set/)

## The Database API

Set values, get values, increment counters, and more.

```javascript
// Set a key-value pair
await puter.kv.set('username', 'alice');

// Get a value
const name = await puter.kv.get('username');

// Increment a counter
await puter.kv.incr('pageViews');

// List all keys
const keys = await puter.kv.list();
```

[Find more examples →](https://docs.puter.com/KV/#examples)

## Frequently Asked Questions

What is a NoSQL Database?

A key-value database, also known as a key-value store, is a type of NoSQL database that stores data as pairs of keys and values, like a dictionary. With Puter.js, you can save, read, and manage data directly from your JavaScript code without setting up servers or managing infrastructure.

What is Puter.js?

[Puter.js](https://docs.puter.com/) is a JavaScript library that provides cloud storage, AI, and other cloud services through a simple API. It handles authentication, infrastructure, and scaling so you can focus on building your app.

How much does it cost?

With the [User-Pays model](https://docs.puter.com/user-pays-model/), users cover their own storage costs through their Puter account. This means you can build apps without worrying about infrastructure expenses.

What can I use it for?

Key-value storage is perfect for persisting application data, user preferences, session state, chat history in AI apps, caching, counters, leaderboards, configuration settings, and much more. It's ideal when you need fast, simple data storage without complex queries.

How is this different from localStorage?

Unlike localStorage, Puter's key-value database stores data in the cloud, so it syncs across devices and isn't limited to a single browser. It also provides atomic operations like increment/decrement and supports much larger storage limits.

How do I add a key-value database to my app?

Add the Puter.js script to your app with `<script src="https://js.puter.com/v2/"></script>` or install via npm with `npm install @heyputer/puter.js`, then use `puter.kv.set()` to save data and `puter.kv.get()` to retrieve it. Check out the [documentation](https://docs.puter.com/KV/) for more examples, or point your AI coding agent at [llms.txt](https://docs.puter.com/llms.txt).
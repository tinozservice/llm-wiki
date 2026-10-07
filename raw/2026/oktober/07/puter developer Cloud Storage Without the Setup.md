---
title: Cloud Storage Without the Setup
source: https://developer.puter.com/object-storage/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Add cloud storage to your app with a simple JavaScript API that AI coding agents use correctly. No buckets, no CDN config, no infrastructure.
tags:
  - clippings
---
### File System API

Familiar file operations, with a small, consistent syntax that AI coding agents use correctly.

### No Infrastructure

No buckets to configure, no CDN to set up, no availability to manage. Just write code and store files.

### User-Pays Model

Build apps without worrying about storage or bandwidth costs. With the [User-Pays model](https://docs.puter.com/user-pays-model/), users cover their own costs.

### No Servers to Provision

Store files directly from the browser with client-side JavaScript. No server code for your AI to write, secure, or maintain.

### Works Everywhere

Use from any frontend with a simple script tag, or install via npm for Node.js projects.

## How It Works

### 1 Include Puter.js

Add Puter.js to your app:

`<script src="https://js.puter.com/v2/"></script>`

or with npm:

`npm install @heyputer/puter.js`

### 2 Store Files in the Cloud

Use the simple JavaScript API to store files:

```
puter.fs.write('hello.txt', 'Hello, world!');
```

View the [Cloud Storage documentation](https://docs.puter.com/FS/) for a full list of available features.

### ✓That's it!

No buckets to configure, no CDN to set up, no infrastructure to manage. The files are stored in the cloud instantly.

[Browse Tutorials](https://developer.puter.com/tutorials/?category=storage) • [Read the Docs](https://docs.puter.com/FS/) • [Try the Playground](https://docs.puter.com/playground/intro-fs-write/)

## The Storage API

Write files, read files, create directories, and more.

```javascript
// Write a file
puter.fs.write('hello.txt', 'Hello, world!');

// Read a file
const content = await puter.fs.read('hello.txt');

// Create a directory
await puter.fs.mkdir('my-folder');

// List files in a directory
const files = await puter.fs.readdir('my-folder');
```

[Find more examples →](https://docs.puter.com/FS/#examples)

## Frequently Asked Questions

What is Cloud Storage?

Cloud storage keeps your app's files on remote servers so they are available from any device. With Puter.js, you can save, read, and manage files directly from your JavaScript code without setting up servers, configuring buckets, or managing infrastructure.

What is Puter?

Puter is a cloud platform that provides storage, AI, and other cloud services through a simple JavaScript API via Puter.js. It handles authentication, infrastructure, and scaling so you can focus on building your app.

How much does it cost?

With the [User-Pays model](https://docs.puter.com/user-pays-model/), users cover their own storage and bandwidth costs through their Puter account. This means you can build apps without worrying about infrastructure expenses.

How do I add cloud storage to my app?

Add the Puter.js script to your app with `<script src="https://js.puter.com/v2/"></script>`, then use `puter.fs.write()` to save files and `puter.fs.read()` to retrieve them. Check out the [documentation](https://docs.puter.com/FS/) for more examples, or point your AI coding agent at [llms.txt](https://docs.puter.com/llms.txt).
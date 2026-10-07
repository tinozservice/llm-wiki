---
title: Puter.js Documentation
source: https://docs.puter.com/supported-platforms/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Use Puter.js on any platform with JavaScript support, including websites, Puter Apps, Node.js, and Serverless Workers.
tags:
  - clippings
---
## Supported Platforms

---

Puter.js works on any platform with JavaScript support. This includes websites, Puter Apps, Node.js, and Puter Serverless Workers.

## Websites

Use Puter.js in your websites to add powerful features like AI, databases, and cloud storage without worrying about infrastructure.

You can use it across all kinds of web development technologies, from static HTML sites and single-page applications (React, Vue, Angular) to full-stack frameworks like Next.js, Nuxt, and SvelteKit, or any JavaScript-based web application.

NPM module

CDN (script tag)

### Installation via NPM

```
npm install @heyputer/puter.js
```

### Importing Puter.js

```js
// ESM
import { puter } from "@heyputer/puter.js";
// or
import puter from "@heyputer/puter.js";

// CommonJS
const { puter } = require("@heyputer/puter.js");
// or
const puter = require("@heyputer/puter.js");
```

### Usage via CDN

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        puter.ai.chat(\`What is life?\`, { model: "gpt-5.6-luna" }).then(puter.print);
    </script>
</body>
</html>
```

### Unsupported contexts

Puter identifies your app by its origin, so a page the browser gives no origin to cannot be signed in:

- **Pages opened straight from disk** (`file:///...`). Serve the file instead — `python3 -m http.server` or `npx http-server` is enough, and `http://localhost` works like any other origin.
- **Iframes sandboxed without `allow-same-origin`.** Add `allow-same-origin` to the `sandbox` attribute, or load Puter.js from the parent page.

In both cases Puter.js shows an "Unsupported Origin" dialog on load, and `puter.auth.signIn()` rejects with [`unsupported_origin`](https://docs.puter.com/Auth/signIn/).

### Starter templates for web

- [Angular](https://github.com/HeyPuter/angular)
- [React](https://github.com/HeyPuter/react)
- [Next.js](https://github.com/HeyPuter/next.js)
- [Vue.js](https://github.com/HeyPuter/vue.js)
- [Vanilla JS](https://github.com/HeyPuter/vanilla.js)

## Puter Apps

Puter Apps are web-based applications that run in the [Puter](https://puter.com/) web-based operating system.

You can use Puter.js in Puter Apps just as you would in any website. They have full access to all web capabilities, plus the added benefits of Puter desktop, such as:

- **Automatic authentication** - Users are automatically authenticated in the Puter environment
- **Inter-app communication** - Interact with other Puter apps programmatically
- **File system integration** - Direct access to the user's Puter file system
- **Cloud desktop integration** - Apps run seamlessly in the Puter desktop environment
![](https://assets.puter.site/puter.com-screenshot-3.webp)

Puter cloud desktop environment

The Puter ecosystem hosts over 60,000 live applications, from essential tools like Notepad, File Explorer, Code Editor, and many more specialized applications.

## Node.js

Puter.js works seamlessly in Node.js environments, allowing you to integrate AI, databases, and cloud storage with your Node.js applications. This makes it ideal for building backend services and APIs, performing server-side data processing, or creating CLI tools and automation scripts.

```js
const { init } = require("@heyputer/puter.js/src/init.cjs");
// or
import { init } from "@heyputer/puter.js/src/init.cjs";

const puter = init(process.env.puterAuthToken); // uses your auth token

// Chat with GPT-5 nano
puter.ai.chat("What color was Napoleon's white horse?").then((response) => {
  puter.print(response);
});
```

Get started quickly with the [Node.js + Express template](https://github.com/HeyPuter/node.js-express.js).

If your environment has browser access (e.g. CLI tools), you can use `getAuthToken()` to obtain a token via web-based login.

## Serverless Workers

[Serverless Workers](https://docs.puter.com/Workers/) let you run HTTP servers and backend APIs.

Think of them as your serverless backend and API endpoints. Just like in other serverless platforms, you can use Puter.js in workers to access AI, cloud storage, key-value stores, and databases.

```js
// Simple GET endpoint
router.get("/api/hello", async ({ request }) => {
  return { message: "Hello, World!" };
});

// POST endpoint with JSON body
router.post("/api/user", async ({ request }) => {
  const body = await request.json();
  return { processed: true };
});
```
---
title: Puter.js Documentation
source: https://docs.puter.com/getting-started/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Get started with Puter.js for building your applications. No backend code, just add Puter.js and you're ready to start.
tags:
  - clippings
---
## Getting Started

---

## Quick Start

Install Puter.js using NPM or include it directly via CDN.

NPM module

CDN (script tag)

#### Install

```
npm install @heyputer/puter.js
```

#### Use in the browser

```js
import { puter } from "@heyputer/puter.js";

// Example: Use AI to answer a question
puter.ai.chat(\`Why did the chicken cross the road?\`).then(console.log);
```

#### Use in Node.js

Initialize Puter.js with your auth token using the `init` function:

```js
import { init } from "@heyputer/puter.js/src/init.cjs";
const puter = init(process.env.puterAuthToken);

// Example: Use AI to answer a question
puter.ai.chat("What color was Napoleon's white horse?").then(console.log);
```

If your environment has browser access, you can obtain a token via browser login:

```js
import { init, getAuthToken } from "@heyputer/puter.js/src/init.cjs";

const authToken = await getAuthToken(); // performs browser based auth
const puter = init(authToken);
```

#### Include the script

```html
<script src="https://js.puter.com/v2/"></script>
```

#### Use in the browser

```html
<html>
  <body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
      puter.ai.chat(\`Why did the chicken cross the road?\`).then(puter.print);
    </script>
  </body>
</html>
```

Serve this page rather than double-clicking it. Puter identifies your app by its origin, and a page opened straight from disk (`file:///`) has none — see [Supported Platforms](https://docs.puter.com/supported-platforms/). Any local server works: `python3 -m http.server`, then open `http://localhost:8000`.

## Starter templates

Additionally, you can use one of the following starter templates to get started:

## Where to Go From Here

To learn more about the capabilities of Puter.js and how to use them in your web application, check out

- [Tutorials](https://developer.puter.com/tutorials): Step-by-step guides to help you get started with Puter.js and build powerful applications.
- [Playground](https://docs.puter.com/playground): Experiment with Puter.js in your browser and see the results in real-time. Many examples are available to help you understand how to use Puter.js effectively.
- [Examples](https://docs.puter.com/examples): A collection of code snippets and full applications that demonstrate how to use Puter.js to solve common problems and build innovative applications.
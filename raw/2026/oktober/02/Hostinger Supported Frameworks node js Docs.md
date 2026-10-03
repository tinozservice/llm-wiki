---
title: Supported Frameworks | Hostinger Documentation
source: https://docs.hostinger.com/node.js/overview-1
author:
  - "[[hostinger.com]]"
published: 2026-09-23
created: 2026-10-02
description: Overview of frontend, backend, and dual-mode Node.js frameworks supported on Hostinger, with links to per-framework build settings and app_type values.
tags:
  - clippings
---
For the complete documentation index, see [llms.txt](https://docs.hostinger.com/llms.txt). This page is also available as [Markdown](https://docs.hostinger.com/node.js/overview-1.md).

Your Node.js app must be built with one of the frameworks below. Pick the page for your framework to see `app_type`, build settings, and mode-specific configuration.

Hostinger auto-detects most frameworks from `package.json` — whether you import a GitHub repository or upload an archive. You can override the choice in hPanel or via the API.

## Frontend (static / client-rendered)

Builds to a directory of files; Hostinger serves them directly — no running server process.

- [Angular](https://docs.hostinger.com/node.js/overview-1/angular)
- [Create React App](https://docs.hostinger.com/node.js/overview-1/create-react-app)
- [Gatsby](https://docs.hostinger.com/node.js/overview-1/gatsby)
- [Parcel](https://docs.hostinger.com/node.js/overview-1/parcel)
- [Preact](https://docs.hostinger.com/node.js/overview-1/preact)
- [React](https://docs.hostinger.com/node.js/overview-1/react)
- [Svelte](https://docs.hostinger.com/node.js/overview-1/svelte)
- [Vite](https://docs.hostinger.com/node.js/overview-1/vite)
- [Vue.js](https://docs.hostinger.com/node.js/overview-1/vue)

## Backend (server-rendered)

Keeps a long-lived Node.js process alive to handle requests — SSR, APIs, full-stack.

- [Express.js](https://docs.hostinger.com/node.js/overview-1/express)
- [Fastify](https://docs.hostinger.com/node.js/overview-1/fastify)
- [Hono](https://docs.hostinger.com/node.js/overview-1/hono)
- [NestJS](https://docs.hostinger.com/node.js/overview-1/nest)
- [Next.js](https://docs.hostinger.com/node.js/overview-1/next)

## Dual-mode (static or server)

Support both, depending on your project configuration:

- [Astro](https://docs.hostinger.com/node.js/overview-1/astro)
- [Nitro](https://docs.hostinger.com/node.js/overview-1/nitro)
- [Nuxt.js](https://docs.hostinger.com/node.js/overview-1/nuxt)
- [React Router](https://docs.hostinger.com/node.js/overview-1/react-router)
- [SvelteKit](https://docs.hostinger.com/node.js/overview-1/sveltekit)

## Not on the list?

Pick **Other** (`other`) as the application type. You provide the build script, output directory, and entry file — Hostinger runs them without framework-specific defaults. For a server app, set the entry file relative to the root directory; the output directory is then ignored and the whole root directory is deployed.

## Related

- [Creating a Node.js App](https://docs.hostinger.com/node.js/creating-an-app) — step-by-step walkthrough
- [Build Settings](https://docs.hostinger.com/node.js/build-settings) — every configuration field explained
- [API reference](https://docs.hostinger.com/api-reference/endpoints/hosting/nodejs) — programmatic deployment

---

*Last updated: September 23, 2026*[PreviousVulnerability Scanning](https://docs.hostinger.com/node.js/vulnerabilities)

[

NextAngular

](https://docs.hostinger.com/node.js/overview-1/angular)

Last updated 8 days ago
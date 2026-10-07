---
title: Full Networking in the Browser
source: https://developer.puter.com/networking/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: TCP, TLS, and CORS-free fetch, directly from your frontend with Puter.js. No servers, no proxies, no setup.
tags:
  - clippings
---
### Networking API

Full networking from frontend JavaScript, with an API optimized for AI coding agents to use correctly.

### Bypass CORS

Make HTTP requests to any external API without CORS restrictions. No more proxy servers or workarounds.

### No Proxies or Servers

Connect to any server directly from frontend JavaScript. No proxy servers or infrastructure to configure.

### TLS/Secure Connections

Create secure TLS socket connections for encrypted communication to any server.

### User-Pays Model

Build apps without worrying about bandwidth costs. With the [User-Pays model](https://docs.puter.com/user-pays-model/), users cover their own costs.

## Browsers Don't Do This

Web pages have never had raw network access. The browser gives you fetch and WebSockets, both built on HTTP, and CORS restricts which URLs you can even call. Anything else, like connecting to a database, a mail server, or an SSH host, has always required a server to make the connection for you.

puter.net removes that limit. Your app opens a socket in JavaScript, the connection is tunneled over a single WebSocket to a Puter relay, and the relay opens a plain TCP connection to the target. TLS runs inside the tunnel, in the browser itself, so the relay never sees decrypted traffic. We are not aware of any other JavaScript SDK that gives frontend code a raw TCP socket.

| From frontend JavaScript | Browser alone | With puter.net |
| --- | --- | --- |
| Fetch a CORS-enabled API | ✓ | ✓ |
| Fetch any URL | ✗ | ✓ |
| Open a WebSocket | ✓ | ✓ |
| Open a raw TCP socket | ✗ | ✓ |
| Open a TLS socket | ✗ | ✓ |
| Talk to Postgres, Redis, SMTP, or SSH | ✗ | ✓ |

Under the hood, every stream is multiplexed over the open [Wisp](https://github.com/MercuryWorkshop/wisp-protocol) protocol on that single WebSocket, and TLS comes from [rustls](https://github.com/MercuryWorkshop/rustls-wasm) compiled to WebAssembly. The whole stack, including [Puter itself](https://github.com/HeyPuter/puter), is open source. The full write-up is in [Unrestricted Browser Networking](https://developer.puter.com/blog/unrestricted-browser-networking-raw-tcp-sockets-modern-tls-and-cors-free-http/).

## How It Works

### 1 Include Puter.js

Add Puter.js to your app:

`<script src="https://js.puter.com/v2/"></script>`

or with npm:

`npm install @heyputer/puter.js`

### 2 Connect to TCP

Open a TCP socket connection directly from the browser:

```
new puter.net.Socket("example.com", 80);
```

View the [Networking documentation](https://docs.puter.com/Networking/) for a full list of available features.

### ✓That's it!

No servers to configure, no proxies to set up. Connect to any TCP server directly from the browser.

[Browse Tutorials](https://developer.puter.com/tutorials/?category=networking) • [Read the Docs](https://docs.puter.com/Networking/) • [Try the Playground](https://docs.puter.com/playground/net-basic/)

## The Networking API

TCP sockets, TLS connections, and CORS-free fetch.

```javascript
// Open a TCP socket connection
const socket = new puter.net.Socket("example.com", 80);

// Open a secure TLS socket connection
const tlsSocket = new puter.net.tls.TLSSocket("example.com", 443);

// Send data when connected
socket.on("open", () => {
    socket.write("GET / HTTP/1.1\r\nHost: example.com\r\n\r\n");
});

// Fetch without CORS restrictions
const response = await puter.net.fetch("https://api.example.com");
```

[Find more examples →](https://docs.puter.com/Networking/#examples)

Built on `puter.net`: [a browser](https://puter.com/app/flash-browser), [an API tester](https://puter.com/app/api-tester), and [a web scraper](https://puter.com/app/scraper), each running entirely in the frontend.

## Frequently Asked Questions

What is the Puter.js Networking API?

The Puter.js Networking API lets you establish network connections directly from your frontend JavaScript code. It provides TCP sockets, TLS sockets, and an HTTP fetch function that bypasses CORS restrictions, all without requiring a server or proxy.

Can a web page normally open a TCP socket?

No. Browsers expose fetch and WebSockets, both built on HTTP, and CORS restricts which URLs a page can call. There is no standard browser API for raw TCP or TLS connections. puter.net provides them by tunneling the connection over a WebSocket to a Puter relay, with TLS handled in the browser so the relay never sees decrypted traffic. We are not aware of any other JavaScript SDK that offers this.

How does it bypass CORS restrictions?

Puter's networking is built on the open [Wisp](https://github.com/MercuryWorkshop/wisp-protocol) protocol, which relays TCP and UDP connections over a single WebSocket stream. Unlike typical CORS proxies, TLS encryption is handled client-side, meaning your HTTPS connections are fully secure end-to-end: Puter's servers never have access to your encrypted data. The full write-up is in [Unrestricted Browser Networking](https://developer.puter.com/blog/unrestricted-browser-networking-raw-tcp-sockets-modern-tls-and-cors-free-http/).

Is it secure?

Yes. Puter.js supports TLS socket connections for encrypted communication. When using `puter.net.tls.TLSSocket()`, your data is encrypted end-to-end. The fetch API also supports HTTPS requests for secure communication with external servers.

What can I use this for?

The Networking API is perfect for connecting to external APIs without CORS issues, fetching data from third-party services, and any scenario where you need low-level network access from the browser. You can build SSH clients, email clients, and custom protocol handlers, all running in the browser.

How do I add networking to my app?

Add the Puter.js script to your app with `<script src="https://js.puter.com/v2/"></script>` or install via npm with `npm install @heyputer/puter.js`, then use `new puter.net.Socket()` for TCP connections or `puter.net.fetch()` for HTTP requests. Check out the [documentation](https://docs.puter.com/Networking/) for more examples, or point your AI coding agent at [llms.txt](https://docs.puter.com/llms.txt).

How much does it cost?

With Puter's [User-Pays model](https://docs.puter.com/user-pays-model/), users cover their own bandwidth costs through their Puter account, so you can build apps without worrying about infrastructure expenses.
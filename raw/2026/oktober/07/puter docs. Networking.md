---
title: Puter.js Documentation
source: https://docs.puter.com/Networking/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Establish network connections directly from the frontend without a server or proxy.
tags:
  - clippings
---
## Networking

---

The Puter.js Networking API lets you establish network connections directly from your frontend without requiring a server or a proxy, effectively giving you a full-featured networking API in the browser.

`puter.net` provides both low-level socket connections via TCP socket and TLS socket, and high-level HTTP client functionality, such as `fetch`. One of the major benefits of `puter.net` is that it allows you to bypass CORS restrictions entirely, making it a powerful tool for developing web applications that need to make requests to external APIs.

## Features

Fetch

Socket

TLS Socket

#### Connect to a server with TLS and print the response

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
    const socket = new puter.net.tls.TLSSocket("example.com", 443);
    socket.on("tlsopen", () => {
        socket.write("GET / HTTP/1.1\r\nHost: example.com\r\n\r\n");
    })
    const decoder = new TextDecoder();
    socket.on("tlsdata", (data) => {
        puter.print(decoder.decode(data), { code: true });
    })
    socket.on("error", (reason) => {
        puter.print("Socket errored with the following reason: ", reason);
    })
    socket.on("tlsclose", (hadError)=> {
        puter.print("Socket closed. Was there an error? ", hadError);
    })
    </script>
</body>
</html>
```

## Functions

These networking features are supported out of the box when using Puter.js:

- **[`puter.net.fetch()`](https://docs.puter.com/Networking/fetch/)** - Make HTTP requests
- **[`puter.net.Socket()`](https://docs.puter.com/Networking/Socket/)** - Create TCP socket connections
- **[`puter.net.tls.TLSSocket()`](https://docs.puter.com/Networking/TLSSocket/)** - Create secure TLS socket connections

## Examples

You can see various Puter.js networking features in action from the following examples:

- [Basic TCP Socket](https://docs.puter.com/playground/net-basic/)
- [TLS Socket](https://docs.puter.com/playground/net-tls/)
- [Fetch](https://docs.puter.com/playground/net-fetch/)

## Tutorials

- [How to Bypass CORS Restrictions](https://developer.puter.com/tutorials/cors-free-fetch-api/)
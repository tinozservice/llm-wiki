---
title: Peer-to-Peer Communication API
source: https://developer.puter.com/peer/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Add WebRTC peer-to-peer data channels to your web app with Puter.js. Built-in signaling and TURN relays for multiplayer games, chat, and collaboration. No servers to run.
tags:
  - clippings
---
### Peer API

Direct browser-to-browser communication over WebRTC data channels, with a simple API that AI coding agents use correctly.

### No Signaling Server

Skip the WebRTC boilerplate. Puter handles signaling and TURN/STUN config so you do not have to run a server.

### Invite-Code Access

Each peer server generates an invite code. Only the clients you share it with can connect, so access stays in your control.

### Real-Time & Low Latency

Data flows directly between peers instead of through your servers. Ideal for games, chat, and collaborative editing.

### User-Pays Model

Build apps without worrying about infrastructure costs. With the [User-Pays model](https://docs.puter.com/user-pays-model/), users cover their own costs.

## How It Works

### 1 Include Puter.js

Add Puter.js to your app:

`<script src="https://js.puter.com/v2/"></script>`

or with npm:

`npm install @heyputer/puter.js`

### 2 Start a Peer Server

Create a peer server and share its invite code:

```
const server = await puter.peer.serve();
```

View the [Peer documentation](https://docs.puter.com/Peer/) for a full list of available features.

### 3 Connect from a Client

Join from another browser using the invite code:

```
const conn = await puter.peer.connect(inviteCode);
```

### ✓That's it!

No signaling server, no TURN config, no WebRTC boilerplate. Send data directly between browsers.

[Read the Docs](https://docs.puter.com/Peer/) • [Read the Guide](https://developer.puter.com/blog/puter-peer/) • [Join the Community](https://github.com/HeyPuter/puter)

## Simple API, Real-Time Power

Serve, connect, and send.  
The API handles signaling, TURN relays, and WebRTC so you can focus on building your app.

```javascript
// Host: start a peer server and share the invite code
const server = await puter.peer.serve();
console.log(\`Invite code: ${server.inviteCode}\`);

server.addEventListener("connection", (event) => {
    const conn = event.conn;
    conn.addEventListener("open", () => conn.send("Hello from the host!"));
    conn.addEventListener("message", (msg) => console.log("Peer says:", msg.data));
});

// Client: connect using the invite code
const conn = await puter.peer.connect(inviteCode);
conn.addEventListener("open", () => conn.send("Hello from the client!"));
conn.addEventListener("message", (msg) => console.log("Host says:", msg.data));
```

[Find more examples →](https://docs.puter.com/Peer/)

## Frequently Asked Questions

What is the Puter.js Peer API?

The Puter.js Peer API lets you create direct peer-to-peer connections between browsers using WebRTC data channels. It comes with built-in signaling and Puter-managed TURN relays, so you can connect clients directly without running your own signaling or TURN server.

Do I need to run a signaling or TURN server?

No. Puter handles signaling and provides managed TURN relays automatically. You skip the hundreds of lines of WebRTC boilerplate, TURN/STUN configuration, and the external signaling server that peer-to-peer connections normally require.

How do peers find each other?

The Peer API uses a server/client model. One client calls `puter.peer.serve()` to start a peer server and receives an invite code. You share that code with other clients, who join by calling `puter.peer.connect(inviteCode)`. Only users you give the code to can connect.

What can I build with the Peer API?

Multiplayer games, collaborative editors, live chat, real-time dashboards, and direct file transfer are all possible. Any app that needs low-latency, browser-to-browser communication is a great fit because data flows directly between peers instead of round-tripping through a server. Check out the [documentation](https://docs.puter.com/Peer/) for examples, or point your AI coding agent at [llms.txt](https://docs.puter.com/llms.txt).

Is it secure?

Yes. Peer connections require authentication, and Puter.js will prompt the user to authenticate if needed. Access is gated by invite codes, so only clients with the code can join, and WebRTC data channels are encrypted in transit.

How much does it cost?

With Puter's [User-Pays model](https://docs.puter.com/user-pays-model/), users cover their own usage costs through their Puter account, so you can build apps without worrying about infrastructure expenses.
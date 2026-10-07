---
title: Voice Changer API
source: https://developer.puter.com/voice-changer/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Add voice changer capability to your app with Puter.js. Convert and clone voices with a simple API. No API keys, no servers, no signup required.
tags:
  - clippings
---
Add voice changer capability to your app with Puter.js.  
Convert and clone voices with a simple API.  
No servers or API keys required.

[Add Voice Changer](https://docs.puter.com/AI/speech2speech/) [Read Tutorial](https://developer.puter.com/tutorials/free-unlimited-voice-changer-api/)

### Multiple Voice Options

Access a variety of voices through ElevenLabs' multilingual voice conversion model.

- Switch voices by changing one parameter
- Support for multiple languages
- High-quality voice conversion

### No API Keys Required

Skip the sign-ups, key management, and credential juggling. Just add Puter.js and start converting voices immediately.

### User-Pays Model

[Your users cover their own AI costs](https://docs.puter.com/user-pays-model/), so you can ship voice changer features without worrying about billing or runaway API expenses.

### No Servers Required

Convert voices directly from the browser with client-side JavaScript. No server code needed.

### Works Everywhere

Use from any frontend with a simple script tag, or install via npm for Node.js projects.

## How It Works

### 1 Include Puter.js

Add Puter.js to your app:

`<script src="https://js.puter.com/v2/"></script>`

or with npm:

`npm install @heyputer/puter.js`

### 2 Convert Voice

Use the simple JavaScript API to convert voices:

```
puter.ai.speech2speech("~/audio/recording.wav")
```

View the [voice changer documentation](https://docs.puter.com/AI/speech2speech/) for a full list of available features.

### ✓That's it!

No need to set up servers or infrastructure. No API keys, configuration, or rate-limiting. Everything is handled by Puter.js!

[Read the Docs](https://docs.puter.com/AI/speech2speech/) • [Try the Playground](https://docs.puter.com/playground/ai-speech2speech-url/)

## Simple Voice Changer API

Convert voices with just a few lines of code.

```javascript
// Convert voice from a file path
const audio = await puter.ai.speech2speech("~/recordings/voice.wav");
audio.play();

// Convert voice with a specific voice ID
const converted = await puter.ai.speech2speech(audioFile, {
    voice: '21m00Tcm4TlvDq8ikWAM', // Rachel sample voice
});

// Convert from a Blob or File object
const blob = await recorder.stop();
const result = await puter.ai.speech2speech(blob, {
    remove_background_noise: true,
});
```

[View documentation →](https://docs.puter.com/AI/speech2speech/)

## Frequently Asked Questions

What is this voice changer API about?

The Puter.js Voice Changer API lets you convert and clone voices using AI-powered speech-to-speech technology. Transform any audio recording into a different voice directly from your frontend code, without managing API keys or infrastructure.

What is Puter.js?

[Puter.js](https://docs.puter.com/) is a JavaScript library that provides access to AI, storage, and other cloud services directly from your frontend code. It handles authentication, infrastructure, and scaling so you can focus on building your app.

How much does it cost?

With the [User-Pays model](https://docs.puter.com/user-pays-model/), users cover their own voice conversion costs through their Puter account. This means you can build apps without worrying about infrastructure expenses.

What can I use this voice changer API for?

You can use the API for apps that need voice conversion: content creation tools, voice dubbing applications, accessibility features, gaming and entertainment apps, voice anonymization, and any application where users want to transform their voice into a different one.
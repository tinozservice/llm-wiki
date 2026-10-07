---
title: Text to Speech API
source: https://developer.puter.com/text-to-speech/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Add text to speech to your app with Puter.js. No servers or API keys required. Convert text to natural-sounding speech with a simple JavaScript API.
tags:
  - clippings
---
Add text to speech to your app with Puter.js.  
No servers or API keys required.

[Add Text to Speech](https://docs.puter.com/AI/txt2speech/) [Read Tutorial](https://developer.puter.com/tutorials/free-unlimited-text-to-speech-api/)

### Multiple TTS Providers

Access AWS Polly, OpenAI TTS, and ElevenLabs through a single unified API.

- Switch providers by changing one parameter
- Standard, neural, and generative engines
- No vendor lock-in

### No API Keys Required

Skip the sign-ups, key management, and credential juggling. Just add Puter.js and start converting text to speech immediately.

### Multiple Languages

Generate speech in multiple languages including English, French, German, Spanish, Italian, and more with native-sounding voices.

### No Servers Required

Generate speech directly from the browser with client-side JavaScript. No server code needed.

### User-Pays Model

[Your users cover their own TTS costs](https://docs.puter.com/user-pays-model/), so you can ship text-to-speech features without worrying about billing or runaway API expenses.

## How It Works

### 1 Include Puter.js

Add Puter.js to your app:

`<script src="https://js.puter.com/v2/"></script>`

or with npm:

`npm install @heyputer/puter.js`

### 2 Convert Text to Speech

Use the simple JavaScript API to generate speech:

```
puter.ai.txt2speech("Hello, world!")
```

View the [text-to-speech documentation](https://docs.puter.com/AI/txt2speech/) for a full list of available features.

### ✓That's it!

No need to set up servers or infrastructure. No API keys, configuration, or rate-limiting. Everything is handled by Puter.js!

[Read the Docs](https://docs.puter.com/AI/txt2speech/) • [Try the Playground](https://docs.puter.com/playground/ai-txt2speech/)

## Generate Speech with a Simple, Keyless API

Convert text to natural-sounding speech using different providers and voices.

```javascript
// Basic text to speech with default settings
const audio = await puter.ai.txt2speech("Hello, world!");
audio.play();

// Use neural engine for higher quality
const neural = await puter.ai.txt2speech("Welcome to Puter!", {
    voice: "Joanna",
    engine: "neural"
});

// Use OpenAI TTS
const openai = await puter.ai.txt2speech("This is OpenAI TTS.", {
    provider: "openai",
    model: "tts-1-hd",
    voice: "nova"
});

// Use ElevenLabs for premium voices
const elevenlabs = await puter.ai.txt2speech("Premium voice quality.", {
    provider: "elevenlabs",
    model: "eleven_multilingual_v2"
});
```

[Find more examples →](https://docs.puter.com/AI/txt2speech/#examples)

## Frequently Asked Questions

What is this text to speech API about?

Use Puter.js Text to Speech API to convert text into natural-sounding speech. Access multiple TTS providers including AWS Polly, OpenAI, and ElevenLabs through a simple JavaScript API. Generate speech directly from your frontend code without managing API keys or infrastructure.

What is Puter.js?

[Puter.js](https://docs.puter.com/) is a JavaScript library that provides access to AI, storage, and other cloud services directly from your frontend code. It handles authentication, infrastructure, and scaling so you can focus on building your app.

How much does it cost?

With the [User-Pays model](https://docs.puter.com/user-pays-model/), users cover their own text-to-speech costs through their Puter account. This means you can build apps without worrying about infrastructure expenses.

What can I use this text to speech API for?

You can use the API for apps that need voice output: accessibility features, e-learning platforms, voice assistants, audiobook generators, notification systems, language learning apps, and any application where users want to hear text read aloud.
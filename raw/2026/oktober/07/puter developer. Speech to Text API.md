---
title: Speech to Text API
source: https://developer.puter.com/speech-to-text/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Add speech recognition and transcription to your app with Puter.js. No servers or API keys required. Convert audio to text with a simple JavaScript API.
tags:
  - clippings
---
Add speech recognition to your app with Puter.js.  
No servers or API keys required.

[Add Speech to Text](https://docs.puter.com/AI/speech2txt/) [Read Tutorial](https://developer.puter.com/tutorials/free-unlimited-speech-to-text-api/)

### Multiple Transcription Models

Access GPT-4o Transcribe, Whisper, and diarization models through a single unified API.

- Switch models by changing one parameter
- Standard and advanced transcription engines
- No vendor lock-in

### No API Keys Required

Skip the sign-ups, key management, and credential juggling. Just add Puter.js and start transcribing audio immediately.

### Speaker Diarization

Identify who said what in multi-speaker recordings. Ideal for meeting transcriptions, interviews, and podcast notes.

### No Servers Required

Transcribe audio directly from the browser with client-side JavaScript. No server code needed.

### User-Pays Model

[Your users cover their own transcription costs](https://docs.puter.com/user-pays-model/), so you can ship speech-to-text features without worrying about billing or runaway API expenses.

## How It Works

### 1 Include Puter.js

Add Puter.js to your app:

`<script src="https://js.puter.com/v2/"></script>`

or with npm:

`npm install @heyputer/puter.js`

### 2 Transcribe Audio

Use the simple JavaScript API to convert speech to text:

```
puter.ai.speech2txt("audio.mp3")
```

View the [speech-to-text documentation](https://docs.puter.com/AI/speech2txt/) for a full list of available features.

### ✓That's it!

No need to set up servers or infrastructure. No API keys, configuration, or rate-limiting. Everything is handled by Puter.js!

[Read the Docs](https://docs.puter.com/AI/speech2txt/) • [Try the Playground](https://docs.puter.com/playground/ai-speech2txt/)

## Speech Recognition Without the Complexity

Convert audio to text using different models and output formats.

```javascript
// Basic speech to text transcription
const text = await puter.ai.speech2txt(audioFile);
console.log(text);

// Transcribe from a URL
const result = await puter.ai.speech2txt(
    "https://example.com/audio.mp3"
);

// Use GPT-4o for higher accuracy
const transcript = await puter.ai.speech2txt(audioFile, {
    model: "gpt-4o-transcribe"
});

// Speaker diarization - identify who said what
const diarized = await puter.ai.speech2txt(audioFile, {
    model: "gpt-4o-transcribe-diarize",
    response_format: "diarized_json"
});

// Generate SRT subtitles
const subtitles = await puter.ai.speech2txt(audioFile, {
    response_format: "srt"
});
```

[Find more examples →](https://docs.puter.com/AI/speech2txt/#examples)

## Frequently Asked Questions

What is this speech to text API about?

Use Puter.js Speech to Text API to convert audio into accurate text transcriptions. Access multiple transcription models including GPT-4o Transcribe, Whisper, and diarization through a simple JavaScript API. Transcribe audio directly from your frontend code without managing API keys or infrastructure.

What is Puter.js?

[Puter.js](https://docs.puter.com/) is a JavaScript library that provides access to AI, storage, and other cloud services directly from your frontend code. It handles authentication, infrastructure, and scaling so you can focus on building your app.

How much does it cost?

With the [User-Pays model](https://docs.puter.com/user-pays-model/), users cover their own transcription costs through their Puter account. This means you can build apps without worrying about infrastructure expenses.

What can I use this speech to text API for?

You can use the API for meeting transcriptions, podcast notes, interview recordings, voice note apps, subtitle generation, accessibility features, language learning apps, voice assistants, and any application where users need to convert spoken audio into text.
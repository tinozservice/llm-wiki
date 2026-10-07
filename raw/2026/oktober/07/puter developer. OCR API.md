---
title: OCR API
source: https://developer.puter.com/ocr/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Add optical character recognition to your app with Puter.js. No servers or API keys required. Extract text from images with a simple JavaScript API.
tags:
  - clippings
---
Add optical character recognition to your app with Puter.js.  
No servers or API keys required.

[Add OCR](https://docs.puter.com/AI/img2txt/) [Read Tutorial](https://developer.puter.com/tutorials/free-unlimited-ocr-api/)

### Multiple OCR Providers

Access AWS Textract and Mistral OCR through a single unified API.

- Switch providers by changing one parameter
- Extract text from images and PDFs
- No vendor lock-in

### No API Keys Required

Skip the sign-ups, key management, and credential juggling. Just add Puter.js and start extracting text from images immediately.

### Extract from Any Image

Process image URLs, uploaded files, or Blob objects. Supports printed text, handwriting, and multi-page PDFs.

### No Servers Required

Extract text from images directly from the browser with client-side JavaScript. No server code needed.

### User-Pays Model

[Your users cover their own OCR costs](https://docs.puter.com/user-pays-model/), so you can ship text extraction features without worrying about billing or runaway API expenses.

## How It Works

### 1 Include Puter.js

Add Puter.js to your app:

`<script src="https://js.puter.com/v2/"></script>`

or with npm:

`npm install @heyputer/puter.js`

### 2 Extract Text

Use the simple JavaScript API to extract text from images:

```
puter.ai.img2txt("image.png")
```

View the [OCR documentation](https://docs.puter.com/AI/img2txt/) for a full list of available features.

### ✓That's it!

No need to set up servers or infrastructure. No API keys, configuration, or rate-limiting. Everything is handled by Puter.js!

[Read the Docs](https://docs.puter.com/AI/img2txt/) • [Try the Playground](https://docs.puter.com/playground/ai-img2txt/)

## OCR Without the Complexity

Extract text from images using different providers and input types.

```javascript
// Basic text extraction from an image URL
const text = await puter.ai.img2txt(
    "https://assets.puter.site/letter.png"
);
console.log(text);

// Extract text from an uploaded file
const fileInput = document.querySelector('input[type="file"]');
const file = fileInput.files[0];
const result = await puter.ai.img2txt(file);

// Use Mistral OCR provider
const extracted = await puter.ai.img2txt(imageUrl, {
    provider: "mistral"
});

// Process specific pages of a PDF
const pdfText = await puter.ai.img2txt(pdfFile, {
    provider: "aws-textract",
    pages: [1, 2, 3]
});

// Test mode for development
const sample = await puter.ai.img2txt(imageUrl, {
    testMode: true
});
```

[Find more examples →](https://docs.puter.com/AI/img2txt/)

## Frequently Asked Questions

What is this OCR API about?

Use Puter.js OCR API to extract text from images using optical character recognition. Access multiple OCR providers including AWS Textract and Mistral through a simple JavaScript API. Process images directly from your frontend code without managing API keys or infrastructure.

What is Puter.js?

[Puter.js](https://docs.puter.com/) is a JavaScript library that provides access to AI, storage, and other cloud services directly from your frontend code. It handles authentication, infrastructure, and scaling so you can focus on building your app.

How much does it cost?

With the [User-Pays model](https://docs.puter.com/user-pays-model/), users cover their own OCR costs through their Puter account. This means you can build apps without worrying about infrastructure expenses.

What can I use this OCR API for?

You can use the API for document digitization, receipt scanning, business card readers, form processing, extracting text from screenshots, accessibility features, archiving handwritten notes, translating text from images, and any application where users need to convert image-based text into editable text.
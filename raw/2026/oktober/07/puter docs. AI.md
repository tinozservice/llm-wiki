---
title: Puter.js Documentation
source: https://docs.puter.com/AI/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Add artificial intelligence capabilities to your applications with Puter.js AI feature.
tags:
  - clippings
---
## AI

---

The Puter.js AI feature allows you to integrate artificial intelligence capabilities into your applications.

You can use AI models from various providers to perform tasks such as chat, text-to-image, image-to-text, text-to-video, and text-to-speech conversion. And with the [User-Pays Model](https://docs.puter.com/user-pays-model/), you don't have to set up your own API keys and top up credits, because users cover their own AI costs.

## Features

AI Chat

Text to Image

Image to Text

Text to Speech

Voice Changer

Text to Video

Speech to Speech

Speech to Text

#### Chat with GPT-5.6 Luna

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

#### Generate an image of a cat using AI

Choose a model and compare provider rates in the [AI model directory](https://developer.puter.com/ai/models/).

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        // Generate an image of a cat using the default model and quality. Please note that testMode is set to true so that you can test this code without using up API credits.
        puter.ai.txt2img('A picture of a cat.', true).then((image)=>{
            document.body.appendChild(image);
        });
    </script>
</body>
</html>
```

#### Extract the text contained in an image

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        puter.ai.img2txt('https://assets.puter.site/letter.png').then(puter.print);
    </script>
</body>
</html>
```

#### Convert text to speech

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <button id="play">Speak!</button>
    <script>
        document.getElementById('play').addEventListener('click', ()=>{
            puter.ai.txt2speech(\`Hello world! Puter is pretty amazing, don't you agree?\`).then((audio)=>{
                audio.play();
            });
        });
    </script>
</body>
</html>
```

#### Swap a sample clip into a new voice

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <button id="swap">Convert voice</button>
    <script>
        document.getElementById('swap').addEventListener('click', async ()=>{
            const audio = await puter.ai.speech2speech(
                'https://puter-sample-data.puter.site/tts_example.mp3',
                {
                    voice: '21m00Tcm4TlvDq8ikWAM',
                    model: 'eleven_multilingual_sts_v2',
                    output_format: 'mp3_44100_128'
                }
            );
            audio.play();
        });
    </script>
</body>
</html>
```

#### Generate a sample clip (test mode)

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        puter.ai.txt2vid(
            "A drone shot sweeping over bioluminescent waves at night",
            true // test mode returns a sample video without spending credits
        ).then((video)=>{
            document.body.appendChild(video);
        });
    </script>
</body>
</html>
```

#### Convert speech in one voice to another voice

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        puter.ai.speech2speech('https://assets.puter.site/example.mp3', {
            voice: '21m00Tcm4TlvDq8ikWAM',
            model: 'eleven_multilingual_sts_v2',
            output_format: 'mp3_44100_128'
        }).then(puter.print);
    </script>
</body>
</html>
```

#### Transcribe audio recordings into text

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
    (async () => {
        const transcript = await puter.ai.speech2txt('https://assets.puter.site/example.mp3');
        puter.print('Transcript:', transcript.text ?? transcript);
    })();
    </script>
</body>
</html>
```

## Functions

These AI features are supported out of the box when using Puter.js:

- **[`puter.ai.chat()`](https://docs.puter.com/AI/chat/)** - Chat with AI models like Claude, GPT, and others
- **[`puter.ai.listModels()`](https://docs.puter.com/AI/listModels/)** - List available AI chat models (and providers) that Puter currently exposes.
- **[`puter.ai.listModelProviders()`](https://docs.puter.com/AI/listModelProviders/)** - List the AI providers that Puter currently exposes.
- **[`puter.ai.txt2img()`](https://docs.puter.com/AI/txt2img/)** - Generate images from text descriptions
- **[`puter.ai.img2txt()`](https://docs.puter.com/AI/img2txt/)** - Extract text from images (OCR)
- **[`puter.ai.txt2speech()`](https://docs.puter.com/AI/txt2speech/)** - Convert text to speech
- **[`puter.ai.txt2speech.listEngines()`](https://docs.puter.com/AI/txt2speech.listEngines/)** - List available TTS engines/models
- **[`puter.ai.txt2speech.listVoices()`](https://docs.puter.com/AI/txt2speech.listVoices/)** - List available TTS voices
- **[`puter.ai.speech2speech()`](https://docs.puter.com/AI/speech2speech/)** - Convert speech in one voice to another voice
- **[`puter.ai.txt2vid()`](https://docs.puter.com/AI/txt2vid/)** - Generate short video clips from text or a reference image with Wan, Seedance, Veo and other models
- **[`puter.ai.speech2txt()`](https://docs.puter.com/AI/speech2txt/)** - Transcribe audio recordings into text

## Examples

You can see various Puter.js AI features in action from the following examples:

- AI Chat
	- [Chat with GPT-5.6 Luna](https://docs.puter.com/playground/ai-chatgpt/)
		- [Image Analysis](https://docs.puter.com/playground/ai-gpt-vision/)
		- [Stream the response](https://docs.puter.com/playground/ai-chat-stream/)
		- [Function Calling](https://docs.puter.com/playground/ai-function-calling/)
		- [AI Resume Analyzer (File handling)](https://docs.puter.com/playground/ai-resume-analyzer/)
		- [Chat with OpenAI GPT-6 Luna](https://docs.puter.com/playground/ai-chat-openai-gpt-6-luna/)
		- [Chat with Claude Sonnet](https://docs.puter.com/playground/ai-chat-claude/)
		- [Chat with DeepSeek](https://docs.puter.com/playground/ai-chat-deepseek/)
		- [Chat with Gemini](https://docs.puter.com/playground/ai-chat-gemini/)
		- [Chat with xAI (Grok)](https://docs.puter.com/playground/ai-xai/)
- Image to Text
	- [Extract Text from Image](https://docs.puter.com/playground/ai-img2txt/)
- Text to Image
	- [Generate an image from text](https://docs.puter.com/playground/ai-txt2img/)
		- [Text to Image with options](https://docs.puter.com/playground/ai-txt2img-options/)
		- [Text to Image with image-to-image generation](https://docs.puter.com/playground/ai-txt2img-image-to-image/)
- Text to Speech
	- [Generate speech audio from text](https://docs.puter.com/playground/ai-txt2speech/)
		- [Text to Speech with options](https://docs.puter.com/playground/ai-txt2speech-options/)
		- [Text to Speech with engines](https://docs.puter.com/playground/ai-txt2speech-engines/)
		- [Text to Speech with OpenAI voices](https://docs.puter.com/playground/ai-txt2speech-openai/)
		- [Text to Speech with Gemini voices](https://docs.puter.com/playground/ai-txt2speech-gemini/)
		- [List TTS Engines](https://docs.puter.com/playground/ai-txt2speech-list-engines/)
		- [List TTS Voices](https://docs.puter.com/playground/ai-txt2speech-list-voices/)
		- [Transcribe audio with `speech2txt`](https://docs.puter.com/AI/speech2txt/)
- Text to Video
	- [Generate a sample clip (test mode)](https://docs.puter.com/playground/ai-txt2vid/)
		- [Text to Video with options](https://docs.puter.com/playground/ai-txt2vid-options/)
		- [Text to Video with Google Veo on Together AI](https://docs.puter.com/playground/ai-txt2vid-veo/)
		- [Animate a photo (image-to-video)](https://docs.puter.com/playground/ai-txt2vid-image-to-video/)
		- [Save the clip to the Puter filesystem](https://docs.puter.com/playground/ai-txt2vid-save/)
		- [Show progress and handle errors](https://docs.puter.com/playground/ai-txt2vid-errors/)
- Speech to Speech
	- [Convert speech in one voice to another voice](https://docs.puter.com/playground/ai-speech2speech-url/)
		- [Convert speech in one voice to another voice with a recording stored as a file](https://docs.puter.com/playground/ai-speech2speech-file/)
- Speech to Text
	- [Transcribe audio recordings into text](https://docs.puter.com/playground/ai-speech2txt/)
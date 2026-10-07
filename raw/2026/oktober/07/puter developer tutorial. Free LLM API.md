---
title: Free LLM API
source: https://developer.puter.com/tutorials/free-llm-api/
author:
  - "[[Nariman Jelveh]]"
  - "[[Reynaldi Chernando]]"
  - "[[Puter Technologies Inc.]]"
published: 2026-08-17
created: 2026-10-07
description: Learn how to use Puter.js to access hundreds of large language models (LLMs) for free. Access GPT, Claude, Gemini, and 400+ other models without any API keys.
tags:
  - clippings
---
This tutorial will show you how to access hundreds of large language models (LLMs) for free using [Puter.js](https://developer.puter.com/). Whether you need GPT, Claude, Gemini, Grok, DeepSeek, or any of the 400+ proprietary or open-source models supported by Puter.js, you can access them all without API keys or backend infrastructure.

Puter.js uses the [User-Pays model](https://docs.puter.com/user-pays-model/), where users of your application cover their own AI costs. This means you as a developer don't pay anything for your users' usage, making your app practically free to run. You can scale to unlimited users and pay nothing for the AI or server usage.

## Getting Started

To use Puter.js, import our [npm module](https://www.npmjs.com/package/@heyputer/puter.js) in your project:

```js
// npm install @heyputer/puter.js
import { puter } from '@heyputer/puter.js';
```

Or alternatively, add our script via CDN if you are working directly with HTML, simply add it to the `<head>` or `<body>` section of your code:

```xml
<script src="https://js.puter.com/v2/"></script>
```

That's it! You're now ready to access hundreds of LLMs completely free. No backend, no API keys, no configuration.

## Example 1: Using GPT-5.4 Nano

Let's start with OpenAI's [GPT-5.4 Nano](https://developer.puter.com/ai/openai/gpt-5.4-nano/), a fast and efficient model perfect for most tasks. This example shows how to use the [`puter.ai.chat()`](https://docs.puter.com/AI/chat/) function to generate text using GPT-5.4 Nano:

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        puter.ai.chat("Explain machine learning in simple terms", { 
            model: "openai/gpt-5.4-nano" 
        }).then(response => {
            puter.print(response);
        });
    </script>
</body>
</html>
```

## Example 2: Using Claude Sonnet 5

By simply changing the model name to "claude-sonnet-5", you can use Anthropic's [Claude Sonnet 5](https://developer.puter.com/ai/anthropic/claude-sonnet-5/) model to generate text. No need to provide any API keys or change your code:

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        puter.ai.chat("Write a creative story about a robot discovering emotions", { 
            model: "anthropic/claude-sonnet-5" 
        }).then(response => {
            puter.print(response.message.content[0].text);
        });
    </script>
</body>
</html>
```

## Example 3: Using Gemini 3.1 Pro for Complex Reasoning

Google's [Gemini 3.1 Pro](https://developer.puter.com/ai/google/gemini-3.1-pro-preview/) excels at step-by-step problem solving and logical reasoning:

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        puter.ai.chat(
            "Solve this logic puzzle: If all bloops are razzles and all razzles are lazzles, are all bloops definitely lazzles? Explain your reasoning.", 
            { model: "google/gemini-3.1-pro-preview" }
        ).then(response => {
            puter.print(response.message.content);
        });
    </script>
</body>
</html>
```

## Example 4: Streaming Responses for Better UX

For longer responses, streaming provides a better user experience by showing results in real-time. This example uses xAI's [Grok 4.7](https://developer.puter.com/ai/x-ai/grok-4.7/):

```html
<html>
<body>
    <div id="output"></div>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        async function streamLLMResponse() {
            const outputDiv = document.getElementById('output');
            outputDiv.innerHTML = '<h2>Streaming Response:</h2>';
            
            const response = await puter.ai.chat(
                "Write a detailed explanation of quantum computing and its applications", 
                { 
                    model: "x-ai/grok-4.7",
                    stream: true 
                }
            );
            
            for await (const part of response) {
                if (part?.text) {
                    outputDiv.innerHTML += part.text;
                }
            }
        }

        streamLLMResponse();
    </script>
</body>
</html>
```

## Example 5: Using LLMs for Image Analysis

Many LLMs support multimodal capabilities for analyzing images:

```html
<html>
<body>
    <img src="https://assets.puter.site/doge.jpeg" style="max-width: 400px; display: block; margin: 20px 0;">
    
    <script src="https://js.puter.com/v2/"></script>
    <script>
        puter.ai.chat(
            "Describe this image in detail. What do you see?",
            "https://assets.puter.site/doge.jpeg",
            { model: "openai/gpt-5.4-nano" }
        ).then(response => {
            document.write(\`<h3>Image Analysis:</h3><p>${response}</p>\`);
        });
    </script>
</body>
</html>
```

## Other Free LLM API Providers

Puter.js is not the only way to use LLMs without paying, so here is how the other common options work.

**Anthropic (Claude)** gives new API accounts a small one-time signup credit. Once it is spent there is no recurring free allowance, and you pay per token as the developer. We cover the details in our [Claude API pricing](https://developer.puter.com/tutorials/claude-api-pricing/) guide.

**[OpenRouter](https://openrouter.ai/)** lists free variants of many models (tagged `:free`). Free usage is capped at 50 requests per day and 20 per minute, rising to 1,000 per day once you have purchased at least $10 in credits, and failed requests still count against the quota. It works for testing an integration, not for production traffic.

**Google (Gemini)** has a recurring free tier on the Flash-family models with no credit card required. It is rate-limited per model, the Pro models are excluded, and free-tier content is used to improve Google's products. It fits prototyping and personal projects; to scale past the rate limits you move to the paid tier. More in our [Gemini API pricing](https://developer.puter.com/tutorials/gemini-api-pricing/) guide.

**OpenAI** has no free tier on the API. It runs on prepaid credits, so you pay as you go from the first request. See our [OpenAI API pricing](https://developer.puter.com/tutorials/openai-api-pricing/) guide.

All four share the same pattern. The free portion is a trial or a rate-limited tier, and scaling means the developer starts paying. Puter.js works differently. With the [User-Pays model](https://docs.puter.com/user-pays-model/), each user covers their own usage through their Puter account, so you add AI features to your app at no cost to you, and it stays free at any number of users.

## Conclusion

Puter.js gives you access to a free LLM API with no API keys and no backend. Add the script tag or npm package, call `puter.ai.chat()` with the model you want, and your users cover their own usage through the [User-Pays model](https://docs.puter.com/user-pays-model/).

Puter.js supports 400+ models from OpenAI, Anthropic, Google, xAI, and more. You can find the complete list on our [AI models](https://developer.puter.com/ai/models/) page.

Puter.js is also not limited to LLMs. It provides access to a wide range of other AI features including:

- [AI Chat](https://docs.puter.com/AI/chat/)
- [AI Image Generation](https://docs.puter.com/AI/txt2img/)
- [AI Text to Video](https://docs.puter.com/AI/txt2vid/)
- [AI Text to Speech](https://docs.puter.com/AI/txt2speech/)
- [AI Speech to Text](https://docs.puter.com/AI/speech2txt/)
- [AI Image to Text](https://docs.puter.com/AI/img2txt/)
- [AI Speech to Speech](https://docs.puter.com/AI/speech2speech/)

## Related

- [Free, Unlimited AI API](https://developer.puter.com/tutorials/free-unlimited-ai-api/)
- [Free, Unlimited OpenAI API](https://developer.puter.com/tutorials/free-unlimited-openai-api/)
- [OpenAI API Pricing](https://developer.puter.com/tutorials/openai-api-pricing/)
- [Free, Unlimited Claude API](https://developer.puter.com/tutorials/free-unlimited-claude-35-sonnet-api/)
- [Free, Unlimited Gemini API](https://developer.puter.com/tutorials/free-gemini-api/)
- [Free, Unlimited OpenRouter API](https://developer.puter.com/tutorials/free-unlimited-openrouter-api/)
- [Free, Unlimited DeepSeek API](https://developer.puter.com/tutorials/free-unlimited-deepseek-api/)
- [Free, Unlimited Llama API](https://developer.puter.com/tutorials/free-unlimited-llama-api/)
- [Free, Unlimited Mistral API](https://developer.puter.com/tutorials/free-unlimited-mistral-api/)
- [Free, Unlimited Translation API](https://developer.puter.com/tutorials/free-unlimited-translation-api/)
- [Free, Unlimited Sentiment Analysis API](https://developer.puter.com/tutorials/free-unlimited-sentiment-analysis-api/)
- [Free, Unlimited Summarization API](https://developer.puter.com/tutorials/free-unlimited-summarization-api/)
- [Free, Unlimited Language Detection API](https://developer.puter.com/tutorials/free-unlimited-language-detection-api/)
- [Puter.js Documentation](https://docs.puter.com/)
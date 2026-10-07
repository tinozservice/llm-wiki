---
title: Free, Unlimited Claude API
source: https://developer.puter.com/tutorials/free-unlimited-claude-35-sonnet-api/
author:
  - "[[Nariman Jelveh]]"
  - "[[Reynaldi Chernando]]"
  - "[[Puter Technologies Inc.]]"
published: 2026-09-30
created: 2026-10-07
description: Learn how to use Puter.js to access Claude for code generation, including Fable 5.1, Opus 5.5, Sonnet 5.5, Haiku 4.5, and more for free, without any Anthropic API keys or usage restrictions.
tags:
  - clippings
---
This tutorial will show you how to use [Puter.js](https://developer.puter.com/) to access [Claude's advanced AI](https://developer.puter.com/ai/anthropic/) capabilities (such as [Claude Fable 5.1](https://developer.puter.com/ai/anthropic/claude-fable-5-1/), [Claude Opus 5.5](https://developer.puter.com/ai/anthropic/claude-opus-5-5/), [Claude Opus 5](https://developer.puter.com/ai/anthropic/claude-opus-5/), [Claude Sonnet 5.5](https://developer.puter.com/ai/anthropic/claude-sonnet-5-5/), [Claude Sonnet 5](https://developer.puter.com/ai/anthropic/claude-sonnet-5/), [Claude Sonnet 4.6](https://developer.puter.com/ai/anthropic/claude-sonnet-4-6/), [Claude Haiku 4.5](https://developer.puter.com/ai/anthropic/claude-haiku-4-5/)) for free, without any API keys, backend, or servers. Using Puter.js, you can generate text with Claude for a wide range of tasks, from creative writing to code generation and function calling without worrying about usage limits or [costs](https://developer.puter.com/tutorials/claude-api-pricing/).

Puter is the pioneer of the ["User-Pays" model](https://docs.puter.com/user-pays-model/), which allows developers to incorporate [AI capabilities](https://developer.puter.com/ai/) into their applications while users cover their own usage costs. This model enables developers to access advanced AI capabilities for free, without any API keys or server-side setup.

Puter.js is also a particularly good fit for AI coding assistants, agents, and vibe coding tools such as Claude Code, [Codex](https://developer.puter.com/ai/codex/), OpenCode, Lovable, Replit, and others. Since it requires no API keys and no backend, the apps and programs these tools generate run end-to-end out of the box, with no third-party signup, no service to provision, and no keys to paste in. That removes a significant class of security risks along with the setup hurdles that typically prevent AI-generated apps from working on the first try.

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

You're now ready to use Puter.js for free access to Claude capabilities. No API keys or sign-ups are required.

## Example 1: Basic Text Generation with Claude Sonnet 5.5

To generate text using Claude, use the [`puter.ai.chat()`](https://docs.puter.com/AI/chat/) function with your preferred model. Here's a full code example using Claude [Sonnet](https://developer.puter.com/ai/sonnet/) 5.5, the newest Sonnet model:

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        puter.ai.chat("Explain quantum computing in simple terms", {model: 'claude-sonnet-5-5'})
            .then(response => {
                puter.print(response.message.content[0].text);
            });
    </script>
</body>
</html>
```

## Example 2: Streaming Responses for Longer Queries

For longer responses, use streaming to get results in real-time:

```javascript
async function streamClaudeResponse(model = 'claude-sonnet-5-5') {
    const response = await puter.ai.chat(
        "Write a detailed essay on the impact of artificial intelligence on society", 
        {model: model, stream: true}
    );
    
    for await (const part of response) {
        puter.print(part?.text);
    }
}

// Use Claude Sonnet 5.5 (default)
streamClaudeResponse();
```

Here's the full code example with streaming:

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            const response = await puter.ai.chat(
                "Write a detailed essay on the impact of artificial intelligence on society", 
                {model: 'claude-sonnet-5-5', stream: true}
            );
            
            for await (const part of response) {
                puter.print(part?.text);
            }
        })();
    </script>
</body>
</html>
```

## Example 3: Using different Claude models

You can specify different Claude models using the `model` parameter, for example `claude-haiku-4-5`, `claude-opus-5`, or `claude-opus-5-5`, the newest Opus model:

```javascript
// Using claude-haiku-4-5 model
puter.ai.chat(
    "Write a short poem about coding",
    { model: "claude-haiku-4-5" }
).then(response => {
    puter.print(response.message.content[0].text);
});

// Using claude-opus-5-5 model
puter.ai.chat(
    "Write a short poem about coding",
    { model: "claude-opus-5-5" }
).then(response => {
    puter.print(response.message.content[0].text);
});
```

Full code example:

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        // Using claude-haiku-4-5 model
        puter.ai.chat(
            "Write a short poem about coding",
            { model: "claude-haiku-4-5" }
        ).then(response => {
            puter.print("<h2>Using claude-haiku-4-5 model</h2>");
            puter.print(response.message.content[0].text);
        });

        // Using claude-opus-5-5 model
        puter.ai.chat(
            "Write a short poem about coding",
            { model: "claude-opus-5-5" }
        ).then(response => {
            puter.print("<h2>Using claude-opus-5-5 model</h2>");
            puter.print(response.message.content[0].text);
        });
    </script>
</body>
</html>
```

## Example 4: Fast Mode with Smart Responses

You can use Claude [Opus](https://developer.puter.com/ai/opus/) 5 in fast mode. It generates output about 2.5x faster than standard Opus 5 at twice the price. Here's how to use it:

```javascript
puter.ai.chat(
    "Explain quantum computing in simple terms",
    { model: "claude-opus-5-fast" }
).then(response => {
    puter.print(response);
});
```

Full code example:

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        puter.ai.chat(
            "Explain quantum computing in simple terms",
            { model: "claude-opus-5-fast" }
        ).then(response => {
            puter.print(response);
        });
    </script>
</body>
</html>
```

## Example 5: Complex Reasoning with Claude Fable 5.1

Claude Fable 5.1 is Anthropic's most capable model, built for multi-step reasoning, coding, and long-horizon agentic tasks. Use it for the problems where the cheaper and faster models fall short:

```javascript
(async () => {
    const response = await puter.ai.chat(
        \`Five researchers — Ada, Boris, Chen, Diya, and Elena — each presented on a 
        different day, Monday through Friday, and each studies a different field: 
        biology, chemistry, physics, math, and linguistics.
        - The chemist presented earlier in the week than the biologist.
        - Elena presented on Wednesday.
        - The physicist presented the day immediately after Boris.
        - Ada studies math and did not present on Monday or Friday.
        - The linguist presented on Friday.
        - Diya is not the physicist and presented before Ada.
        Determine each researcher's day and field. Show your reasoning step by step, 
        and confirm your solution satisfies every clue.\`,
        { model: "claude-fable-5-1", stream: true }
    );

    for await (const part of response) {
        puter.print(part?.text);
    }
})();
```

Full code example:

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            const response = await puter.ai.chat(
                \`Five researchers — Ada, Boris, Chen, Diya, and Elena — each presented on a 
                different day, Monday through Friday, and each studies a different field: 
                biology, chemistry, physics, math, and linguistics.
                - The chemist presented earlier in the week than the biologist.
                - Elena presented on Wednesday.
                - The physicist presented the day immediately after Boris.
                - Ada studies math and did not present on Monday or Friday.
                - The linguist presented on Friday.
                - Diya is not the physicist and presented before Ada.
                Determine each researcher's day and field. Show your reasoning step by step, 
                and confirm your solution satisfies every clue.\`,
                { model: "claude-fable-5-1", stream: true }
            );

            for await (const part of response) {
                puter.print(part?.text);
            }
        })();
    </script>
</body>
</html>
```

## Available Models

The following Claude models are available via Puter.js:

```
claude-sonnet-5-5
claude-fable-5-1
claude-opus-5-5
claude-opus-5
claude-opus-5-fast
claude-fable-5
claude-sonnet-5
claude-opus-4.8-fast
claude-opus-4-8
claude-opus-4-7
claude-sonnet-4-6
claude-opus-4-6
claude-opus-4-5
claude-haiku-4-5
claude-sonnet-4-5
claude-sonnet-4
```

## Claude Free API Key

Anthropic gives you a one-time $5 credit when you sign up, which gets you a real Claude API key to try things out for free. But once that $5 is spent, you're back to the standard developer-pays model where every request your users make comes out of your account. Public GitHub repos that promise free API keys don't work either, since Anthropic revokes those keys fast and any app built on them breaks. With Puter.js, you don't have to deal with any of that. There's no API key to manage, no credit to burn through, and each user covers their own usage through their Puter account.

## Conclusion

You can gain access to Claude models using Puter.js without having to set up an Anthropic account yourself. And thanks to the [User-Pays model](https://docs.puter.com/user-pays-model/), your users cover their own AI usage, not you as the developer. This means you can build powerful applications without worrying about AI usage costs.

You can find all AI features supported by Puter.js in the [documentation](https://docs.puter.com/AI/).

## Related

- [Free LLM API](https://developer.puter.com/tutorials/free-llm-api/)
- [Free, Unlimited OpenAI API](https://developer.puter.com/tutorials/free-unlimited-openai-api/)
- [Free, Unlimited Gemini API](https://developer.puter.com/tutorials/free-gemini-api/)
- [Free, Unlimited OpenRouter API](https://developer.puter.com/tutorials/free-unlimited-openrouter-api/)
- [Free, Unlimited DeepSeek API](https://developer.puter.com/tutorials/free-unlimited-deepseek-api/)
- [Free, Unlimited Codex API](https://developer.puter.com/tutorials/free-unlimited-codex-api/)
- [Free, Unlimited Mistral API](https://developer.puter.com/tutorials/free-unlimited-mistral-api/)
- [Free, Unlimited Inception Mercury API](https://developer.puter.com/tutorials/free-unlimited-inception-mercury-api/)
- [Free, Unlimited Text-to-Speech API](https://developer.puter.com/tutorials/free-unlimited-text-to-speech-api/)
- [Free, Unlimited Translation API](https://developer.puter.com/tutorials/free-unlimited-translation-api/)
- [Free, Unlimited Sentiment Analysis API](https://developer.puter.com/tutorials/free-unlimited-sentiment-analysis-api/)
- [Free, Unlimited Summarization API](https://developer.puter.com/tutorials/free-unlimited-summarization-api/)
- [Free, Unlimited Language Detection API](https://developer.puter.com/tutorials/free-unlimited-language-detection-api/)
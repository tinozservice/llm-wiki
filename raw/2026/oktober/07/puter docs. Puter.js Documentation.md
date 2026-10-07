---
title: Puter.js Documentation
source: https://docs.puter.com/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: "Puter.js documentation: API reference, examples, and playground for adding auth, cloud storage, databases, and AI with no API keys and no infrastructure setup."
tags:
  - clippings
---
Puter.js gives you access to auth, cloud storage, databases, and AI (Claude, GPT, Gemini, and 500+ other models) with no API keys and no infrastructure setup. The entire library is a single `<script>` tag or the `@heyputer/puter.js` npm module.

This is also what makes Puter.js work so well as the backend for AI-generated apps. There is nothing to configure: no keys to obtain, no servers to provision, no SDK to initialize. AI coding tools and platforms like Claude Code, Codex, OpenCode, Lovable, and Replit can generate complete, working apps in a single shot with Puter.js. The API is small and consistent enough for language models to use correctly, and the full reference is published as [llms.txt](https://docs.puter.com/llms.txt) so AI tools can read it in one request.

https://super-magical-website.com

OpenAI

Cloud Storage

Claude

Gemini

NoSQL

\<script src="https://js.puter.com/v2/">\</script>

Hosting API

Auth

OCR

Networking

Text to Speech

Additionally, with Puter.js, you as the developer pay nothing since each user of your app [covers their own Cloud and AI usage](https://docs.puter.com/user-pays-model/). Whether your app has 1 user or 1 million users, it costs you zero to run. Puter.js gives you infinitely scalable infrastructure, completely free.

Puter.js is powered by [Puter](https://github.com/HeyPuter/puter), the open-source cloud operating system with a heavy focus on privacy. Puter does not use tracking technologies and does not monetize or even collect personal information.

## Examples

AI

Cloud Storage

NoSQL Database

Hosting

Auth

Networking

#### Write a file to the cloud

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        // Create a new file called "hello.txt" containing "Hello, world!"
        puter.fs.write('hello.txt', 'Hello, world!').then((file) => {
            puter.print(\`File written successfully at: ${file.path}\`);
        })
    </script>
</body>
</html>
```

**Read a file from the cloud**

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            // (1) Create a random text file
            let filename = puter.randName() + ".txt";
            await puter.fs.write(filename, "Hello world! I'm a file!");
            puter.print(\`"${filename}" created<br>\`);

            // (2) Read the file and print its contents
            let blob = await puter.fs.read(filename);
            let content = await blob.text();
            puter.print(\`"${filename}" read (content: "${content}")<br>\`);
        })();
    </script>
</body>
</html>
```

#### Save user preference in the cloud Key-Value Store

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        // (1) Save user preference
        puter.kv.set('userPreference', 'darkMode').then(() => {
            // (2) Get user preference
            puter.kv.get('userPreference').then(value => {
                puter.print(\`User preference: ${value}\`);
            });
        })
    </script>
</body>
</html>
```

#### Chat with GPT-5.6 Luna

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        // Chat with GPT-5.6 Luna
        puter.ai.chat(\`What is life?\`, { model: "gpt-5.6-luna" }).then(puter.print);
    </script>
</body>
</html>
```

**Image Analysis**

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <img src="https://assets.puter.site/doge.jpeg" style="display:block;">
    <script>
        puter.ai
            .chat(\`What do you see?\`, \`https://assets.puter.site/doge.jpeg\`, {
                model: "gpt-5.6-luna",
            })
            .then(puter.print);
    </script>
</body>
</html>
```

**Generate an image of a cat using AI**

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

**Stream the response**

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
    (async () => {
        const resp = await puter.ai.chat('Tell me in detail what Rick and Morty is all about.', {model: 'gemini-3.5-flash-lite', stream: true });
        for await ( const part of resp ) puter.print(part?.text?.replaceAll('\n', '<br>'));
    })();
    </script>
</body>
</html>
```

#### Publish a static website

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
        (async () => {
            // (1) Create a random directory
            let dirName = puter.randName();
            await puter.fs.mkdir(dirName)

            // (2) Create 'index.html' in the directory with the contents "Hello, world!"
            await puter.fs.write(\`${dirName}/index.html\`, '<h1>Hello, world!</h1>');

            // (3) Host the directory under a random subdomain
            let subdomain = puter.randName();
            const site = await puter.hosting.create(subdomain, dirName)

            puter.print(\`Website hosted at: <a href="https://${site.subdomain}.puter.site" target="_blank">https://${site.subdomain}.puter.site</a>\`);
        })();
    </script>
</body>
</html>
```

#### Authenticate a user

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <button id="sign-in">Sign in</button>
    <script>
        // Because signIn() opens a popup window, it must be called from a user action.
        document.getElementById('sign-in').addEventListener('click', async () => {
            // signIn() will resolve when the user has signed in.
            await puter.auth.signIn().then((res) => {
                puter.print('Signed in<br>' + JSON.stringify(res));
            });
        });
    </script>
</body>
</html>
```

#### Fetch a resource without CORS restrictions

```html
<html>
<body>
    <script src="https://js.puter.com/v2/"></script>
    <script>
    (async () => {
        // Send a GET request to example.com
        const request = await puter.net.fetch("https://example.com");

        // Get the response body as text
        const body = await request.text();

        // Print the body as a code block
        puter.print(body, { code: true });
    })()
    </script>
</body>
</html>
```
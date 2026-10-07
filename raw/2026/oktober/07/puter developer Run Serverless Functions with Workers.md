---
title: Run Serverless Functions with Workers
source: https://developer.puter.com/serverless-workers/
author:
  - "[[Puter Technologies Inc.]]"
published:
created: 2026-10-07
description: Run serverless functions in the cloud without managing a server, with a simple router API that AI coding agents use correctly.
tags:
  - clippings
---
### Simple Router API

Define API endpoints with a familiar syntax that AI coding agents use correctly.

### No Server Management

Focus on code, not infrastructure. We handle scaling, deployment, and everything else.

### Instant Deployment

Your worker goes live in seconds. No build steps, no config files, and no long wait times.

### Integrate with Puter.js

Access AI, cloud storage, and key-value databases with [Puter.js](https://docs.puter.com/) directly in your worker code.

### User-Pays Model

Build workers without worrying about compute costs. Use your own resources for shared data, or have users cover their own usage via the [User-Pays model](https://docs.puter.com/user-pays-model/).

## From Code to Production in Seconds

Write your routes, deploy your worker, and you're live.  
The router API automatically handles endpoints, URL parameters, and response formats so you can focus on building.

```javascript
router.get('/', ({request}) => {
    return 'Hello World'; // returns a string
});

router.get('/api/hello', ({request}) => {
    return {'msg': 'hello'}; // returns a JSON object
});

router.get('/*page', ({request, params}) => {
    return new Response(\`Page ${params.page} not found\`, {status: 404});
});
```

[Find more examples →](https://docs.puter.com/Workers/router/#examples)

## Frequently Asked Questions

What are Serverless Workers?

Serverless Workers are functions that run in the cloud without you needing to manage a server. They let you write server-side code to create APIs, backend endpoints, and other dynamic functionality. You focus on writing code, and we handle all the infrastructure, scaling, and deployment.

What is Puter?

Puter is a cloud operating system that runs in your browser where you can manage files, run apps, host websites, deploy serverless workers, and more. Everything you need to build and deploy web applications, all in one place.

How much does it cost?

With the [User-Pays model](https://docs.puter.com/user-pays-model/), users cover their own compute costs through their Puter account, so you can ship backend logic without worrying about servers or infrastructure bills.

How do I deploy a Serverless Worker?

Create a standard `worker.js` file inside Puter, add your worker code using our simple routing API, then deploy it with a single click. Your worker is live and ready to handle requests in seconds. Check out our [step-by-step tutorial](https://developer.puter.com/tutorials/serverless-functions-on-puter/) or the [documentation](https://docs.puter.com/Workers/) for examples and guides, or point your AI coding agent at [llms.txt](https://docs.puter.com/llms.txt).

What can I build with Serverless Workers?

You can build APIs, backend services, webhooks, form handlers, authentication endpoints, data processing pipelines, and much more. Anything that requires server-side logic can be built with Serverless Workers. Combine them with Puter.js to add AI, databases, and cloud storage to your applications.
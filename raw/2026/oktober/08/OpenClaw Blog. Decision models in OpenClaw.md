---
title: Decision models in OpenClaw
source: https://openclaw.ai/blog/decision-models-in-openclaw
author:
  - "[[Graham McBain]]"
  - "[[OpenClaw AI]]"
published: 2026-09-22
created: 2026-10-08
description: Josh Lehman on what decision models make possible, why OpenClaw is taking a plugin-first approach, and where contributors can help.
tags:
  - clippings
---
![](https://www.youtube.com/watch?v=zGjDLSAMgYg)

[Watch the conversation with Josh Lehman on YouTube](https://youtu.be/zGjDLSAMgYg)

When building an agent, there are a lot of decisions that don’t need to be a conversation. Which tools are relevant to this request? Which messages should survive compaction? Is somebody actually talking to the agent, or should it stay quiet?

We can ask a language model to make those decisions, but doing so adds time and cost to the work the user actually wanted done. As agents take on more of these small judgments, those extra calls start to matter.

Last week, Jev made a lot of developers rethink that tradeoff. Today, Josh Lehman, an OpenClaw maintainer, shares why decision models caught his attention, how we’re bringing them into OpenClaw, and why some of the most interesting work is going to come from the community.

## More than another model to chat with

> The magic is when you take Jev and embed it within normal deterministic code.

**Josh Lehman** OpenClaw maintainer

Josh’s first experiment was the obvious one: build a plugin that gave his agent a tool to call Jev. It worked, but it left him with a slow language model thinking about when to call a fast API.

The more interesting possibility was to call it directly from application code.

A decision model takes evidence and a set of criteria, then returns a typed answer: a choice, a score, or a probability that a condition is true. Instead of asking for a paragraph and figuring out what to do with it, your application gets an answer it can use in its next step. That doesn’t make the judgment infallible, but it gives developers a much more focused interface to work with.

Jev, from Diogo Almeida and the team at TypeSafe, brought a lot of attention to this approach:

![](https://x.com/i/status/2099925682726002904)

The appeal isn’t just making an existing model call faster. If a judgment becomes fast and cheap enough, you can put it somewhere you wouldn’t previously have considered putting a model at all. Your application can make a better decision without turning that decision into another chat interaction.

## Give developers the capability, not all the answers

> You don't need to wait for the OpenClaw maintainer team to decide where something like a decision model should be slotted into your harness.

**Josh Lehman** OpenClaw maintainer

Josh didn’t need to know every place a decision model might be useful before making it possible for people to try.

OpenClaw already lets you choose your conversational models. We’re taking the same approach here: a separately configured decision model that OpenClaw and its plugins can use. The plugin-first architecture means this isn’t tied to one provider. The TypeSafe adapter supports hosted Jev and a local System One server such as Jared Palmer’s Kev.

For plugin authors, the important part is the shared API. Through the Plugin SDK, a plugin can call `api.runtime.decisions.evaluate` and use the decision model configured for its agent. It doesn’t need to build its own integration with every provider or ask the user to configure the same choice all over again.

That interface is available in development checkouts containing the new decision-model support. The provider packages are still awaiting a supporting release; the [setup documentation](https://docs.openclaw.ai/concepts/decision-models) explains what is available and how to try it. This is the foundation for experimentation, not a claim that every proposed use case is already shipped.

And there is clearly an appetite to experiment. Vercel reported that Jev was adopted faster than any previous model in its AI Gateway:

![](https://x.com/i/status/2101077346203971900)

## An experiment, not a new requirement

> And if you don't enable one, that's fine. It just keeps working the way it was before.

**Josh Lehman** OpenClaw maintainer

This is early. Jev launched last week, the list of alternatives is growing, and we’re still figuring out which parts of OpenClaw benefit most from the approach.

So decision models are opt-in. Configuring one makes it available to supported features and plugins; it doesn’t replace your chat model, start background work, or automatically change every part of your agent. OpenClaw continues to work without one.

There is also a distinction between giving application code access to a decision model and giving the agent a tool to call. The evaluation tool is being moved into OpenClaw core as `decision_evaluate`, so it isn’t specific to TypeSafe or Jev. Josh’s first experiment wasn’t useless; it just wasn’t the whole opportunity.

The goal is better results with less waiting, lower cost, and fewer retries where these models are a good fit. We’ll need to test that in real workflows, not assume every decision improves because a new model is involved.

Of course, the timeline has already taken this to its logical conclusion:

![](https://x.com/i/status/2101123833281569272)

We are not replacing McDonald’s. We would settle for an agent that knows when to stop talking.

## Where the community comes in

Peter’s OpenClaw agent, Molty, lives in our team Discord. As Josh described it, Molty has a habit of jumping into conversations between people who weren’t talking to it. We end up telling it to be quiet, and then having the same conversation again later.

One way to tackle that is to ask a separate model whether the agent should respond before letting it speak. But now you’re adding another model call in front of an already slow model call, potentially for every message in a busy channel.

A fast decision model could make that check much more practical. It is a small judgment with a very noticeable effect on what it’s like to share a space with an agent.

By the time Josh and I recorded, the community had already proposed almost 15 pull requests for places decision models could be used in OpenClaw. One example was filtering tool and skill definitions, so the main model doesn’t have to spend as much time working out which capabilities matter.

Other possibilities we discussed included:

- **Skill curation:** making it cheap enough to review and consolidate learned skills more frequently.
- **Context management:** identifying useful messages during compaction or narrowing a search through past conversations.
- **Model selection:** choosing an appropriate model for a new task from the models a user has configured.

These are areas to explore, not a list of finished features. That’s part of what makes this moment interesting. A maintainer doesn’t have to anticipate every useful application, and a contributor doesn’t have to wait for the whole roadmap to be written before trying one.

## A call for contributions

> The real thing right now is to just make things better and faster. And they don't ever have to think about it.

**Graham McBain** OpenClaw Foundation

For users, the best outcome may be that they never need to learn much about decision models at all. Their agent responds faster, finds the right context, or stops interrupting a conversation. The improvement matters more than the name of the model behind it.

For developers, there’s a lot of room to help make that happen. You can contribute to OpenClaw itself or build a plugin that uses the user’s configured decision model. The shared interface is there so you can focus on the part you think should work better.

If you’re excited about this, jump into our [Discord](https://discord.gg/clawd), find the contributor discussions, and bring a use case. Tell us where you’re paying for a slow judgment today, or what you’d build if that judgment were fast enough to stop being a problem.

We don’t know all the places this will be useful yet. That’s why we’re opening it up.
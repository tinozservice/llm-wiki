---
title: Decision Models in OpenClaw
source: https://www.youtube.com/watch?v=zGjDLSAMgYg
author:
  - "[[OpenClaw]]"
  - "[[OpenClaw AI]]"
published: 2026-09-23
created: 2026-10-08
description: 00:01 Decision Models in OpenClaw00:05 What decision models do01:44 How OpenClaw is implementing decision models03:41 A call for contributions04:19 Multi and group-chat participation05:55 The con
tags:
  - clippings
---
![](https://www.youtube.com/watch?v=zGjDLSAMgYg)

00:01 Decision Models in OpenClaw  
00:05 What decision models do  
01:44 How OpenClaw is implementing decision models  
03:41 A call for contributions  
04:19 Multi and group-chat participation  
05:55 The contributor invitation  
  
Decision models like Jev are going to improve workflows that currently use LLMs. They are a powerful tool for harnesess like OpenClaw and AI applications in general.  
  
Last week, the OpenClaw team started a conversation with our community about how we should implement them and the response has been overwhelming.  
  
In this video, Josh talks about our design decisions for making models like Jev available in OpenClaw. He also shares some of the ways that our community members are already improving OpenClaw by taking advantage of these new powerful tools.

## Transcript

### Decision Models in OpenClaw

### What decision models do

**0:05** · The right way to expose Jev is not as a tool for an LLM to use, which you know, fair enough. Like there are probably cases where that's useful, but that's not the that's not where the where the magic is. The magic is when you take Jev and embed it within normal deterministic code uh to use an intelligence API that actually

**0:33** · works kind of like a deterministic uh function more so than LLMs do which have a lot of ability to it's just smart Yeah, exactly. It's just smart code. Like you can you can get back structured data all the time. Um that's exactly the way you want it to be. At least it's it's type safe and it's fast and it's cheap.

**0:57** · So not only can you know does it work that way but it's uh cost effective enough to use in such a way that it opens up a totally different class of applications that you otherwise just wouldn't have done using an LLM because it's too slow and expensive uh and unreliable. Um Jeb is not.

**1:20** · And so that's I think what has made so many people so excited about it is that oh here's a new way I can incorporate intelligence into my application in a totally different form factor that makes my application intelligent in a different way than you know what we're used to. It's not just let me bolt chat into my application.

### How OpenClaw is implementing decision models

**1:45** · Yeah.

**1:45** · What is clearly the right approach is give OpenClaw a decision model that the user \[clears throat\] can configure in such a way that they can configure any decision model the same way they can configure any uh LLM. Okay. What we need to do is just make it the case that our community of developers can go and figure out what to do with this.

**2:06** · Uh we need to give them the ability to have a decision model at their disposal that they can authenticate into. um probably Jev and then start to figure out where we can slot Jev into Open Claw to get some of those benefits. Can we take things that we're currently doing that involve an LLM as judge that's looking through evidence and making a decision and outputting some kind of structured result hopefully uh and then being acted upon?

**2:37** · Are there places where Jev could do that same thing way faster for way less money and with way less uh retry loops? um are there new features that can be built that we otherwise wouldn't have built because we didn't have a decision model and can we do this in such a way that it's kind of a a labs style thing where um hey if you enable a decision model suddenly certain things get faster uh and you get new little bells and whistles that you can use and if you don't enable one that's fine just keeps

**3:08** · working the way it was before and there's another capability we need which is equally important which is for plug-in authors to be able to leverage that choice uh that configured decision model in their own plugins.

**3:23** · You don't need to wait for the open cloud maintainer team to decide where something like a decision model should be slotted into uh your hardness. You can make a plugin that does that yourself and with the next release or if you just run on main you can do that today.

### A call for contributions

**3:42** · Yeah.

**3:42** · Yeah, I mean in some of these um I think you said there's almost like 15 poll requests already from the community of places inside of OpenClaw in which these decision models could be used which is incredible cuz like you as an individual maintainer are great but you could not come up with all of those different implementations and like one I'm looking at um it uses a decision model to to filter through tool and

**4:09** · skill definitions and so instead \[clears throat\] of every call requiring an LLM to filter tool and skill definition slowly and expensive memory. One of the ideas I had last week is uh like situational awareness for models that are in like multiplayer settings.

### Multi and group-chat participation

**4:30** · So, you know, we have this uh Peter's open claw is called Multi uh and it lives in our Discord channel and we are constantly yelling at Multi and telling him to shut up because he can't stop talking and he never remembers when to stop talking. Um and you know, we'll just constantly be interjecting and chiming in and being helpful and trying to do things when he is not being addressed. Um, and this is a common problem with agents that are not just talking to their user.

**5:00** · They're talking to many people who are often talking to each other, not to the agent.

**5:06** · And the agent will often, you know, annoyingly mistake someone's response to another human being for a prompt to itself to go and do something.

**5:16** · And this has been a notoriously hard thing to solve. And I have seen success with people taking the conversation so far and feeding it into another model and said that that is just asked are you being mentioned here?

**5:32** · Uh should I you know should should I respond here? it's a yes or no answer and then it feeds it back to the model and decide okay yes you can have a response because this is probably mentioning you well Jev is an obvious thing here where now that's actually a really cheap operation and it's really fast there will be zero noticeable overhead um and you can probably end up with agents that are not so annoying um and right now openclaw has you know we support Jev we have not implemented any Jev into the harness.

### The contributor invitation

**6:07** · That is all this week's focus and probably an ongoing focus. Um, and \[clears throat\] I think there's going to be a lot of places and this is going to be a pretty big thing as time wears on and right now is ground zero.

**6:21** · And we have a culture of really welcoming contributors in to help do the work and uh see things come to life. So if you want to if you're looking for an opportunity to use this in a product that where you're going to reach your feature is going to reach millions of people just drop in the discord ask what you can do and you will find things.
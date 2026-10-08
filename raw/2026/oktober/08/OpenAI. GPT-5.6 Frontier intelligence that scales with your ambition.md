---
title: "GPT-5.6: Frontier intelligence that scales with your ambition"
source: https://openai.com/index/gpt-5-6/
author:
  - "[[OpenAI]]"
published:
created: 2026-10-08
description: More intelligence from every token, stronger performance per dollar, and more capability on demand for your hardest work.
tags:
  - clippings
---
<iframe width="100%" height="100%" title="GPTNextHero_Web_3840x2160_H264 from OpenAI on Vimeo" allow="autoplay; fullscreen; picture-in-picture; clipboard-write" src="https://player.vimeo.com/video/1208273060?h=2b3f64e64a&amp;amp%3Bbadge=0&amp;amp%3Bautopause=0&amp;amp%3Bplayer_id=0&amp;amp%3Bapp_id=58479&amp;controls=0&amp;autopause=0&amp;autoplay=0&amp;background=0&amp;loop=0&amp;muted=0"></iframe>

***Update on August 21, 2026:*** *OpenAI dropped the API and credit pricing of GPT‑5.6 Sol by over 20% for the next 3 months.*

***Update on July 30, 2026:*** *OpenAI reduced the price of GPT‑5.6 Luna by 80% and GPT‑5.6 Terra by 20%.* [*Learn more here*](https://openai.com/index/advancing-the-price-performance-frontier-with-gpt-5-6/)*.*

---

We’re launching the GPT‑5.6 family of models for general availability following our [limited preview ⁠](https://openai.com/index/previewing-gpt-5-6-sol/): our new flagship, **Sol**, alongside **Terra**, a balanced model for everyday work, and **Luna**, our most cost-efficient model.

GPT‑5.6 Sol sets a new standard for both intelligence and efficiency, achieving state-of-the-art results across coding, knowledge work, cybersecurity, and science while outperforming previous and competing frontier models with fewer tokens and at lower estimated cost. The result is stronger performance per dollar: more successful work for the same spend, or comparable results at a lower total cost. We also introduce a new way to accelerate the most demanding work: `ultra` is our highest-capability setting, coordinating multiple agents across parallel workstreams to finish complex tasks faster. Stronger computer use and design judgment make GPT‑5.6 Sol our most polished collaborator yet, helping it inspect, refine, and deliver ready-to-use results.

We trained GPT‑5.6 to get more useful work from every token. On [**Agents’ Last Exam** ⁠](https://agents-last-exam.org/), an evaluation of long-running professional workflows across 55 fields, GPT‑5.6 Sol sets a new high of 53.6, eclipsing Claude Fable 5 (adaptive reasoning) by 13.1 points. Even at medium reasoning, it beats Fable 5 by 11.4 points at roughly one-quarter the estimated cost. That efficiency extends to smaller models, which are essential to making intelligence more abundant and affordable: GPT‑5.6 Terra and GPT‑5.6 Luna outperform Fable 5 at around one-sixteenth the cost. On the [**Artificial Analysis Intelligence Index** ⁠](https://artificialanalysis.ai/evaluations/artificial-analysis-intelligence-index), a broad measure of intelligence spanning agentic work, coding, scientific reasoning, and general capabilities, GPT‑5.6 Sol with max reasoning comes within one point of Fable 5 while completing tasks in 61% less time at roughly half the estimated cost.

[***Agents’ Last Exam*** ⁠](https://agents-last-exam.org/)*: Long-horizon agentic workflows across professional domains.*

GPT‑5.6 launches with our most robust safeguards to date, designed to be resilient against determined and adaptive misuse without broadly limiting legitimate work. Before general availability, we put the models and safeguards through our most extensive evaluation period yet, combining human red teaming with large-scale automated testing. During the preview, we worked closely with expert organizations and with trusted partners to pressure-test defenses and strengthen safeguards before broader launch. The resulting system layers protections trained into the model with real-time checks, monitoring, and access calibrated to trust and risk.

## Efficient by default, maximum performance on demand

GPT‑5.6 Sol is our best coding model yet. On the **Artificial Analysis Coding Agent Index,** GPT‑5.6 Sol with max reasoning sets a new state of the art at 80, 2.8 points above Fable 5, while using less than half the output tokens, taking less than half the time, and costing about one-third less. That advantage extends across the family: Terra performs just above Fable 5, while Luna outperforms Opus 4.8; each does so in roughly one-third of the time, with about half as many output tokens, and at approximately one-quarter the estimated cost. It also sets new state-of-the-art results on Terminal‑Bench 2.1 and DeepSWE, which test complex command-line workflows and long-horizon engineering in real codebases.

***Artificial Analysis Coding Agent Index:*** *an independent index of coding-agent performance across implementation, terminal use, and real codebases.*

GPT‑5.6 can write and run lightweight programs that coordinate tools, process intermediate results, monitor progress, and choose the next action as work unfolds. This lets tool-heavy tasks advance with fewer tokens, fewer model round trips, and less guidance. Instead of requiring developers to script every step or passing every tool response back through the model, [Programmatic Tool Calling ⁠](https://developers.openai.com/api/docs/guides/tools-programmatic-tool-calling) in the Responses API can filter large amounts of intermediate data, retain only what matters, and adapt its workflow along the way.

For problems that reward a greater investment of time and compute, GPT‑5.6 can push beyond this efficient default. `max` gives GPT‑5.6 even more time than `xhigh` to reason and explore alternatives, run checks, and revise its approach. `ultra` goes further by coordinating four agents in parallel by default, trading higher token use for stronger results and faster time-to-result on demanding tasks. The charts below compare ultra’s default four-agent setup with a one-agent baseline across BrowseComp, SEC-Bench Pro, and Terminal-Bench 2.1; BrowseComp and SEC-Bench Pro also show 16-agent configurations. Across all three evaluations, adding parallel agents shifts the score-latency frontier upward and to the left, reaching stronger results in less time. In the API, developers can build ultra-like experiences using the [multi-agent⁠](https://developers.openai.com/api/docs/guides/responses-multi-agent) beta in the Responses API.,,[^4]

1 of 11

> “GPT‑5.6 is one of the strongest models we’ve tested on CursorBench, delivering solid results in early evals. It’s an exciting step forward for developers for persistence, intelligence and overall efficiency. We are looking forward to bringing this model to our Cursor users.”

—Oskar Schulz, President at Cursor

## A leap forward in design

GPT‑5.6 delivers a step change in design judgment. With only high-level direction, GPT‑5.6 creates tasteful, ergonomic, and functional interfaces. Its stronger computer-use capabilities let it inspect and refine the rendered result—not just generate the underlying code or content—so it can catch visual and functional issues and apply finishing touches before handing the work back.

<iframe src="https://cdn.openai.com/ctf-cdn/sites/saltwind-game-1-1/index.html" title="Interactive demo of a game generated by GPT-5.6"></iframe>

GPT‑5.6’s frontend capabilities also turn natural-language requests into polished, interactive explanations and visualizations within ChatGPT Work.

## End-to-end knowledge work

**GPT‑5.6** delivers better results for professional tasks. It takes messy context from your documents and everyday workflows like Slack, Notion, Microsoft 365, and Google Drive, and converts it into expert-level, shareable artifacts.

GPT‑5.6’s strength on knowledge work shows up in evaluations spanning long-horizon professional analysis, browsing, tool use, and computer use. GPT‑5.6 Sol sets new state-of-the-art results on **BrowseComp** at 92.2% and **OSWorld 2.0** at 62.6%; on OSWorld, it surpasses Opus 4.8 while using 85% fewer output tokens. Here, the performance-per-dollar gains extend across the GPT‑5.6 family. Luna nearly matches GPT‑5.5’s peak performance at less than half the estimated cost, while Terra surpasses it at a lower cost.

***BrowseComp****: GPT‑5.6 Sol achieves a new state of the art on BrowseComp, consisting of agentic browsing tasks.*

**GPT‑5.6 Sol improves quality in presentations, documents, and spreadsheets,** producing outputs that are more polished and accurate. It can create fully editable presentations from scratch, translating a prompt and source material into a coherent visual narrative with strong layouts, hierarchy, and design.

[^1]: 1

Cyber capabilities are evaluated with reduced safeguards. Users can join [OpenAI Daybreak’s Trusted Access for Cyber program ⁠](https://openai.com/index/daybreak-securing-the-world/) for increased access to defensive cyber capabilities.

[^2]: 2

All models are evaluated using the ExploitBench API harness with 5 seeds and reasoning continuity.

[^3]: 3

We ran ExploitGym on our alpha API, which outputs responses faster than our public API, and then rescaled to match our public API. When rescaling latencies to the speeds expected for our public API, this causes some estimated latencies to exceed the two- and six-hour time limits, despite being correctly obeyed in the evaluation run. To get faster speeds for time-sensitive work, we offer priority processing⁠ in the API and fast mode⁠ in Codex.

[^4]: 4

We estimate latency and API cost by looking at the production behavior of our models, and simulating offline. These estimates account for tool call details, sampled tokens, and input tokens. Real-world results may vary substantially, and depend on many factors not captured in our simulation. We simulate latency at fast API speeds, and cost at regular API pricing.

[^5]: 5

Models without reported output tokens, latency or cost are plotted as horizontal dotted lines.

[^6]: 6

For multi-agent, latency is derived from the root agent, while output token and API-cost totals include all tokens. Ultra is run with 4 agents.

[^7]: 7

We compute scores with the official scoring approach described in the HealthBench Professional paper, which is not comparable to results reported in Anthropic system cards.

[^8]: 8

ARC-AGI-3 for Opus 4.8 was run on high and not max reasoning effort, as this is the only published ARC-AGI-3 result.
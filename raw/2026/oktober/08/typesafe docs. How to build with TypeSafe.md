---
title: How to build with TypeSafe
source: https://docs.typesafe.ai/concepts/how-to-build-with-system-one
author:
  - "[[TypeSafe]]"
published:
created: 2026-10-08
description: Design AI-powered software by keeping code in control and giving System One narrow, structured decisions.
tags:
  - clippings
---
System One is TypeSafe’s model for building AI-powered software, not agents. It does not generate code or choose its own next action. It provides AI primitives that embed into software, so code remains in control while the model handles common-sense judgments over unstructured data.

**Summary:** build a normal software workflow and insert System One only where AI is needed.

- Keep control flow, deterministic rules, and side effects in code.
- Break broad judgments into narrow, typed questions with explicit instructions and criteria.
- Give each question only the context it needs.
- Use probabilities and confidence to act, ask for review, or escalate.
- Ask independent questions together, then compose their answers in code.

## Three software architectures

TypeSafe is designed for building **AI-powered software**, where code owns the workflow and AI handles narrow, structured decisions.

- Traditional software
- LLM agents
- AI-powered software

Traditional code is a complex decision tree made from simple software primitives. Because each primitive is reliable, developers can compose them into higher-level abstractions.

An agent processes instructions and chooses its next step. This works well when a person is monitoring the process, but every loop introduces another opportunity to go off the rails.

Code handles deterministic work and owns the control flow. The model appears only where the system needs programmable common sense or needs to interpret unstructured data. Each AI task is kept atomic and constrained.

![Traditional software, agents, and AI-powered software shown as three different system architectures.](https://mintcdn.com/ts-docs/aFVnpmCIX68NpsV1/images/how-to-build-with-typesafe/software-architectures-light.webp?w=2500&fit=max&auto=format&n=aFVnpmCIX68NpsV1&q=85&s=f8b63c6bf7e829631b64b869665f5f69)

Traditional software, agents, and AI-powered software shown as three different system architectures.

![Traditional software, agents, and AI-powered software shown as three different system architectures.](https://mintcdn.com/ts-docs/aFVnpmCIX68NpsV1/images/how-to-build-with-typesafe/software-architectures-dark.webp?w=2500&fit=max&auto=format&n=aFVnpmCIX68NpsV1&q=85&s=f74586a160f88a992efe71c319cc3c3f)

Traditional software, agents, and AI-powered software shown as three different system architectures.

## What makes System One composable

## Structured

System One is type-safe by construction. Decisions and probabilities conform to the structured software types and JSON schema your code expects, so it never has to recover a value from generated prose.

## Parallel

Questions are evaluated independently and in parallel. One primitive’s result does not become hidden context that changes another primitive’s result.

## Comparable

Outputs are sortable and can drive smart `if` statements, thresholds, and comparisons.

## Fast

Most queries complete in about 100 ms. System One is fast enough for real-time request paths and user interfaces.

## Calibrated confidence

[RLCD](https://docs.typesafe.ai/introduction/machine-learning-primer) communicates uncertainty through calibrated probabilities instead of tending toward overconfidence.

## Self-consistent

System One is designed to return stable answers across repeated evaluations. See the [self-consistency cookbook](https://docs.typesafe.ai/cookbooks/consistency_noul_cookbook).

Because every output is constrained to the supplied options, the model returns a full probability distribution over those options rather than inventing a value outside the schema. TypeSafe’s target is a greater than 100× intelligence-to-speed-and-cost ratio; the underlying bet is that cheaper intelligence will create much more demand.

## Design a System One workflow

Decomposition does not require more round trips. Questions over the same state run in parallel.

## Putting it all together

This support-ticket workflow keeps deterministic work in code, sends only relevant structured context, evaluates many atomic questions in one request, and composes the answers with explicit confidence gates.

triage\_ticket.py

```python
from typesafe_sdk import Choice, Noul, NoulCriteria, Score, TypeSafeClient

def triage_ticket(ticket, customer):
    # Handle deterministic states without calling a model.
    if ticket["status"] == "closed":
        return "no_action"

    open_orders = [
        order for order in customer["orders"] if order["status"] != "delivered"
    ]

    # Include only the structured context needed by the questions below.
    state = {
        "ticket": {
            "message": ticket["message"],
            "sender": ticket["sender"],
            "links": ticket["links"],
        },
        "customer": {
            "plan": customer["plan"],
            "open_orders": open_orders,
        },
        "policy": {
            "sensitive_credentials": ["password", "security code", "API key"],
        },
    }

    # Ask structured, atomic questions together so they run in parallel.
    questions = {
        "topic": Choice(
            instructions={
                "question": "Which team should handle \`ticket.message\`?",
                "focus": "Classify the customer's primary request.",
            },
            criteria={
                "billing": {
                    "what": "Charges, invoices, refunds, or subscriptions",
                    "not_for": "Order tracking or account access",
                    "examples": ["I was charged twice", "Where is my refund?"],
                },
                "orders": {
                    "what": "Order status, delivery, cancellation, or returns",
                    "not_for": "Charges or account access",
                    "examples": ["Where is my order?", "Cancel my shipment"],
                },
                "account": {
                    "what": "Login, profile, permissions, or security",
                    "not_for": "Charges or order tracking",
                    "examples": ["Reset my password", "I cannot sign in"],
                },
            },
        ),
        "requests_credentials": Noul(
            instructions={
                "question": "Does the message request a sensitive credential?",
                "compare": [
                    "\`ticket.message\`",
                    "\`policy.sensitive_credentials\`",
                ],
                "focus": "Look for a request to disclose the credential itself.",
            },
            criteria=NoulCriteria(
                true={
                    "what": "Asks the recipient to disclose a listed credential",
                    "examples": [
                        "Reply with your password",
                        "Send us your API key",
                    ],
                },
                false={
                    "what": "Does not ask the recipient to disclose a credential",
                    "not_for": "A legitimate instruction to reset a credential",
                    "examples": ["Use this link to reset your password"],
                },
            ),
        ),
        "sender_identity_mismatch": Noul(
            instructions={
                "question": "Does the claimed sender identity conflict with its domain?",
                "compare": [
                    "\`ticket.sender.display_name\`",
                    "\`ticket.sender.email\`",
                ],
                "focus": "Compare the named organization with the email domain.",
            },
            criteria=NoulCriteria(
                true={
                    "what": "Claims an organization unrelated to the email domain",
                    "examples": ["Acme Payroll sent from claim-bonus.example"],
                },
                false={
                    "what": "The identity and domain agree or make no conflicting claim",
                    "examples": ["Acme Payroll sent from acme.example"],
                },
            ),
        ),
        "unexpected_reward": Noul(
            instructions={
                "question": "Does the message announce an unexpected reward?",
                "inspect": "\`ticket.message\`",
                "focus": "Look for an unsolicited prize, payment, or reward claim.",
            },
            criteria=NoulCriteria(
                true={
                    "what": "Announces an unrequested prize, payment, or reward",
                    "examples": ["You were selected for a $1,000 bonus"],
                },
                false={
                    "what": "Contains no reward claim or discusses an expected payment",
                    "not_for": "A customer asking about a known refund or payroll deposit",
                    "examples": ["When will my approved refund arrive?"],
                },
            ),
        ),
        "refund_requested": Noul(
            instructions={
                "question": "Does the customer explicitly request a refund or credit?",
                "inspect": "\`ticket.message\`",
                "focus": "Require a requested remedy, not a billing complaint alone.",
            },
            criteria=NoulCriteria(
                true={
                    "what": "Directly asks for money back or an account credit",
                    "examples": ["Please refund the duplicate charge"],
                },
                false={
                    "what": "Does not ask for a refund or credit",
                    "not_for": "A complaint or billing question without a requested remedy",
                    "examples": ["Why was I charged twice?"],
                },
            ),
        ),
        "mentions_open_order": Noul(
            instructions={
                "question": "Does the message refer to a supplied open order?",
                "compare": [
                    "\`ticket.message\`",
                    "\`customer.open_orders\`",
                ],
                "focus": "Match an order id or other identifying details.",
            },
            criteria=NoulCriteria(
                true={
                    "what": "Refers to an open order by id or identifying details",
                    "examples": ["Where is order A-104?"],
                },
                false={
                    "what": "Does not identify any supplied open order",
                    "not_for": "A generic order question with no matching details",
                    "examples": ["How long does shipping usually take?"],
                },
            ),
        ),
        "frustration": Score(
            instructions={
                "question": "How frustrated does the customer appear?",
                "inspect": "\`ticket.message\`",
                "focus": "Judge expressed frustration, not issue severity.",
            },
            criteria=[
                {
                    "what": "Calm and matter-of-fact",
                    "signals": ["Neutral wording", "No complaint about the experience"],
                },
                {
                    "what": "Frustrated but civil",
                    "signals": ["Expresses annoyance", "Remains constructive"],
                },
                {
                    "what": "Very angry or threatening to leave",
                    "signals": ["Hostile language", "Threatens cancellation or churn"],
                },
            ],
        ),
    }

    with TypeSafeClient() as client:
        response = client.system_one(
            state=state,
            questions=questions,
        )

    # Compose independent spam signals with weights controlled by code.
    answers = response.answers
    spam_risk = (
        0.45 * answers["requests_credentials"].noul
        + 0.30 * answers["sender_identity_mismatch"].noul
        + 0.25 * answers["unexpected_reward"].noul
    )

    # Escalate uncertain judgments instead of guessing.
    spam_is_uncertain = 0.4 < spam_risk < 0.6
    if spam_is_uncertain or answers["topic"].confidence < 0.75:
        return route_to_human_review(ticket)
    if spam_risk >= 0.6:
        return quarantine_as_spam(ticket)

    # Let code decide which speculative answers matter on this path.
    if answers["topic"].choice == "billing":
        return route_to_billing(
            ticket,
            refund_requested=answers["refund_requested"].noul >= 0.7,
        )
    if answers["topic"].choice == "orders":
        return route_to_orders(
            ticket,
            mentions_open_order=answers["mentions_open_order"].noul >= 0.7,
        )

    priority = (
        "high"
        if answers["frustration"].confidence >= 0.7
        and answers["frustration"].score >= 1.5
        else "normal"
    )
    return route_to_account_support(ticket, priority=priority)
```
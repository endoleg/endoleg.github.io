---
name: claude-model-router
description: Pick the right Claude model for each piece of work instead of running everything on one. Load BEFORE spawning any subagent or parallel worker (to choose its model), when a task stalls and you are deciding whether to raise effort or move up a model, and when the user asks which model or effort level to use for a task.
---

# Claude model router

One model for everything is either too expensive or too weak. This skill routes each piece of
work to the cheapest model that will finish it properly.

Rules are condensed from Anthropic's guide "Which Claude model should you build with?"
(claude.dev/blog, November 2026). They are written by tier (Haiku / Sonnet / Opus / Fable), so
they survive version bumps. If the tiers themselves change, re-read the guide.

## The one rule that shapes everything

**Route by delegation. Never switch the main session's model mid-task.**

The main session keeps its model. Routing happens when you hand work to a subagent, by setting
that subagent's model. Switching the main model mid-session throws away the prompt cache (the
next turn pays full price for the whole context) and, when moving down a tier, the earlier
reasoning too.

## Routing table for delegated work

Set the model on the subagent call (`model: haiku | sonnet | opus | fable`) or in the subagent's
definition file.

| The subagent's job | Model |
|---|---|
| Find files, grep, read logs, run tests and report, summarize long output | haiku |
| Classify, tag, route, extract fields, high-volume checkable work | haiku |
| Well-scoped edits against a clear spec; a contained bug fix | sonnet |
| Repeated agent tasks: investigation, review, drafting | sonnet |
| Everyday documents, slides, spreadsheets | sonnet |
| Multi-file features, tricky debugging, computer use, vision-heavy work | opus |
| Major refactor or migration, architecture planning, deep research, scientific or quantitative analysis | fable |
| Unsure | opus |

Two guards on the table:

- **A clear spec does not guarantee Sonnet is enough.** Migrations and performance work can need
  Opus even when fully specified.
- **Small models get work where mistakes are cheap to spot.** If a wrong answer would pass
  unnoticed (a judgment call, a subtle edit), keep it on the main model.

Leave subagent effort at the model's default. Raise it only through the escalation ladder below.

## When not to delegate at all

Delegation has a coordination cost. Skip it when:

- the work is one dependent chain (each step needs the previous step's result), or
- it all fits comfortably in the current context, or
- it is a handful of tool calls.

Delegate when the work is verbose reading (logs, wide file sweeps) or genuinely parallel. The
point is to keep the expensive model's context lean: every turn resends the whole context, so
bulk reading belongs in a cheap subagent that returns a short summary.

## Escalation ladder

When a result is not good enough, climb in this order and stop at the first rung that works:

1. **Let it verify.** Give the model a test, build, or script to check its own work.
2. **Raise effort one level.** Effort buys more thinking and checking. It does not add skill
   the model lacks.
3. **Move up one model**, starting at a lower effort than the smaller model was using.

Past `high` effort, one more effort level can cost as much as the next model up. On hard tasks
try the bigger model before going beyond `high`.

**Cheap-first retry.** When the outcome can be checked automatically, run the batch at low
effort and re-run only the failures at high. This usually beats running everything at high on
both cost and pass rate.

## Advising on the main session's model

You cannot change the session's model yourself; the user does. Speak up in one line only when
there is a clear mismatch, then carry on as asked:

- **Too small:** a major migration, architecture work, or a long unattended run on Sonnet or
  Haiku. Suggest moving up.
- **Too big:** a long stretch of simple, well-scoped edits on the top tier. Suggest moving down.

Sensible starting points when the user asks:

| Work | Model | Effort |
|---|---|---|
| Most coding and knowledge work | opus | medium, then high |
| Well-scoped everyday coding | sonnet | medium, then high |
| Chat a person is waiting on | sonnet | low or medium |
| Hardest technical work, long unattended runs, leading many subagents | fable | medium, then high |

If the user does switch, tell them to compact first or start a fresh session with a short
written plan, so the new model does not pay to re-read the whole history.

## Do not oversell it

Mixed-model setups do not always win. Judge by **cost per finished task**, not price per token:
a pricier model that finishes in half the tokens can be cheaper. If the user wants proof, the
test is simple: run a few real tasks with automatic pass/fail checks on each candidate, and keep
the mixed setup only if it beats every single-model run.

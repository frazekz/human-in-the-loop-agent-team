# Grok Bot setup

The same three roles as the Claude Code version, packaged as Grok Bot skills.

In Grok Bot a skill is a reusable set of instructions that a bot can use by name. You save one by asking the bot in chat. See the official page [Skills and routines](https://docs.x.ai/grok-bot/skills-routines-and-automations).

## Setup

1. **Pick the coordinator bot.** A new bot, or the one you already talk to. Paste [bot-brief.md](bot-brief.md) as its first message and ask it to remember the rules.
2. **Save the three skills.** For each folder in `skills/`, paste the `SKILL.md` and ask:

   > Save this as a skill called "team-coordinator". Keep the text as it is.

   Repeat for `team-executor` and `team-reviewer`.
3. **Give the rules a home.** Ask the bot to keep `RULES.md` and the project templates as files it reads, or paste them when you start a project.
4. **Back the rules with app settings.** Prompts guide; they do not enforce. In the app's approval settings, keep sending, publishing, buying, and deleting on *ask first*.

## How the roles map

| Role | Where it runs |
|---|---|
| Coordinator | The bot you talk to. Plans, delegates, checks, reports. |
| Executor | A separate working session for each step: a sub-task the bot starts, or a second bot that holds the `team-executor` skill. Never the coordinator's own chat. |
| Reviewer | A separate session or bot with the `team-reviewer` skill, run before every delivery. |

Start with one bot and separate sessions. Add a second bot only when the hand-offs become too many to follow in one chat.

## First run

> Use team-coordinator. New project: a monthly newsletter for a fictional bakery. Ask me only what is missing for the brief.

Compare the result with [the example](../examples/example-bakery-newsletter/).

## Routines

If a step repeats (for example a weekly report), make it reliable by hand first, then turn it into a routine. A routine should stay silent when there is nothing new, and should stop at the same approval points as a manual run.

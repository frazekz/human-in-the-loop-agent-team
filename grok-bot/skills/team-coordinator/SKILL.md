---
name: team-coordinator
description: Use to open, resume, or report on a project run by the agent team. Plans up to three steps, delegates each to an executor session, sends each result to a reviewer, and asks the human before anything leaves. Never does the work itself.
---

# Team coordinator

**When to use:** a new project, a "where are we?" on an existing one, or a result that needs to reach the human.

**Inputs:** the project folder (brief, status, decisions, log). If there is none, a one-line goal from the human.

**Before you start:** read `lessons.md` next to this skill.

## Steps

1. Open the project. If it is new, copy the project template and fill the brief: goal, expected result, constraints, done-when. Ask only for what is missing.
2. Read status and decisions. Decisions taken stay taken.
3. Plan at most three steps, each with its check: `1. <step> -> check: <proof it is done>`.
4. Delegate one step at a time to a separate executor session (team-executor). Do not do it in this chat.
5. Send the result to a reviewer session (team-reviewer). A fix list goes back to the executor, at most twice.
6. Update status (date, point reached, next step, waiting-for), decisions (with reason), and one line in the log.

## Validate

The reviewer returned `clean`, and the result meets the brief's done-when.

## Return

Fact / Assumption / Recommendation, the file names produced, and, if needed, the action that needs a yes, with numbered options, the recommended first.

## Needs approval

Sending, publishing, posting, installing, buying, deleting. Always, even when the draft was approved.

**After the work:** add one line to `lessons.md`.

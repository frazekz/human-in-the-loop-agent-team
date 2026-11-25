---
name: team-reviewer
description: Use before any result is delivered or published. Checks it against the brief, verifies facts and links, and scans for personal data, client data, and credentials. Returns clean or a fix list.
---

# Team reviewer

**When to use:** after every executor step, before the coordinator reports to the human.

**Inputs:** the draft, the project brief.

**Before you start:** read `lessons.md` next to this skill.

## Steps

1. Brief: does the draft do what was asked? List what is missing.
2. Facts: each one has a source. Anything else becomes an assumption or `unknown`.
3. Links and commands: test them; mark those you could not test.
4. Sensitive data: look for names of people, emails, phone numbers, addresses, bank details, amounts, client or company names, internal paths, keys, tokens, passwords. If you can run commands, use `scripts/check-sensitive.sh`.
5. Write `review: clean` or `review: N fixes` in the log.

## Validate

Every item in the fix list says what is wrong, where, and what to do.

## Return

`clean`, or a numbered fix list for the executor. Doubtful points go to the human as questions.

## Needs approval

Nothing: the reviewer only reads and reports. A credential found in a file is reported first, so it can be rotated.

**After the work:** add one line to `lessons.md`.

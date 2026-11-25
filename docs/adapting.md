# Adapting the blueprint

## Add a specialist

Keep the three roles. A specialist (for example "SEO writer" or "data analyst") is an **executor with a narrower skill**, not a fourth layer.

1. Copy the executor skill and give it a narrow description: when to use it, inputs, steps, check, what to return.
2. Keep the same limits: drafts only, assumptions declared, result goes to the reviewer.
3. Tell the coordinator when to pick it, in one line in its skill.

Avoid a manager between the coordinator and the specialists. Every extra level adds hand-offs and usage without adding control.

## Change a rule

1. Change `RULES.md` only. Role files point to it.
2. Log the change in `CHANGELOG.md` with the reason.
3. Run one small project end to end to see whether the change holds.

## Grow trust step by step

1. Start with drafts only.
2. After several good runs of the same task, turn it into a skill.
3. Only then make it a scheduled routine, still stopping at the same approval points.

## Keep lessons short

One line per lesson, newest first: what happened, what to do next time. Remove lessons that no longer apply by moving them to a *History* section.

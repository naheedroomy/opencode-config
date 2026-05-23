## Command execution delegation

If a task requires running a command (bash, tests, builds, scripts), do not run it yourself — delegate it to the `fixer` agent via `@fixer <task>` and use its summarized result. Your job is read-only discovery: `glob`, `grep`, and targeted `read`. Keep raw command output out of your context.

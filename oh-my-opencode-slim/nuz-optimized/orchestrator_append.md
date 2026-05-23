## Command execution — strict delegation rules

You are NOT permitted to run the following yourself under any circumstances:
- Test runners (`npm test`, `pytest`, `go test`, `bun test`, `jest`, `vitest`, etc.)
- Build commands (`npm run build`, `tsc`, `cargo build`, `make`, etc.)
- Package managers (`npm install`, `pip install`, `cargo add`, etc.)
- Linters and formatters (`eslint`, `prettier`, `ruff`, `golangci-lint`, etc.)
- Long-running scripts or anything that produces more than 3 lines of output

Always delegate these to `@fixer`. Pass it the exact command and the relevant file/directory context. Use its summarized result — never ask it to return raw output.

The ONLY bash you may run directly:
- `git status`, `git diff`, `git log`, `git branch`, `git show`
- `ls`, `pwd`, `which`, `cat` on a single small file
- `echo`, `grep` on a known small target

If in doubt, delegate to `@fixer`. The overhead of delegation is always cheaper than raw command output filling your context.

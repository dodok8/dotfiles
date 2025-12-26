Generate a commit message for the staged changes. Keep the first line under 50 characters. Subsequent lines should be under 72 characters. Please don't touch the stage; just use the stage as is.  Don't put "🤖 Generated with \[Claude Code](https://claude.ai/code)" in the commit message, but you can put "Co-Authored-By: ..." at the end if you like.

Steps:
1. Run `git log -5` to check existing commit style.
2. Run `git diff --cached` to view staged changes.
3. Output a commit message in a code block.
4. Copy the commit message to clipboard using `echo -n "message" | pbcopy`.
Generate a commit message for the staged changes. Keep the first line under 50 characters. Subsequent lines should be under 72 characters. Please don't touch the stage; just use the stage as is.  Don't put "🤖 Generated with \[Claude Code](https://claude.ai/code)" in the commit message, but you can put "Co-Authored-By: ..." at the end if you like.

Steps:
1. Run `git log -5` to check existing commit style.
2. Run `git diff --cached` to view staged changes.
3. Output a commit message in a code block.
4. Copy the commit message to clipboard using `echo -n "message" | pbcopy`.

# Dotfiles

# Linux / Mac OS

```
mkdir ~/.claude/commands
ln -sf ./.claude/commands/commit.md ~/.claude/commands/commit.md

claude mcp add -s user -t http deepwiki https://mcp.deepwiki.com/mcp
```

# Windows(PowerShell, ad admin)

```
New-Item -ItemType Directory -Path "$env:USERPROFILE\.claude\commands" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\.claude\commands\commit.md" -Target "$PWD\.claude\commands\commit.md"

claude mcp add -s user -t http deepwiki https://mcp.deepwiki.com/mcp
```
# Dotfiles

# Linux / Mac OS

### claude

```
mkdir ~/.claude/commands
ln -sf ./.claude/commands/commit.md ~/.claude/commands/commit.md

claude mcp add -s user -t http deepwiki https://mcp.deepwiki.com/mcp
```

### nushell
```
mkdir -p ~/.config/nushell
ln -sf $PWD/nushell/config.nu ~/.config/nushell/config.nu
```


# Windows(PowerShell, ad admin)

### Claude

```
New-Item -ItemType Directory -Path "$env:USERPROFILE\.claude\commands" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\.claude\commands\commit.md" -Target "$PWD\.claude\commands\commit.md"

claude mcp add -s user -t http deepwiki https://mcp.deepwiki.com/mcp
```

### nushell
```
New-Item -ItemType Directory -Path "$env:APPDATA\nushell" -Force
New-Item -ItemType SymbolicLink -Path "$env:APPDATA\nushell\config.nu" -Target "$PWD\nushell\config.nu"
```
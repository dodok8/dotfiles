# Dotfiles

## claude

### Linux / Mac

```
mkdir ~/.claude/commands
ln -sf ./.claude/commands/commit.md ~/.claude/commands/commit.md

claude mcp add -s user -t http deepwiki https://mcp.deepwiki.com/mcp
```

### Windows (PowerShell, as admin)

```
New-Item -ItemType Directory -Path "$env:USERPROFILE\.claude\commands" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\.claude\commands\commit.md" -Target "$PWD\.claude\commands\commit.md"

claude mcp add -s user -t http deepwiki https://mcp.deepwiki.com/mcp
```

## nushell

### Linux

```
mkdir -p ~/.config/nushell
ln -sf $PWD/nushell/config.nu ~/.config/nushell/config.nu
```

### Mac

```
mkdir -p "$HOME/Library/Application Support/nushell/"
ln -sf "$PWD/nushell/config.nu" "$HOME/Library/Application Support/nushell/config.nu"
```

## zsh

### Mac

```
ln -sf $PWD/.zshrc ~/.zshrc
```

### Windows (PowerShell, as admin)

```
New-Item -ItemType Directory -Path "$env:APPDATA\nushell" -Force
New-Item -ItemType SymbolicLink -Path "$env:APPDATA\nushell\config.nu" -Target "$PWD\nushell\config.nu"
```
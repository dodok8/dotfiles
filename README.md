# Dotfiles

## claude

```zsh
mkdir -p ~/.claude/commands

ln -sf "$PWD/.claude/commands/commit.md" ~/.claude/commands/commit.md
ln -sf "$PWD/.claude/CLAUDE.md" ~/.claude/CLAUDE.md

claude mcp add -s user -t http deepwiki https://mcp.deepwiki.com/mcp
````

## codex

Codex는 전역 지침으로 `~/.codex/AGENTS.md`를 읽는다. 이 저장소의 `.codex/AGENTS.md`를 심볼릭 링크로 연결하면, 어느 위치에서 Codex를 실행하더라도 같은 기본 지침을 사용할 수 있다.

```zsh
mkdir -p ~/.codex

ln -sf "$PWD/.codex/AGENTS.md" ~/.codex/AGENTS.md
```

적용 여부 확인:

```zsh
ls -l ~/.codex/AGENTS.md
readlink ~/.codex/AGENTS.md
```

Codex에서 확인:

```zsh
codex --ask-for-approval never "Summarize the current instructions."
```

### Project-local AGENTS.md

특정 프로젝트에만 이 지침을 적용하려면, 해당 프로젝트 루트에 `AGENTS.md`를 심볼릭 링크로 연결한다.

```zsh
ln -sf "$PWD/.codex/AGENTS.md" /path/to/project/AGENTS.md
```

예시:

```zsh
ln -sf "$PWD/.codex/AGENTS.md" ~/work/my-project/AGENTS.md
```

## zsh

```zsh
ln -sf "$PWD/.zshrc" ~/.zshrc
```

## About

Gaebalgom's dotfile

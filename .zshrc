# ============================================================
# Platform detection
# ============================================================

case "$OSTYPE" in
  darwin*)
    ZSH_PLATFORM="macos"
    ;;
  linux*)
    if grep -qi microsoft /proc/version 2>/dev/null; then
      ZSH_PLATFORM="wsl"
    else
      ZSH_PLATFORM="linux"
    fi
    ;;
  msys*|mingw*|cygwin*)
    ZSH_PLATFORM="windows-msys"
    ;;
  *)
    ZSH_PLATFORM="unknown"
    ;;
esac


# ============================================================
# OS-specific PATH
# ============================================================

# macOS Homebrew Ruby
if [[ "$ZSH_PLATFORM" == "macos" ]]; then
  [[ -d "/opt/homebrew/opt/ruby/bin" ]] && export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
fi


# ============================================================
# zsh basics
# ============================================================

export SHELL="$(command -v zsh)"

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

setopt append_history
setopt share_history
setopt hist_ignore_dups
setopt autocd
setopt interactivecomments
setopt no_beep


# ============================================================
# Completion
# ============================================================

autoload -Uz compinit
compinit


# ============================================================
# Prompt
# ============================================================

PROMPT='%F{green}%n@%m%f:%F{blue}%~%f %# '


# ============================================================
# Aliases
# ============================================================

alias pn="pnpm"

if command -v lsd >/dev/null 2>&1; then
  alias ll="lsd -l"
  alias ls="lsd"
else
  alias ll="ls -l"
fi

case "$ZSH_PLATFORM" in
  macos)
    alias e="open"
    ;;
  wsl|windows-msys)
    alias e="explorer.exe"
    ;;
esac


# ============================================================
# oh-my-posh
# ============================================================

if command -v oh-my-posh >/dev/null 2>&1; then
  eval "$(oh-my-posh init zsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/refs/heads/main/themes/onehalf.minimal.omp.json')"
fi


# ============================================================
# mise
# ============================================================

case "$ZSH_PLATFORM" in
  windows-msys)
    # MSYS2 / MinGW zsh:
    # WinGet mise.exe + shims 방식 사용.
    # `mise activate zsh`는 Windows 경로가 깨질 수 있어서 사용하지 않음.

    if [[ -n "$LOCALAPPDATA" ]] && command -v cygpath >/dev/null 2>&1; then
      export MISE_WIN_LOCALAPPDATA="$(cygpath -u "$LOCALAPPDATA")"
      export MISE_EXE="$MISE_WIN_LOCALAPPDATA/Microsoft/WinGet/Links/mise.exe"

      [[ -d "$MISE_WIN_LOCALAPPDATA/mise/shims" ]] && \
        export PATH="$MISE_WIN_LOCALAPPDATA/mise/shims:$PATH"
    else
      export MISE_EXE="/c/Users/dodok8/AppData/Local/Microsoft/WinGet/Links/mise.exe"
      export PATH="/c/Users/dodok8/AppData/Local/mise/shims:$PATH"
    fi

    if [[ -x "$MISE_EXE" ]]; then
      mise() {
        "$MISE_EXE" "$@"
      }
    fi
    ;;

  macos|wsl|linux)
    # macOS / WSL Debian / 일반 Linux:
    # 일반적인 mise activate 방식 사용.

    if command -v mise >/dev/null 2>&1; then
      eval "$(mise activate zsh)"
    elif [[ -x "$HOME/.local/bin/mise" ]]; then
      eval "$("$HOME/.local/bin/mise" activate zsh)"
    elif [[ -x "/opt/homebrew/bin/mise" ]]; then
      eval "$("/opt/homebrew/bin/mise" activate zsh)"
    elif [[ -x "/usr/local/bin/mise" ]]; then
      eval "$("/usr/local/bin/mise" activate zsh)"
    fi
    ;;
esac


# ============================================================
# zoxide
# ============================================================

if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi

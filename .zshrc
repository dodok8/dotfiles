export PATH="/opt/homebrew/opt/ruby/bin:$PATH"


# fnm
FNM_PATH="/Users/dodok/Library/Application Support/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/Users/dodok/Library/Application Support/fnm:$PATH"
  eval "`fnm env`"
fi

eval "$(fnm env --use-on-cd --shell zsh)"

# z
source ~/zsh/zsh-z.plugin.zsh

# auto suggestion
source ~/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# bun completions
[ -s "/Users/dodok/.bun/_bun" ] && source "/Users/dodok/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#pnpm
alias pn="pnpm"
alias ll="lsd -l"
alias ls="lsd"
alias e="open"

#psql
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"

#npm global

export PATH=~/.npm-global/bin:$PATH
. "/Users/dodok/.deno/env"
. "$HOME/.local/bin/env"
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"

##oh-my-posh
eval "$(oh-my-posh init zsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/refs/heads/main/themes/onehalf.minimal.omp.json')"
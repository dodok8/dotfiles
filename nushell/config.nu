# config.nu
#
# Installed by:
# version = "0.109.1"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R

$env.config.show_banner = false
$env.config.buffer_editor = "code"
$env.config.history.file_format = "sqlite"
use std/dirs

alias ll = ls -l
alias pn = pnpm
alias e = explorer.exe

oh-my-posh init nu --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/refs/heads/main/themes/probua.minimal.omp.json'

mkdir ($nu.data-dir | path join "vendor/autoload")
^mise activate nu | save -f ($nu.data-dir | path join "vendor/autoload/mise.nu")
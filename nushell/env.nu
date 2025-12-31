$env.PATH = ($env.PATH | append "/home/linuxbrew/.linuxbrew/Cellar/oh-my-posh/28.7.0/bin"| append "/home/dodok8/.deno/bin" | append "/home/dodok8/.local/share/fnm/" | append "/home/dodok8/.local/bin/")

zoxide init nushell | save -f ~/.zoxide.nu
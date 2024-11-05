# ..
alias -g ...='../..'
alias -g ....='../../..'

# clear
alias c='clear'

# lsd -> ls
alias ls='lsd'
alias la='lsd -A' # Don't list implied . and ..
alias ll='lsd -l --header'
alias llg='lsd -l --header --git'
alias lla='lsd -lA --header'
alias lt='lsd --tree'

# mkdir
alias mkdir='mkdir -p'

# nvim
alias vi='nvim'
alias vim='nvim'

# fastfetch
# alias neofetch='fastfetch'

# benchmark
# zsh 基准测试
alias benchzsh='for i in $(seq 1 5); do /usr/bin/time /bin/zsh --no-rcs -i -c exit; done'
# raw zsh 基准测试
alias benchrawzsh='for i in $(seq 1 20); do /usr/bin/time /bin/zsh --no-rcs -i -c exit; done'
# zsh 插件启动时间分析测试
alias benchplugin='zprof | less'

alias tt='\time zsh -i -c exit'

# Conda/Mamba
alias base='mamba activate base'
alias pytorch='mamba activate pytorch'
alias study='mamba activate study'
alias lab='mamba activate jupyterlab'
alias dea='mamba deactivate'

# Python
alias piptree='pipdeptree'

# LazyDocker
alias lzd='lazydocker'

# git
alias gs='git status'
alias gp='git push -u origin main'
alias ga='git add'

# LazyGit
alias lg='lazygit'

# Proxy
alias proxy='export https_proxy=http://127.0.0.1:7890;export http_proxy=http://127.0.0.1:7890;export all_proxy=socks5://127.0.0.1:7890'
alias unproxy='unset https_proxy http_proxy all_proxy'

# TheFuck
# eval $(thefuck --alias)

# tmux
alias t='tmux'

# asciinema
alias rec='asciinema rec'

# harlequin
alias sql='harlequin'

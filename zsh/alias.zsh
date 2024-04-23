# ..
alias -g ...='../..'
alias -g ....='../../..'


# lsd -> ls
alias ls='lsd'
alias la='lsd -A'  # Don't list implied . and ..
alias ll='lsd -l --header'
alias llg='lsd -l --header --git'
alias lla='lsd -lA --header'
alias lt='lsd --tree'

# mkdir
alias mkdir='mkdir -p'

# nvim
alias vi="nvim"
alias vim="nvim"

alias tt="\time zsh -i -c exit"

# Conda/Mamba
alias base="mamba activate base"
alias pytorch="mamba activate pytorch"
alias study="mamba activate study"
alias lab="mamba activate jupyterlab"
alias dea="mamba deactivate"

# Python
alias piptree="pipdeptree"

# LazyDocker
alias lzd="lazydocker"

# git
alias gs="git status"
alias gp="git push -u origin main"
alias ga="git add"

# LazyGit
alias lg="lazygit"

# Proxy
alias proxy="export https_proxy=http://127.0.0.1:7890;export http_proxy=http://127.0.0.1:7890;export all_proxy=socks5://127.0.0.1:7890"
alias unproxy="unset https_proxy http_proxy all_proxy"

# TheFuck
# eval $(thefuck --alias)

# tmux
alias t="tmux"

# asciinema
alias rec="asciinema rec"

# harlequin
alias sql="harlequin"


# ..
alias -g ...='../..'
alias -g ....='../../..'


# lsd -> ls
alias ls='lsd'
alias la='lsd -A'  # Don't list implied . and ..
alias ll='lsd -l --header'
alias llg='lsd -l --header --git'
alias lla='lsd -lA'
alias lt='lsd --tree'

# mkdir
alias mkdir='mkdir -p'

# nvim
alias vi="nvim"
alias vim="nvim"

# zsh
alias zshrc="nvim ~/.zshrc"

alias tt="\time zsh -i -c exit"

# Conda/Mamba
alias base="mamba activate base"
# alias paddle="conda activate paddle"
alias pytorch="mamba activate pytorch"
alias dea="mamba deactivate"

# Python
alias piptree="pipdeptree"

# LazyDocker
alias lzd="lazydocker"

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


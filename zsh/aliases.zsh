# ..
alias -g ...='../..'
alias -g ....='../../..'

# clear
alias c='clear'

if [[ -x $(command -v lsd) ]]; then
    # lsd -> ls
    alias ls='lsd'
    alias la='lsd -A' # Don't list implied . and ..
    alias ll='lsd -l --header'
    alias llg='lsd -l --header --git'
    alias lla='lsd -lA --header'
    alias lt='lsd --tree'
else
    alias ls='ls --color=auto'
    alias ll='ls -l --color=auto'
    alias la='ll -a'
fi

# mkdir
alias mkdir='mkdir -p'

# nvim
alias vim='nvim'

# Conda/Mamba
alias base='mamba activate base'
alias pytorch='mamba activate pytorch'
alias study='mamba activate study'
alias lab='mamba activate jupyterlab'
alias dea='mamba deactivate'

# tmux
alias t='tmux'

# kubectl
alias k='kubectl'

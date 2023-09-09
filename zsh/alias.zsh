# ..
alias -g ...='../..'
alias -g ....='../../..'


# ls
alias ls='exa --icons' # 'ls --color -F'
alias ll='exa -lh --icons' # 'ls --color -F -l'
alias la='exa -a --icons' # 'ls --color -F -a'
alias lla='exa -lha --icons' # 'ls --color -F -l -a'
alias lt='exa -lhT --icons'

alias sed='gsed'

# pacman
alias clean='sudo pacman -R $(pacman -Qdtq)'

# mkdir
alias mkdir='mkdir -p'

# nvim
alias vi="nvim"
alias vim="nvim"

# zsh
alias zshrc="nvim ~/.zshrc"

# Conda
# alias paddle="conda activate paddle"
#alias torch="conda activate torch"

# LazyDocker
alias lzd="lazydocker"

# LazyGit
alias lg="lazygit"

# Proxy
alias proxy="export https_proxy=http://127.0.0.1:7890;export http_proxy=http://127.0.0.1:7890;export all_proxy=socks5://127.0.0.1:7890"
alias unproxy="unset https_proxy http_proxy all_proxy"

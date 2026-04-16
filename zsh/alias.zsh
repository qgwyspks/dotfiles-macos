# ─────────────────────────────────────────
# 📦 Alias Configuration
# ─────────────────────────────────────────

# 快速返回上级目录
alias -g ...='../..'
alias -g ....='../../..'

# ─────────────────────────────────────────
# 📂 ls / lsd
# ─────────────────────────────────────────
if command -v lsd >/dev/null 2>&1; then
    alias ls='lsd'
    alias la='lsd -A'
    alias ll='lsd -l --header'
    alias llg='lsd -l --header --git'
    alias lla='lsd -lA --header'
    alias lt='lsd --tree'
else
    alias ls='ls --color=auto'
    alias ll='ls -l --color=auto'
    alias la='ll -a'
fi

# ─────────────────────────────────────────
# 🛠 Utils
# ─────────────────────────────────────────
alias mkdir='mkdir -p'
alias vim='nvim'
alias t='tmux'

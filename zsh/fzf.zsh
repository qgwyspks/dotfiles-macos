# ─────────────────────────────────────────
# 🔍 FZF Configuration
# ─────────────────────────────────────────

# 初始化 fzf 官方 keybindings（确保 fzf-file-widget 存在）
if command -v fzf >/dev/null 2>&1; then
  eval "$(fzf --zsh)"
fi

# 关闭冲突功能
bindkey -r '^R'   # 交给 atuin
bindkey -r '^[c'  # 交给 zoxide
# Ctrl-T → 文件搜索（由 fzf 官方 widget 提供）
bindkey '^T' fzf-file-widget

# 默认 UI 配置
export FZF_DEFAULT_OPTS="
--color=fg:-1,fg+:#b0e1df,bg:-1
--color=spinner:#af5fff,pointer:#5effd7
--color=hl:#5f87af,marker:#00d6cf
--height=40%
--layout=reverse
--marker='✓'
--prompt='❯ '
--separator='─'
--border
"
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--preview '[[ -d {} ]] && ls -al {} || [[ -f {} ]] && bat --style=plain --color=always {} || echo \"⚠️ Not a file\"' \
--preview-window=right:60%"

# 默认搜索命令
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow \
--exclude .git --exclude node_modules --exclude .cache'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# ─────────────────────────────────────────
# 🔌 fzf-tab Integration
# ─────────────────────────────────────────

zstyle ':fzf-tab:*' fzf-command fzf
zstyle ':fzf-tab:*' switch-group ',' '.'

zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu no
zstyle ':fzf-tab:*' prefix ''

# ─────────────────────────────────────────
# 👀 Preview
# ─────────────────────────────────────────

zstyle ':fzf-tab:complete:*:*' fzf-preview \
'[[ -d $realpath ]] && ls -1 $realpath || bat --color=always --style=plain $realpath 2>/dev/null || cat $realpath'

zstyle ':fzf-tab:complete:cd:*' fzf-preview \
'command -v lsd >/dev/null && lsd -1 --color=always --icon=always $realpath || ls -1 $realpath'

zstyle ':fzf-tab:complete:((\\|*/|)git|git-help):argument-1' \
fzf-preview 'git help $word | bat -lhelp'

zstyle ':fzf-tab:complete:(\\|*/|)go:argument-1' \
fzf-preview 'go help $word | bat -lhelp'

zstyle ':fzf-tab:complete:kill:argument-rest' fzf-preview \
'[[ $group == "[process ID]" ]] && ps -p $word -o pid,command'

zstyle ':fzf-tab:complete:kill:argument-rest' \
fzf-flags --preview-window=down:3:wrap

zstyle ':fzf-tab:complete:git-add:argument-rest' \
fzf-preview 'git diff $word | delta'

# ─────────────────────────────────────────
# 📂 Zoxide Helper
# ─────────────────────────────────────────

export _ZO_FZF_OPTS="
--height 40%
--layout=reverse
--border
"

zz() {
  local dir
  dir=$(
    (echo ".."; zoxide query -l) | fzf \
      --preview '[[ -d {} ]] && ls -al {}' \
      --height 40%
  )

  if [[ "$dir" == ".." ]]; then
    cd ..
  elif [[ -n "$dir" ]]; then
    cd "$dir"
  fi
}
# *：通配符匹配任何内容，不关心具体位置
# argument-1: 明确指定是命令的第一个参数
# argument-rest: 明确指定是命令的第一个参数之后的所有参数
# *-argument-rest: 组合模式，匹配任何命令的剩余参数（非第一个参数）

# ─────────────────────────────────────────
# 🔗 Workflow Notes
# ─────────────────────────────────────────
# Ctrl-R → atuin (history search)
# Ctrl-T → fzf (file search)
# z <keyword> → zoxide (directory jump)


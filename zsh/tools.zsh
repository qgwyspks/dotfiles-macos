# ─────────────────────────────────────────
# ⚙️ Runtime Tools (Lazy Loaded)
# ─────────────────────────────────────────

# ─────────────────────────────────────────
# 📜 Atuin (History)
# ─────────────────────────────────────────
if command -v atuin >/dev/null 2>&1; then
  # 不使用默认绑定，完全自定义
  export ATUIN_NOBIND="true"
  # 性能 & 行为优化
  export ATUIN_SEARCH_MODE="fuzzy"         # 模糊匹配（更智能）
  export ATUIN_FILTER_MODE="workspace"     # 当前目录优先（强烈推荐）
  export ATUIN_STYLE="compact"             # 更紧凑 UI
  export ATUIN_INLINE_HEIGHT="20"          # UI 高度
  export ATUIN_SHOW_PREVIEW="true"         # 显示预览（命令

  eval "$(atuin init zsh)"

  bindkey '^r' atuin-search
  bindkey '^[r' atuin-search  # 绑定 Alt+R 也触发搜索
fi

# ─────────────────────────────────────────
# 📂 Zoxide (Smart cd)
# ─────────────────────────────────────────
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi
# ─────────────────────────────────────────
# ✨ Starship (Prompt)
# ─────────────────────────────────────────
if command -v starship >/dev/null 2>&1; then
  precmd_functions+=(__starship_init)
  __starship_init() {
    precmd_functions=(${precmd_functions:#__starship_init})
    eval "$(starship init zsh)"
  }
fi

sudo-command-line() {
  # 如果为空 → 什么都不做
  [[ -z "$BUFFER" ]] && return

  # 如果还没有 sudo → 添加
  if [[ "$BUFFER" != sudo\ * ]]; then
    BUFFER="sudo $BUFFER"
    CURSOR=${#BUFFER}
  fi
}

zle -N sudo-command-line
bindkey '\e\e' sudo-command-line

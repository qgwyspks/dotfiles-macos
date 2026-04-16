# ─────────────────────────────────────────
# ⚡ Zimfw bootstrap
# ─────────────────────────────────────────

ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim
ZIM_CONFIG_FILE=${ZIM_CONFIG_FILE:-$ZSH_HOME/zimrc}
ZIMFW_SCRIPT="$ZIM_HOME/zimfw.zsh"

# 下载 zimfw（只做一次）
if [[ ! -f $ZIMFW_SCRIPT ]]; then
  curl -fsSL --create-dirs -o $ZIMFW_SCRIPT \
    https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
fi

# 生成 init.zsh（当 zimrc 更新时）
if [[ ! $ZIM_HOME/init.zsh -nt $ZIM_CONFIG_FILE ]]; then
  source $ZIMFW_SCRIPT init
fi

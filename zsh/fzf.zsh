eval "$(fzf --zsh)"

# if [[ "$(uname)" == "Darwin" ]]; then
#   eval "$(gdircolors -b)"
# fi

export FZF_DEFAULT_OPTS="
--color=fg:-1,fg+:#b0e1df,bg:-1
--color=spinner:#af5fff,pointer:#5effd7
--color=hl:#5f87af,marker:#00d6cf
--height=40%
--layout=reverse
--pointer='◆'"
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# fzf-tab
# 指定使用 fzf 作为模糊搜索器
zstyle ':fzf-tab:*' fzf-command fzf
# zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
# 使用 `,` `.` 切换 group（<>太麻烦）
zstyle ':fzf-tab:*' switch-group ',' '.'

# 没有组时着色 白
# zstyle ':fzf-tab:*' default-color $'\033[37m'
# 完成 git checkout 时禁用排序
zstyle ':completion:*:git-checkout:*' sort false
# 设置描述格式以启用组支持
zstyle ':completion:*:descriptions' format '[%d]'
# 设置颜色以启用文件名着色
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# 强制 zsh 不显示不全菜单，允许 fzf-tab 捕捉未明确的前缀
zstyle ':completion:*' menu no
zstyle ':fzf-tab:*' prefix ''

# 通用预览命令
zstyle ':fzf-tab:complete:*:*' fzf-preview 'less ${(Q)realpath}'
export LESSOPEN='|~/.lessfilter %s'

# zstyle ':fzf-tab:complete:cd:*' fzf-preview 'lsd -1 --color=always --icon=always $realpath'
# zstyle ':fzf-tab:complete:nvim:*' fzf-preview 'bat --color=always --style=numbers $realpath'
# zstyle ':fzf-tab:complete:ls:*' fzf-preview 'bat --color=always $realpath'

zstyle ':fzf-tab:complete:kill:argument-rest' fzf-preview \
	'[[ $group == "[process ID]" ]] && ps -p $word -o pid,command'
zstyle ':fzf-tab:complete:kill:argument-rest' fzf-flags --preview-window=down:3:wrap

zstyle ':fzf-tab:complete:brew-(install|uninstall):*-argument-rest' fzf-preview 'brew info $word'

zstyle ':fzf-tab:complete:git-add:argument-rest' fzf-preview 'git diff $word | delta'

# zstyle ':fzf-tab:complete:go:*' fzf-preview '$functions[_go_args_descr]'

zz() {
  local dir=$(
    zoxide query --list --score | \
    fzf --height 40% --layout reverse \
        --nth 2.. --tac --no-sort --query "$*" \
        --bind 'enter:become:echo {2..}'
  ) && cd "$dir"
}

source ~/.config/zsh/gget.sh

# *：通配符匹配任何内容，不关心具体位置
# argument-1: 明确指定是命令的第一个参数
# argument-rest: 明确指定是命令的第一个参数之后的所有参数
# *-argument-rest: 组合模式，匹配任何命令的剩余参数（非第一个参数）

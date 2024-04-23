eval "$(fzf --zsh)"

if [[ "$(uname)" == "Darwin" ]]; then
  eval "$(gdircolors -b)"
fi

export FZF_DEFAULT_OPTS="
--color=fg:-1,fg+:#b0e1df,bg:-1
--color=spinner:#af5fff,pointer:#5effd7
--color=hl:#5f87af,marker:#00d6cf
--height=40%
--layout=reverse
--pointer='◆'" # --border
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# fzf-tab
# 指定使用 fzf 作为模糊搜索器
zstyle ':fzf-tab:*' fzf-command fzf
# zsyle ':fzf-tab:*' fzf-command ftb-tmux-popup
# 使用 `,` `.` 切换 group（<>太麻烦）
zstyle ':fzf-tab:*' switch-group ',' '.'

# 没有组时着色 白
# zstyle ':fzf-tab:*' default-color $'\033[37m'
# 完成 git checkout 时禁用排序
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# force zsh not to show completion menu, which allows fzf-tab to capture the unambiguous prefix
zstyle ':completion:*' menu no
zstyle ':fzf-tab:*' prefix ''

# 生成查询字符串的策略
zstyle ':fzf-tab:complete:_zlua:*' query-string input

zstyle ':fzf-tab:complete:*:*' fzf-preview 'less ${(Q)realpath}'
export LESSOPEN='|~/.lessfilter %s'

# zstyle ':fzf-tab:complete:cd:*' fzf-preview 'lsd -1 --color=always --icon=always $realpath'
# zstyle ':fzf-tab:complete:nvim:*' fzf-preview 'bat --color=always --style=numbers $realpath'
# zstyle ':fzf-tab:complete:ls:*' fzf-preview 'bat --color=always $realpath'

zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
# give a preview of commandline arguments when completing `kill`
zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,comm -w -w"
zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-preview '[[ $group == "[process ID]" ]] && ps --pid=$word -o cmd --no-headers | bat -lsh'
zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-flags --preview-window=down:3:wrap

zstyle ':fzf-tab:complete:tldr:argument-1' fzf-preview 'tldr --color always $word'

zstyle ':fzf-tab:complete:brew-(install|uninstall|search|info):*-argument-rest' fzf-preview 'brew info $word'

zstyle ':fzf-tab:complete:git-(add|diff|restore):*' fzf-preview 'git diff $word | delta'
zstyle ':fzf-tab:complete:git-log:*' fzf-preview 'git log --color=always $word'
zstyle ':fzf-tab:complete:git-help:*' fzf-preview 'git help $word | bat -plman --color=always'
zstyle ':fzf-tab:complete:git-show:*' fzf-preview \
	'case "$group" in
	"commit tag") git show --color=always $word ;;
	*) git show --color=always $word | delta ;;
	esac'
zstyle ':fzf-tab:complete:git-checkout:*' fzf-preview \
	'case "$group" in
	"modified file") git diff $word | delta ;;
	"recent commit object name") git show --color=always $word | delta ;;
	*) git log --color=always $word ;;
	esac'

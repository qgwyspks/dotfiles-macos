umask 022
zmodload zsh/zle
zmodload zsh/zpty
zmodload zsh/complist

autoload -Uz colors  # 加载颜色支持
colors  # 启动颜色支持

fpath+=~/.zfunc
autoload -U compinit  # 加载补全系统
# compinit


setopt autocd  # 输入目录名自动 cd
setopt auto_menu  # 自动显示补全菜单
setopt auto_param_slash  # 补全目录时自动添加斜杠
setopt complete_in_word  # 在单词中间补全
setopt no_menu_complete  # 不自动选择第一个补全项

HISTFILE="$HOME/.zsh_history"
HISTSIZE=1000
SAVEHIST=2000
setopt append_history         # 追加历史记录
setopt share_history          # 所有会话共享历史记录
setopt inc_append_history     # 立即写入
setopt extended_history       # 保存扩展历史信息
setopt hist_ignore_all_dups   # 忽略重复的命令
setopt hist_ignore_space      # 忽略空格开头的命令
setopt hist_no_functions      # 不保存函数定义
setopt hist_expire_dups_first # 先删除重复记录
setopt hist_save_no_dups      # 不保存重复记录
setopt hist_reduce_blanks     # 删除历史记录中的多余空格

ZSH_AUTOSUGGEST_USE_ASYNC="true"

declare -a unopt=(
    FLOWCONTROL   # 禁用流控制
    NOMATCH       # 禁用无匹配时显示错误
    CORRECT       # 禁用命令自动纠正
    EQUALS        # 禁用=命令扩展
)

for unopt in ${unopt[@]}
do
    unsetopt $unopt
done

bindkey '^A' beginning-of-line  # 绑定 Ctrl+A 到行首
bindkey '^E' end-of-line  # 绑定 Ctrl+E 到行尾
bindkey '^p' history-search-backward  # 绑定 Ctrl+P 向上搜索历史命令
bindkey '^n' history-search-forward  # 绑定 Ctrl+N 向下搜索历史命令

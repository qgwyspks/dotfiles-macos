umask 022  # 设置默认文件创建权限掩码 新文件 -> 644 目录 -> 755

# 加载 zsh 核心模块
zmodload zsh/zle       # zsh 行编辑器，提供命令行编辑功能
zmodload zsh/zpty      # 伪终端控制
zmodload zsh/complist  # 补全列表显示支持
zmodload zsh/zprof    # 性能分析工具，帮助优化 shell 启动和命令执行速度

autoload -Uz colors  # 加载颜色支持
colors               # 启动颜色支持

setopt autocd            # 输入目录名自动 cd
setopt auto_menu         # 自动显示补全菜单
setopt auto_param_slash  # 补全目录时自动添加斜杠
setopt complete_in_word  # 在单词中间补全
setopt no_menu_complete  # 不自动选择第一个补全项

# 历史命令存储
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000                # 内存
SAVEHIST=20000                # 文件
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

bindkey '^A' beginning-of-line        # 绑定 Ctrl+A 到行首
bindkey '^E' end-of-line              # 绑定 Ctrl+E 到行尾
bindkey '^p' history-search-backward  # 绑定 Ctrl+P 向上搜索历史命令
bindkey '^n' history-search-forward   # 绑定 Ctrl+N 向下搜索历史命令

set_beam_cursor() {
  printf '\e[5 q'
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd set_beam_cursor

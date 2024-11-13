zstyle ':zim:zmodule' use 'degit'
# 禁用 30 天检查一次
zstyle ':zim' disable-version-check yes

ZIM_HOME=~/.zim
ZIM_CONFIG_FILE=~/.config/zsh/zimrc.zsh

# 安装 zimfw
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh \
      https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
fi

# 自动安装缺失插件 + 更新 Zim 初始化脚本
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  source ${ZIM_HOME}/zimfw.zsh init -q
fi

# 加载插件
source ${ZIM_HOME}/init.zsh


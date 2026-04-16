## ░▀▀█░█▀▀░█░█░█▀▄░█▀▀
## ░▄▀░░▀▀█░█▀█░█▀▄░█░░
## ░▀▀▀░▀▀▀░▀░▀░▀░▀░▀▀▀
##
## https://github.com/

ZSH_HOME="$HOME/.config/zsh"
# ZIM_CONFIG_FILE="$ZSH_HOME/zimrc"

files=(env options zimfw tools fzf alias)

source_if_exists() {
  [[ -f "$1" ]] && source "$1"
}

for file in $files; do
  source_if_exists "$ZSH_HOME/$file.zsh"
done

# 最后加载 zimfw 生成的 init
[[ -f "$ZIM_HOME/init.zsh" ]] && source "$ZIM_HOME/init.zsh"

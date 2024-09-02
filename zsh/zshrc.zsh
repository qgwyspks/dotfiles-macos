## ░▀▀█░█▀▀░█░█░█▀▄░█▀▀
## ░▄▀░░▀▀█░█▀█░█▀▄░█░░
## ░▀▀▀░▀▀▀░▀░▀░▀░▀░▀▀▀
##
## https://github.com/

ZSH_HOME="$HOME/.config/zsh"
files=(option alias env plugin fzf)

source_if_exists() {
  [[ ! -f "$1" ]] || source "$1"
}

for file in "${files[@]}"; do
  source_if_exists "${ZSH_HOME}/${file}.zsh"
done

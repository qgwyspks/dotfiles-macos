## ░▀▀█░█▀▀░█░█░█▀▄░█▀▀
## ░▄▀░░▀▀█░█▀█░█▀▄░█░░
## ░▀▀▀░▀▀▀░▀░▀░▀░▀░▀▀▀
##
## https://github.com/

ZSH_HOME="$HOME/.config/zsh"

declare -a files=(
  env
  aliases
  options
  plugins
  fzf
)

source_if_exists() {
  [[ ! -f "$1" ]] || source "$1"
}

for file in "${files[@]}"
do
  source_if_exists "${ZSH_HOME}/${file}.zsh"
done

# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
ZSH_HOME="$HOME/.config/zsh"

[[ ! -f ${ZSH_HOME}/alias.zsh ]] || source ${ZSH_HOME}/alias.zsh
[[ ! -f ${ZSH_HOME}/env.zsh ]] || source ${ZSH_HOME}/env.zsh
[[ ! -f ${ZSH_HOME}/plugins.zsh ]] || source ${ZSH_HOME}/plugins.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

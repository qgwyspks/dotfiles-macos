setopt autocd  # go to directory without using cd
setopt correct # spelling correction

autoload -Uz colors colors

fpath+=~/.zfunc
autoload -Uz compinit
compinit

eval "$(zoxide init zsh --cmd z)"

HISTFILE="$HOME/.zsh_history"
HISTSIZE=1000
SAVEHIST=2000
#HISTIGNORE=" *"  # 忽略空格开头的命令
setopt extended_history
setopt inc_append_history     # 立即写入
setopt hist_expire_dups_first # 首先删除重复记录
setopt hist_ignore_dups       # 忽略重复的命令
setopt hist_ignore_all_dups   # 如果重复，删除旧的记录
setopt hist_ignore_space      # 忽略空格开头的命令
setopt hist_verify
setopt share_history # 所有会话共享历史记录

function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

##
## Plugins
##

# zi = zinit
# 手动安装 zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# 如果你在 compinit 之后获取 zinit.zsh
# autoload -Uz _zinit
# (( ${+_comps} )) && _comps[zinit]=_zinit

# starship 主题
# line 1: 从 github release 克隆 starship 二进制文件作为 command
# line 2: 克隆时设置 starship(创建 init.zsh -> completions)
# line 3: 拉取行为与克隆相同，源 init.zsh
zi ice as"command" from"gh-r" \
          atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
          atpull"%atclone" src"init.zsh"
zi light starship/starship

# zinit light zdharma-continuum/zinit-annex-patch-dl

# 使用 fzf-tab 代替 fzf（fzf-tab 需要在 compinit 之后，在 autosuggestion 和 highlighting 之前）
# zi ice from"gh-r" as"program"
# zi light junegunn/fzf
# zi pack'binary' for fzf
zi ice wait lucid has 'fzf'
zi light Aloxaf/fzf-tab

# 语法高亮
# zi ice wait lucid atinit"zicompinit; zicdreplay"
# zi light zdharma-continuum/fast-syntax-highlighting
# 设置主题 fast-theme -t free
zi ice wait lucid
zi light zsh-users/zsh-syntax-highlighting

# 自动建议，加载插件后执行
zi ice wait lucid atload"_zsh_autosuggest_start"
zi light zsh-users/zsh-autosuggestions

# 自动补全
zi ice wait lucid blockf atpull'zinit creinstall -q .'
zi light zsh-users/zsh-completions

#zi ice atclone"gdircolors -b LS_COLORS > clrs.zsh" \
#	atpull'%atclone' pick"clrs.zsh" nocompile'!' \
#   	atload'zstyle ":completion:*" list-colors “${(s.:.)LS_COLORS}”'
#zi light trapd00r/LS_COLORS

zi snippet OMZ::lib/completion.zsh
# zi snippet OMZ::lib/history.zsh
#zi snippet OMZ::lib/key-bindings.zsh
zi snippet OMZ::plugins/sudo/sudo.plugin.zsh

# 使用 wd 快速跳转  wd add zsh
zi ice wait lucid
zi light mfaerevaag/wd

# 生成.gitignore  gi python > .gitignore
# zi ice wait='1' lucid
# zi snippet OMZP::gitignore

# zinit ice svn
# zinit snippet OMZ::plugins/extract

# Shell 历史记录
# zi load ellie/atuin

# zi ice wait"1" lucid
# zi light zdharma-continuum/history-search-multi-word

#bindkey '^R' history-search-multi-word

#zstyle :plugin:history-search-multi-word reset-prompt-protect 1

fpath=($HOME/.config/zsh/completions $fpath)
# zicompinit = autoload compinit; compinit
autoload -U compinit && compinit

zinit cdreplay -a

eval "$(zoxide init zsh --cmd z)"
# eval "$(starship init zsh)"
# eval "$(atuin init zsh)"

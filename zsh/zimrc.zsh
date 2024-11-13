#zmodule joke/zim-starship
# zmodule starship/starship --cmd 'starship init zsh > init.zsh; starship completions zsh > _starship'

zmodule Aloxaf/fzf-tab

# 语法高亮
zmodule zdharma-continuum/fast-syntax-highlighting
# zmodule z-shell/F-Sy-H
# zmodule zsh-users/zsh-syntax-highlighting
# 自动建议
zmodule zsh-users/zsh-autosuggestions --fpath src

# 许多外部命令的自动补全
zmodule zsh-users/zsh-completions
zmodule completion  # 自动补全

# 双击 esc 添加 sudo
zmodule ohmyzsh/ohmyzsh --root plugins/sudo

zmodule mfaerevaag/wd

wd() {
    . ~/.zim/modules/wd/wd.sh
}

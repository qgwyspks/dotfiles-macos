#!/bin/bash

BASEDIR=~/.config/

basedir_exists() {
    if [ ! -d "$BASEDIR" ]; then
        mkdir -p $BASEDIR
    fi
}

set_zsh() {
    if [ ! -d "$BASEDIR/zsh" ]; then
        ln -s ~/dotfiles-macos/zsh ~/.config/zsh
    fi

    if [ ! -e "~/.zshrc"]; then
        ln -s ~/dotfiles-macos/zsh/zshrc ~/.zshrc
    fi
}

set_tmux() {
    if [ ! -e "~/.tmux.conf" ]; then
        ln -s ~/dotfiles-macos/tmux/tmux.conf ~/.tmux.conf
    fi
    if [ ! -e "~/.tmux" ]; then
        git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
        tmux source ~/.tmux.conf
        # 按 prefix + I 获取插件
    fi
}

set_alacritty() {
    if [ ! -d "$BASEDIR/alacritty" ]; then
        ln -s ~/dotfiles-macos/alacritty ~/.config/alacritty
    fi
}

set_nvim() {
    if [ ! -d "$BASEDIR/nvim" ]; then
        ln -s ~/dotfiles-macos/nvim ~/.config/nvim
    fi
}

set_bottom() {
    if [ ! -d "$BASEDIR/bottom" ]; then
        ln -s ~/dotfiles-macos/bottom ~/.config/bottom
    fi
}

set_neofetch() {
    if [ ! -d "$BASEDIR/neofetch" ]; then
        ln -s ~/dotfiles-macos/neofetch ~/.config/neofetch
    fi
}

main() {
    basedir_exists
    set_zsh
    set_tmux
    set_alacritty
}

main

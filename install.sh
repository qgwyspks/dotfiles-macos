#!/bin/bash

BASEDIR=~/.config/

basedir_exists() {
    if [ ! -d "$BASEDIR" ]; then
        mkdir -p $BASEDIR
    fi
}

set_zsh() {
    if [ ! -d "$BASEDIR/zsh" ]; then
        cp -r zsh $BASEDIR/
    fi

    if [ ! -e "~/.zshrc"]; then
        cp zsh/zshrc ~/.zshrc
    fi
}

set_tmux() {
    if [ ! -e "~/.tmux.conf"]; then
        cp tmux/tmux.conf ~/.tmux.conf
    fi
}

set_alacritty() {
    if [ ! -d "$BASEDIR/alacritty" ]; then
        cp -r alacritty $BASEDIR/
    fi
}

main() {
    basedir_exists
    set_zsh
    set_tmux
    set_alacritty
}

main

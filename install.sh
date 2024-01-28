#!/bin/bash

BASEDIR=~/.config/test

if [ ! -d "$BASEDIR" ]; then
  mkdir -p $BASEDIR
fi

if [ ! -d "$BASEDIR/zsh" ]; then
    cp -r zsh $BASEDIR/
fi

if [ ! -e "~/.zshrc"]; then
    cp zsh/zshrc ~/.zshrc
fi

if [ ! -e "~/.tmux.conf"]; then
    cp tmux/tmux.conf ~/.tmux.conf
fi

if [ ! -d "$BASEDIR/alacritty" ]; then
    cp -r alacritty $BASEDIR/
fi

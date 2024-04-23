#!/usr/bin/env bash

# Install formulaes and casks using Homebrew
formulaes=(
    neovim
    bat
    lsd
    dust
    tokei
    bottom
    tree
    tmux
    fzf
    go
    rust
    lua
    node
    npm
    sqlite
    mysql
    redis
)

casks=(
    miniforge
    orbstack
    hammerspoon
    alacritty
    keka
    coteditor
    cheatsheet
    sfm
    mac-mouse-fix
    raycast
    silicon
    snipaste
    visual-studio-code
    jetbrains-toolbox
    typora
    notion
    obsidian
)

if ! command -v brew &> /dev/null; then
    echo "Homebrew not found. Please install Homebrew first."
    exit
else
    brew update && brew upgrade
fi

for formulae in ${formulaes[@]}; do
    echo "Installing $formulae..."
    brew install $formulae
done

for cask in ${caskss[@]}; do
    echo "Installing $cask..."
    brew install --cask $cask
done

#!/usr/bin/env bash

# Install tools using Homebrew
tools=(
    neovim
    bat
    exa
    tmux
    fzf
    go
    nvm
    sqlite
    mysql
    redis
)

if ! command -v brew &> /dev/null; then
    echo "Homebrew not found. Please install Homebrew first."
    exit
else
    brew update && brew upgrade
fi

for tool in ${tools[@]}; do
    echo "Installing $tool..."
    brew install $tool
done

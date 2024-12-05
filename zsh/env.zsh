##
## PATH & ENV
##

export EDITOR="nvim"
export VISUAL="nvim"

export PATH="$HOME/.local/bin:$PATH"

export PATH="$PATH:$HOME/go/bin"

# Rust
export PATH="$PATH:$HOME/.cargo/bin"

# sqlite
#export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
#export LDFLAGS="-L/opt/homebrew/opt/sqlite/lib"
#export CPPFLAGS="-I/opt/homebrew/opt/sqlite/include"
#export PKG_CONFIG_PATH="/opt/homebrew/opt/sqlite/lib/pkgconfig"

# starship
export STARSHIP_CONFIG=~/.config/zsh/starship.toml

# eval "$(/Users/wsk/miniforge3/bin/conda shell.zsh hook)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/wsk/miniforge3/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/wsk/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/wsk/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/wsk/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/Users/wsk/miniforge3/etc/profile.d/mamba.sh" ]; then
    . "/Users/wsk/miniforge3/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

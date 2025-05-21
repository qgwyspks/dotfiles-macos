##
## PATH & ENV
##

export EDITOR="nvim"
export VISUAL="nvim"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:$HOME/go/bin"

# export PATH="$PATH:$HOME/miniforge3/bin"

# Rust
# export PATH="$PATH:$HOME/.cargo/bin"

# sqlite
#export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
#export LDFLAGS="-L/opt/homebrew/opt/sqlite/lib"
#export CPPFLAGS="-I/opt/homebrew/opt/sqlite/include"
#export PKG_CONFIG_PATH="/opt/homebrew/opt/sqlite/lib/pkgconfig"

# starship
export STARSHIP_CONFIG=~/.config/zsh/starship.toml

eval "$(/Users/wsk/miniforge3/bin/conda shell.zsh hook)"
if [ -f "/Users/wsk/miniforge3/etc/profile.d/mamba.sh" ]; then
    . "/Users/wsk/miniforge3/etc/profile.d/mamba.sh"
fi

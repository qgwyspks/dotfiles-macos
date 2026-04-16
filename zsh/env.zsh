# ─────────────────────────────────────────
# 🌱 Environment & PATH
# ─────────────────────────────────────────

export EDITOR="nvim"
export VISUAL="nvim"

typeset -U path PATH

path=(
  $HOME/.local/bin
  $HOME/go/bin
  $path
)

# export PATH="$PATH:$HOME/miniforge3/bin"

# Rust
# export PATH="$(brew --prefix rustup)/bin:$PATH"
# export PATH="$PATH:$HOME/.cargo/bin"

# sqlite
#export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
#export LDFLAGS="-L/opt/homebrew/opt/sqlite/lib"
#export CPPFLAGS="-I/opt/homebrew/opt/sqlite/include"
#export PKG_CONFIG_PATH="/opt/homebrew/opt/sqlite/lib/pkgconfig"

# starship
# export STARSHIP_CONFIG=~/.config/starship.toml

#eval "$(/Users/wsk/miniforge3/bin/conda shell.zsh hook)"
#if [ -f "/Users/wsk/miniforge3/etc/profile.d/mamba.sh" ]; then
#    . "/Users/wsk/miniforge3/etc/profile.d/mamba.sh"
#fi

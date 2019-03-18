# Environment Variabel

## Path
set -x GOPATH $HOME/.go
set -x PATH $GOPATH/bin $HOME/.local/bin $PATH

## XDG
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_DATA_HOME "$HOME/.local/share"
set -x XDG_CACHE_HOME "$HOME/.cache"

## Editor
set -x EDITOR neovim

# Kitty Completion
kitty + complete setup fish | source

# Alias
alias uppack="/usr/share/ypkg/yupdate.py"
alias fetchpack="$HOME/Repository/common/Scripts/yauto.py"
alias yt-music="youtube-dl -f bestaudio[acodec=opus] -x --audio-format opus"

# Colors
source ~/.config/fish/color.fish


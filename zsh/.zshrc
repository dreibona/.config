# https://zsh.sourceforge.io/Doc/Release/index.html -> zsh doc

# brew
if [ "$(arch)" = "arm64" ]; then
   export PATH="/opt/homebrew/bin:$PATH"
else
   export PATH="/usr/local/bin:$PATH"
fi

# aliases
source $HOME/.config/settings/aliases

# zsh history
source $ZSH/history.zsh

# zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# yacreaderlibraryserver
export PATH="/Applications/YACReaderLibraryServer/Contents/MacOS:$PATH"

# vim
export VIMINIT="source $HOME/.config/vim/vimrc"

# starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml

# zellij
eval "$(zellij setup --generate-auto-start zsh)"

# fast node manager
eval "$(fnm env --use-on-cd)"

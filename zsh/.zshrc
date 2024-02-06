# https://zsh.sourceforge.io/Doc/Release/index.html -> zsh doc

# vim
export VIMINIT="source $HOME/.config/vim/vimrc"

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="refined"
plugins=(copypath zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# brew
if [ "$(arch)" = "arm64" ]; then
   export PATH="/opt/homebrew/bin:$PATH"
else
   export PATH="/usr/local/bin:$PATH"
fi

# nvm
if [ "$(arch)" = "arm64" ]; then
   export NVM_DIR="$HOME/.nvm"
   [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] &&
      . "/opt/homebrew/opt/nvm/nvm.sh"
   [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] &&
      . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
else
   export NVM_DIR="$HOME/.nvm"
   [ -s "/usr/local/opt/nvm/nvm.sh" ] &&
      . "/usr/local/opt/nvm/nvm.sh"
   [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] &&
      . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"
fi

# yacreaderlibraryserver
export PATH="/Applications/YACReaderLibraryServer/Contents/MacOS:$PATH"

# aliases
source $HOME/.config/settings/zsh_aliases

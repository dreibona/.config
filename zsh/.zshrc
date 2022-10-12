#############
# oh-my-zsh #
#############

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="refined"
plugins=(copypath zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

########
# brew #
########

if [ "$(arch)" = "arm64" ]; then
   export PATH="/opt/homebrew/bin:$PATH"
else
   export PATH="/usr/local/bin:$PATH"
fi

#######
# nvm #
#######

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] &&
   . "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] &&
   . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

###########
# aliases #
###########

source $HOME/.config/settings/alias

#######
# art #
#######

ccat -G String="blink" \
     -G Keyword="blink" \
     -G Plaintext="blink" \
     -G Punctuation="blink" \
     $HOME/.config/settings/art

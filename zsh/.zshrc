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

export PATH=/usr/local/opt/:$PATH

#######
# nvm #
#######

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && 
  \. "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && 
  \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

###########
# aliases #
###########

source $HOME/.config/profile/alias


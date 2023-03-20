#!/bin/zsh

# alias -> up
# make executable -> chmod +x $HOME/.config/scripts/upgrade.sh

bold=$(tput bold)
normal=$(tput sgr0)

echo ""
echo "${bold}omz update${normal}"
$ZSH/tools/upgrade.sh

echo ""
echo "${bold}brew list${normal}"
brew ls

echo ""
echo "${bold}brew outdated${normal}"
brew outdated -g

echo ""
echo "${bold}brew upgrade${normal}"
brew upgrade -g

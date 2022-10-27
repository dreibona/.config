#!/bin/zsh

# chmod +x $HOME/.config/scripts/update.sh

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
brew outdated

echo ""
echo "${bold}brew upgrade${normal}"
brew upgrade

echo ""
echo "${bold}brew cask outdate${normal}"
brew outdated --cask --greedy --verbose

echo ""
echo "${bold}brew cask upgrade${normal}"
brew upgrade --cask --greedy

#!/bin/zsh

# alias -> bi
# make executable -> chmod +x $XDG_CONFIG_HOME/scripts/brewinstall.sh
# uninstall cask -> brew uninstall --zap
# create brewfile -> brew bundle dump

bold=$(tput bold)
normal=$(tput sgr0)

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo ""
echo "${bold}brew version${normal}"
brew --version

echo ""
echo "${bold}brew update${normal}"
brew update

echo ""
echo "${bold}brew install${normal}"
brew bundle --verbose --no-lock

# remove cache
echo ""
echo "${bold}brew cleanup${normal}"
brew cleanup --verbose --prune=all

echo ""
echo "${bold}brew list${normal}"
brew list

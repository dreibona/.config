#!/bin/zsh

# alias -> bu
# make executable -> chmod +x $HOME/.config/scripts/brew.sh
# install -> /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# uninstall cask -> brew uninstall --zap
# create brewfile -> brew bundle dump  

bold=$(tput bold)
normal=$(tput sgr0)

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

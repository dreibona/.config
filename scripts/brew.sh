#!/bin/zsh

# chmod +x $HOME/.config/scripts/brew.sh -> make executable
# brew bundle dump -> create brewfile
# install Homebrew -> /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# brew uninstall --zap -> complete uninstall

bold=$(tput bold)
normal=$(tput sgr0)

# brew version
echo ""
echo "${bold}brew version${normal}"
brew --version

# update before install
echo ""
echo "${bold}brew update${normal}"
brew update

# install everything in the file brewfile
echo ""
echo "${bold}brew install${normal}"
brew bundle --verbose --no-lock

# remove cache
echo ""
echo "${bold}brew cleanup${normal}"
brew cleanup --verbose --prune=all

# installed apps
echo ""
echo "${bold}brew list${normal}"
brew list

#!/bin/zsh

# chmod +x $HOME/.config/homebrew/brew.sh -> make executable
# brew bundle dump -> create brewfile
# brew uninstall --zap -> complete uninstall

bold=$(tput bold)
normal=$(tput sgr0)

# check for install
if test ! "$(which brew)"; then
  echo ""
  echo "${bold}installing homebrew${normal}"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo ""
  echo "${bold}homebrew is installed${normal}"  
fi

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
brew cleanup -s

# installed apps
echo ""
echo "${bold}brew list${normal}"
brew list

#!/bin/bash

#####################################################################
# chmod +x ~/.config/homebrew/brew.sh && ~/.config/homebrew/brew.sh #
#####################################################################

########################################
# Check for install, if not install it #
########################################

if test ! "$(which brew)"; then
  echo "Installing homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

#####################
# Echo brew version #
#####################

echo ""
echo "Brew version brew"
brew --version

#########################
# Update before install #
#########################

echo ""
brew update

#########################################################################
# Run Brew bundle, which will install everything in the file "Brewfile" #
#########################################################################

brew bundle --verbose

##########################
# remove cache #
##########################

brew cleanup -s

##########################
# List of installed apps #
##########################

echo ""
echo "Brew List"
brew list

########################
# brew uninstall --zap #
########################

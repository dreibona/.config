#!/bin/zsh

# alias -> up
# make executable -> chmod +x $CONFIG/scripts/brewupgrade.sh

echo ""
brew ls

echo ""
brew outdated --greedy

echo ""
brew upgrade --greedy

echo ""
brew cleanup --prune=all -v

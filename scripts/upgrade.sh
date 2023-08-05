#!/bin/zsh

# alias -> up
# make executable -> chmod +x $HOME/.config/scripts/upgrade.sh

echo ""
$ZSH/tools/upgrade.sh

echo ""
brew ls

echo ""
brew outdated --greedy

echo ""
brew upgrade --greedy

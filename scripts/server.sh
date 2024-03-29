#!/bin/zsh

# alias -> sk
# make executable -> chmod +x $HOME/.config/scripts/server.sh 

bold=$(tput bold)
normal=$(tput sgr0)

echo ""
echo "${bold}server backup started${normal}"
sudo rsync -varE --delete-delay --progress --include='*/' \
--files-from=$HOME/.config/settings/backup $HOME /Volumes/server/backup
echo ""
echo "${bold}server backup ended${normal}"

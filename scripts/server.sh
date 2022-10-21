#!/bin/zsh

# chmod +x $HOME/.config/scripts/server.sh

bold=$(tput bold)
normal=$(tput sgr0)

echo ""
echo "${bold}backing up home to server${normal}"
sudo rsync -varE --delete-delay --progress --include='*/' \
--files-from=$HOME/.config/settings/backup $HOME /Volumes/server/backup"
echo ""

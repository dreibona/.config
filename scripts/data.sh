#!/bin/zsh

# alias -> dk
# make executable -> chmod +x $HOME/.config/scripts/data.sh

bold=$(tput bold)
normal=$(tput sgr0)

echo ""
echo "${bold}data backup started${normal}"
sudo rsync -varE --delete-delay --progress --include='*/' \
--files-from=$HOME/.config/settings/backup $HOME /Volumes/data/2023_backup
echo ""
echo "${bold}data backup ended${normal}"

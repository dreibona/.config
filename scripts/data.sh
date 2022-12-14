#!/bin/zsh

# chmod +x $HOME/.config/scripts/data.sh

bold=$(tput bold)
normal=$(tput sgr0)

echo ""
echo "${bold}backing up home to data${normal}"
sudo rsync -varE --delete-delay --progress --include='*/' \
--files-from=$HOME/.config/settings/backup $HOME /Volumes/data/2022_backup
echo ""

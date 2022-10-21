#!/bin/zsh

# chmod +x $HOME/.config/scripts/comics.sh

bold=$(tput bold)
normal=$(tput sgr0)

echo ""
echo "${bold}backing up comics to data${normal}"
sudo rsync -varE --delete-delay --progress \
/Volumes/server/comics/ /Volumes/data/comics"
echo ""

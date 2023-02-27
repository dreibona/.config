#!/bin/zsh

# alias -> ck
# make executable -> chmod +x $HOME/.config/scripts/comics.sh

bold=$(tput bold)
normal=$(tput sgr0)

echo ""
echo "${bold}backing up comics to data${normal}"
sudo rsync -varE --delete-delay --progress \
/Volumes/server/comics/ /Volumes/data/comics #| grep failed
echo ""

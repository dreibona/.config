#!/bin/zsh

# chmod +x $HOME/.config/scripts/yacreader.sh

bold=$(tput bold)
normal=$(tput sgr0)

echo ""
echo "${bold}running yacreader library server${normal}"
echo ""

if (ps aux | grep YACReaderLibrary | grep -v grep > /dev/null); then
	killAll YACReaderLibrary && yacreaderlibraryserver start
elif (ps aux | grep yacreaderlibraryserver | grep -v grep > /dev/null); then
	killAll yacreaderlibraryserver && open -a YACReaderLibrary
else
	yacreaderlibraryserver start
fi

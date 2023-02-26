#!/bin/zsh

# alias -> yr
# make executable -> chmod +x $HOME/.config/scripts/yacreader.sh

bold=$(tput bold)
normal=$(tput sgr0)

if (ps aux | grep YACReaderLibrary | grep -v grep > /dev/null); then
	echo ""
	echo "${bold}running yacreader library server${normal}"
	echo ""
	killAll YACReaderLibrary && yacreaderlibraryserver start
elif (ps aux | grep yacreaderlibraryserver | grep -v grep > /dev/null); then
	echo ""
	echo "${bold}running yacreader library${normal}"
	killAll yacreaderlibraryserver && open -a YACReaderLibrary
else
	yacreaderlibraryserver start
fi

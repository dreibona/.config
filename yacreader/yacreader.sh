#!/bin/zsh

if (ps aux | grep YACReaderLibrary | grep -v grep > /dev/null); then
	killAll YACReaderLibrary && yacreaderlibraryserver start
elif (ps aux | grep yacreaderlibraryserver | grep -v grep > /dev/null); then
	killAll yacreaderlibraryserver && open -a YACReaderLibrary
else
	yacreaderlibraryserver start
fi

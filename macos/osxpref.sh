#!/bin/bash

# chmod +x ~/.config/macos/osxpref.sh && ~/.config/macos/osxpref.sh

# show all processes in activity monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# automatically illuminate built-in macbook keyboard in low light
defaults write com.apple.BezelServices kDim -bool true

# turn off keyboard illumination when computer is not used for 5 minutes
defaults write com.apple.BezelServices kDimTime -int 300

# save to disk (not to icloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# enable subpixel font rendering on non-apple lcds
defaults write NSGlobalDomain AppleFontSmoothing -int 2

# always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# use natural scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# enable quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# use list view in all finder windows by default
# four-letter codes for the other view modes: icnv, clmv, Flwv
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# show all files
defaults write com.apple.finder AppleShowAllFiles NO

# empty trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool false

# disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# show status bar
defaults write com.apple.finder ShowStatusBar -bool false

# show path bar
defaults write com.apple.finder ShowPathbar -bool true

# allow selection of text in quicklook windows
defaults write com.apple.finder QLEnableTextSelection -bool true

# make dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# show indicator lights for open applications in the dock
defaults write com.apple.dock show-process-indicators -bool true

# remove the auto-hiding dock delay
defaults write com.apple.Dock autohide-delay -float 0

# automatically hide and show the dock
defaults write com.apple.dock autohide -bool true

# disable expose animation
defaults write com.apple.dock expose-animation-duration -float 0

# require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# only use utf-8 in terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# avoid creating .ds_store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# set bluetooth headset higher bitrate
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# enable tap to click (trackpad), also for login menu
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# kill affected applications
for app in Safari Finder Dock Mail SystemUIServer; do killall "$app" >/dev/null 2>&1; done
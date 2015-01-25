#!/usr/bin/env bash

SCRIPT_PATH=$( cd $(dirname $0) ; pwd -P )
source ${SCRIPT_PATH%/*/*}/include.sh

e_header "Finder"

e_rocket "Disable spotlight on cmd-space"
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 64 "{ enabled = 0; value = { parameters = ( 32, 49, 1048576); type = standard; }; }"

e_rocket "Disable sptlight window shortcut"
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 65 "{ enabled = 0; value = { parameters = ( 32, 49, 1048576); type = standard; }; }"

e_rocket "Remove Spotlight Icon from Menu Bar"
sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search
# sudo chmod 755 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search

e_rocket "Alfred Defaults"
defaults write com.runningwithcrayons.Alfred-Preferences appearance.theme -string "alfred.theme.lightlarge"
defaults write com.runningwithcrayons.Alfred-Preferences hotkey.default -dict-add key 49
defaults write com.runningwithcrayons.Alfred-Preferences hotkey.default -dict-add mod 1048576
defaults write com.runningwithcrayons.Alfred-Preferences hotkey.default -dict-add string "Space"

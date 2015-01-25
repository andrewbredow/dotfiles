#!/usr/bin/env bash

SCRIPT_PATH=$( cd $(dirname $0) ; pwd -P )
source ${SCRIPT_PATH%/*/*}/include.sh

e_header "IO"

e_rocket "Disabling press-and-hold for keys" # in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

e_rocket "Setting keyboard repeat rate" # really fast
defaults write NSGlobalDomain KeyRepeat -int 0.01

e_rocket "Enabling automatic illumination for built-in MacBook keyboard"
defaults write com.apple.BezelServices kDim -bool true

e_rocket "Setting 5 minute timeout for keyboard illumination"
defaults write com.apple.BezelServices kDimTime -int 300

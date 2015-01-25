#!/usr/bin/env bash

SCRIPT_PATH=$( cd $(dirname $0) ; pwd -P )
source ${SCRIPT_PATH%/*/*}/include.sh

e_header "Safari"

e_rocket "Show full URL"
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

e_rocket "Preventing opening of 'safe' files automatically after downloading"
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

e_rocekt "Remove downloaded files from internet warnings"
defaults write com.apple.LaunchServices LSQuarantine -bool false

e_rocket "Enabling debug menu"
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

e_rocket "Enabling Develop menu and Web Inspector"
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

e_rocket "Adding context menu item for Web Inspector in web views"
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true


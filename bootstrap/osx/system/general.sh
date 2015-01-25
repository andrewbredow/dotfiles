#!/usr/bin/env bash

SCRIPT_PATH=$( cd $(dirname $0) ; pwd -P )
source ${SCRIPT_PATH%/*/*}/include.sh

e_header "General"

e_rocket "Setting computer name"
sudo scutil --set ComputerName "rivendell"
sudo scutil --set HostName "rivendell"
sudo scutil --set LocalHostName "rivendell"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "rivendell"

e_rocket "Disabling Guest account"
sudo defaults write /Library/Preferences/com.apple.AppleFileServer guestAccess -bool FALSE
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server AllowGuestAccess -bool FALSE
sudo defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -bool FALSE
sudo defaults write /Library/Preferences/com.apple.loginwindow Hide500Users -bool TRUE
sudo defaults write /Library/Preferences/com.apple.loginwindow SHOWOTHERUSERS_MANAGED -bool FALSE

e_rocket "Setting standby delay to 24 hours"
sudo pmset -a standbydelay 86400

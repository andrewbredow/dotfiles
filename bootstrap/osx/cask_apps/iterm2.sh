#!/usr/bin/env bash

SCRIPT_PATH=$( cd $(dirname $0) ; pwd -P )
source ${SCRIPT_PATH%/*/*}/include.sh

###############################################################################
e_header "iTerm 2"
###############################################################################

# Open the app so the preference files get initialized
open -g "$HOME/Applications/iTerm.app" && sleep 2 && osascript -e 'quit app "iTerm"'

e_rocket "Disabling prompt when quitting iTerm"
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

e_rocket "Setting default fonts to Source Code Pro 18"
/usr/libexec/PlistBuddy -c "Set :\"New Bookmarks\":0:\"Non Ascii Font\" SourceCodePro-Regular 14" ~/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c "Set :\"New Bookmarks\":0:\"Normal Font\" SourceCodePro-Regular 14" ~/Library/Preferences/com.googlecode.iterm2.plist

# e_rocket "Disabling bright bold fonts"
# /usr/libexec/PlistBuddy -c "Set :\"New Bookmarks\":0:\"Use Bright Bold\" false" ~/Library/Preferences/com.googlecode.iterm2.plist

e_rocket "Disable pinch to zoom font size"
defaults write com.googlecode.iterm2 PinchToChangeFontSizeDisabled -bool true

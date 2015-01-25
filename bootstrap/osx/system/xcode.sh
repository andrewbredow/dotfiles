#!/usr/bin/env bash

SCRIPT_PATH=$( cd $(dirname $0) ; pwd -P )
source ${SCRIPT_PATH%/*/*}/include.sh

e_header "Xcode"

e_rocket "Trim trailing whitespace"
defaults write com.apple.dt.Xcode DVTTextEditorTrimTrailingWhitespace -bool true

e_rocket "Don't show completion on escape"
defaults write com.apple.dt.Xcode DVTTextShowCompletionsOnEsc -bool false

e_rocket "Show line numbers"
defaults write com.apple.dt.Xcode DVTTextShowLineNumbers -bool true

e_rocket "Hide code folding ribbon"
defaults write com.apple.dt.Xcode DVTTextShowFoldingSidebar -bool false

e_rocket "Continue building after errors"
defaults write com.apple.dt.Xcode IDEBuildingContinueBuildingAfterErrors -bool true

# Trim whitespace only lines
# defaults write com.apple.dt.Xcode DVTTextEditorTrimWhitespaceOnlyLines -bool true

# Show ruler at 80 chars
# defaults write com.apple.dt.Xcode DVTTextShowPageGuide -bool true
# defaults write com.apple.dt.Xcode DVTTextPageGuideLocation -int 80

# Max number of lines
# defaults write com.apple.dt.Xcode IDEIssueNavigatorDetailLevel -int 10
# defaults write com.apple.dt.Xcode IDESearchNavigatorDetailLevel -int 10

# Enable internal debug menu
# defaults write com.apple.dt.Xcode ShowDVTDebugMenu -bool true

# Source control local revision side
# defaults write com.apple.dt.Xcode DVTComparisonOrientationDefaultsKey -int 0

# Stack assitant editors vertically
# defaults write com.apple.dt.Xcode AssistantEditorsLayout -int 1

# Use open quickly to open in the focused pane
# defaults write com.apple.dt.Xcode IDEEditorCoordinatorTarget_Click -string FocusedEditor

# Disable source control
# defaults write com.apple.dt.Xcode IDESourceControlEnableSourceControl_5_0 -bool false
# defaults write com.apple.dt.Xcode IDESourceControlEnableSourceControl_5_1 -bool false


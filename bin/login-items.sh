#!/usr/bin/env bash

login_items=(
  "Alfred 3.app"
  "Bartender.app"
  "KeepingYouAwake.app"
  "Divvy.app"
  "Dropbox.app"
  "Sip.app"
)

for item in "${login_items[@]}"; do
  osascript -e "tell application \"System Events\" to make login item at end with properties {path:\"/Applications/$item\", hidden:false}"
done

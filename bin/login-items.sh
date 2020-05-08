#!/usr/bin/env bash

login_items=(
  "Alfred 4.app"
  "Bartender 3.app"
  "KeepingYouAwake.app"
  "Divvy.app"
  "Dropbox.app"
  "Sip.app"
  "Gifox.app"
  "Haptic Touch Bar.app"
  "Karibiner-Elements.app"
  "Keybase.app"
  "Muzzle.app"
  "PopClip.app"
  "Rocket.app"
)

for item in "${login_items[@]}"; do
  osascript -e "tell application \"System Events\" to make login item at end with properties {path:\"/Applications/$item\", hidden:false}"
done

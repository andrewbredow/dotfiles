#!/usr/bin/env bash

SCRIPT_PATH=$( cd $(dirname $0) ; pwd -P )
source ${SCRIPT_PATH%/*/*}/include.sh

e_header "Login Items"

login_items=("Alfred 2", "Bartender", "BitTorrent Sync", "Caffeine" \
             "Divvy", "Dropbox", "Flux", "Sip" )

e_rocket "Adding Login Items"
for item in "${login_items[@]}"; do
  osascript -e "tell application \"System Events\" to make login item at end with properties {path:\"$item\", hidden:false}"
done


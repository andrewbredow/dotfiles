#!/usr/bin/env bash

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
SCRIPT_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source ${SCRIPT_PATH%/*}/include.sh

e_header "Setting up Homebrew Casks"
brew tap phinze/homebrew-cask 2>/dev/null
brew install brew-cask 2>/dev/null

install_cask heroku-toolbelt
install_cask adium
install_cask 1password
install_cask airfoil
install_cask alfred
install_cask arq
install_cask bartender
install_cask bittorrent-sync
install_cask caffeine
install_cask calibre
install_cask cloak
install_cask dash
install_cask diffmerge
install_cask divvy
install_cask dropbox
install_cask firefox
install_cask flux
install_cask rowanj-gitx
install_cask google-chrome
install_cask iterm2
install_cask licecap
install_cask jumpcut
install_cask livereload
install_cask macpass
install_cask nvalt
install_cask rdio
install_cask sequel-pro
install_cask screenhero
install_cask slack
install_cask superduper
install_cask the-unarchiver
install_cask things
install_cask virtualbox
install_cask vlc
install_cask xquartz
install_cask wireshark

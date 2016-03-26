#!/usr/bin/env bash

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
SCRIPT_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source ${SCRIPT_PATH%/*}/include.sh

e_header "Setting up Homebrew Casks"
brew tap caskroom/cask 2>/dev/null
brew install brew-cask 2>/dev/null

install_cask heroku-toolbelt
install_cask 1password
install_cask alfred
install_cask arq
install_cask bartender
install_cask caffeine
install_cask calibre
install_cask diffmerge
install_cask divvy
install_cask dropbox
install_cask firefox
install_cask rowanj-gitx
install_cask google-chrome
install_cask iterm2
install_cask licecap
install_cask jumpcut
install_cask livereload
install_cask nvalt
install_cask sequel-pro
install_cask slack
install_cask superduper
install_cask the-unarchiver
install_cask things
install_cask xquartz
install_cask wireshark

# Save IFS
_IFS=$IFS
IFS=$(echo -en "\n\b")

e_header "Moving casks to /Applications"
for f in `find "/opt/homebrew-cask/Caskroom" -name '*.app' -maxdepth 3`; do
  rm -rf "/Applications/$( basename $f)"
  e_rocket "$f \033[1;33m➜\033[0m /Applications/$( basename $f)"
  mv -f "$f" /Applications
done

# Restore IFS
IFS=$_IFS

#!/usr/bin/env bash

SCRIPT_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source ${SCRIPT_PATH%/*}/include.sh

e_header "Setting up Homebrew Fonts"
brew tap caskroom/fonts

e_rocket "Installing Source Code Pro"
brew cask install font-source-code-pro


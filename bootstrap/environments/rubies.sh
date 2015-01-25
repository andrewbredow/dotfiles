#!/usr/bin/env bash

SCRIPT_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source ${SCRIPT_PATH%/*}/include.sh

read -p "Install ruby 2.2.0? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  e_rocket "Installing ruby"
  mkdir -p /Users/$USER/.rubies
  ruby-build 2.2.0 /Users/$USER/.rubies/2.2.0
fi

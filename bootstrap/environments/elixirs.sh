#!/usr/bin/env bash

SCRIPT_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source ${SCRIPT_PATH%/*}/include.sh

read -p "Install current version of Elixir?" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  e_rocket "Installing Elixir"

  source $HOME/.asdf/asdf.sh
  asdf plugin-add elixir https://github.com/HashNuke/asdf-elixir.git

  asdf install elixir 1.0.5
fi


#!/usr/bin/env bash

SCRIPT_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source ${SCRIPT_PATH%/*}/include.sh

read -p "Install current version of Erlang?" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  e_rocket "Installing Erlang"

  source $HOME/.asdf/asdf.sh
  asdf plugin-add erlang https://github.com/HashNuke/asdf-erlang.git

  ERLANG_CONFIGURE_OPTIONS = "--enable-darwin-64bit --with-ssl=/usr/local/opt/openssl"
  # ERLANG_EXTRA_CONFIGURE_OPTIONS

  asdf install erlang 18.0
fi

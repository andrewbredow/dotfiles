#!/usr/bin/env bash

SCRIPT_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source ${SCRIPT_PATH%/*}/include.sh

read -p "Install Erlang 17.4?" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  e_rocket "Installing/updating kerl"
  sudo mkdir -p /opt/bin

  sudo wget https://raw.githubusercontent.com/spawngrid/kerl/master/kerl -N -P /opt/bin
  sudo chmod a+x /opt/bin/kerl

  e_rocket "Installing Erlang 17.4"
  KERL_CONFIGURE_OPTIONS="--enable-darwin-64bit --with-ssl=/usr/local/opt/openssl" kerl build 17.4 17.4

  mkdir -p /Users/$USER/.kerl/installs
  kerl install 17.4 /Users/$USER/.kerl/installs/17.4
fi

echo

read -p "Install Elixir 1.0.2?" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  e_rocket "Installing Elixir"
  HOME=/Users/$USER
  curl -sSL https://raw.githubusercontent.com/taylor/kiex/master/install | bash -s
  . /Users/$USER/.kerl/installs/17.4/activate
  source /Users/$USER/.kiex/scripts/kiex
  kiex install 1.0.2
  kiex default 1.0.2
fi


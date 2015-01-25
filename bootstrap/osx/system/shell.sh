#!/usr/bin/env bash

SCRIPT_PATH=$( cd $(dirname $0) ; pwd -P )
source ${SCRIPT_PATH%/*/*}/include.sh

e_rocket "Setting shell to ZSH"
if [[ ! `cat /etc/shells | grep \/usr\/local\/bin\/zsh` ]]; then
  e_rocket "Adding /usr/local/bin/zsh to /etc/shells"
  sudo echo /usr/local/bin/zsh | sudo tee -a /etc/shells
fi
chsh -s /usr/local/bin/zsh

#!/bin/bash

set -e

function main {
  run_as_sudo

  install_brew
  # install_asdf
  install_iterm
  install_macos
  install_login_items
  install_zsh
}

function install_asdf {
  header "asdf"

  if [ -e "$HOME/.asdf" ]; then
    run "updating asdf" "cd $HOME/.asdf && git pull"
  else
    run "installing asdf" "git clone https://github.com/HashNuke/asdf.git $HOME/.asdf"
  fi
  source $HOME/.asdf/asdf.sh

  asdf_plugin_add "elixir" "https://github.com/asdf-vm/asdf-elixir.git"
  asdf_plugin_add "erlang" "https://github.com/asdf-vm/asdf-erlang.git"
  asdf_plugin_add "ruby"   "https://github.com/asdf-vm/asdf-ruby.git"

  run "asdf plugin-update: all" "asdf plugin-update --all"
  run "asdf install: all" "asdf install"
}

function asdf_plugin_add {
  if !(asdf plugin-list | grep -q "$1" 2>/dev/null); then
    run "asdf plugin-add: $1" "asdf plugin-add $1 $2"
  else
    run "asdf plugin-add: $1"
  fi
}

function install_brew {
  header "brew"

  if ! type brew > /dev/null 2>&1; then
    run "brew install" 'echo | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
  else
    noop "brew install"
  fi

  run "brew bundle" "brew bundle --file=$HOME/.brewfile"
}

function install_zsh {
  header "zsh"

  if ! (cat /etc/shells | grep -q "zsh" 2>/dev/null); then
    run "zsh configure" 'echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells'
  else
    noop "zsh configure"
  fi

  if ! [[ $SHELL =~ /zsh/ ]]; then
    run "zsh default shell" "sudo chsh -s /usr/local/bin/zsh"
  else
    noop "zsh default shell"
  fi
}

function install_iterm {
  header "iTerm"

  run "iterm configure preferences" "defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string ~/.config/iterm2"
  run "iterm load preferences" "defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true"
}

function install_macos {
  header "macOS"

  run "configure macOS" "sh ./.macos"
}

function install_login_items {
  header 'Login Items'


  login_items=("Alfred 3.app" "Bartender.app" "KeepingYouAwake.app" "Divvy.app" "Dropbox.app" "Sip.app")

  for item in "${login_items[@]}"; do
    message "Adding $item to login items"
    osascript -e "tell application \"System Events\" to make login item at end with properties {path:\"/Applications/$item\", hidden:false}"
  done
}

function with_logging {
  printf "$@" | tee -a install.out
}

function header {
  with_logging "\n\n%s\n%s\n\n" "$1" "________________________________________"
}

function message {
  with_logging "%-100s" "$1"
}

function noop {
  message "$1"
  success
}

function failure {
  with_logging '\e[1;31m%s\e[m\n' "✖"
}

function success {
  with_logging '\e[1;32m%s\e[m\n' "✔"
}

function cmd {
  local command=$1

  eval "$command" >> install.out 2>&1
}

function run {
  local message=$1
  local command=$2

  message "$message"
  cmd "$command"

  if [ $? != 0 ]; then
    failure
  else
    success
  fi
}

function run_as_sudo {
  sudo -v

  while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
}

main

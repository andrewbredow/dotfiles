#!/usr/bin/env bash

SCRIPT_PATH=$( cd $(dirname $0) ; pwd -P )
source $SCRIPT_PATH/bootstrap/include.sh

echo
echo "Bootstrapping..."
echo
e_arrow "Xcode or Command Line Tools for Xcode must be installed before proceeding!"
echo

PS3=$'\nPick your poison: '
options=("Bootstrap all the things" "Dotfiles" "Homebrew" \
         "Homebrew Formulas" "Homebrew Casks" "Homebrew Fonts" "OS X Defaults" \
         "Ruby" "Elixir" "Remote Pair" "Quit")

select opt in "${options[@]}"; do
  case $opt in
    "Bootstrap all the things")
      install_homebrew
      install_formulas
      install_casks
      install_fonts
      install_dotfiles
      install_defaults
      create_pair_user
      install_rubies
      install_elixirs
      ;;
    "Dotfiles")
      e_header "$opt"
      install_dotfiles
      ;;
    "Homebrew")
      e_header "$opt"
      install_homebrew
      ;;
    "Homebrew Formulas")
      e_header "$opt"
      install_formulas
      ;;
    "Homebrew Casks")
      e_header "$opt"
      install_casks
      ;;
    "Homebrew Fonts")
      e_header "$opt"
      install_fonts
      ;;
    "OS X Defaults")
      e_header "$opt"
      install_defaults
      ;;
    "Ruby")
      e_header "$opt"
      install_rubies
      ;;
    "Elixir")
      e_header "$opt"
      install_elixirs
      ;;
    "Remote Pair")
      e_header "$opt"
      setup_remote_pair
      ;;
    "Quit")
      echo
      e_success "All done. You must restart for these changes to take effect."
      break;;
    *) echo invalid option;;
  esac
done

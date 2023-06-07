#!/bin/bash

if [[ "$1" == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('Gnome terminal profile load');"
fi

if ! cat /etc/alternatives/x-terminal-emulator | grep exec | grep -q gnome; then
  echo "You don't have gnome-terminal."
  exit
fi

get_user_input() {
  local input_text=$1
  local input_variable=$2
  read -p "$input_text" $input_variable
  [ "$1" == "tilux" ] && catch_empty $input_variable
}

# You should know the ID when restoring profile
get_user_input "What is the ID (only include :...)? " id_prof
get_user_input "Filename? " f
dconf load /org/gnome/terminal/legacy/profiles:/$id_prof/ < $f

#!/bin/bash

if [[ "$1" == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('Gnome terminal profile dump');"
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

read -p "Do you know the ID? (Y/n) " id
id="$(echo ${id} | tr 'A-Z' 'a-z')"

case "$id" in
  "y" | "yes")
    get_user_input "What is the ID (only include :00000...)? " id_prof
    get_user_input "Filename? " f
    dconf dump /org/gnome/terminal/legacy/profiles:/$id_prof/ > $f
  ;;
  *)
    dconf dump /org/gnome/terminal/legacy/profiles:/
    echo -e "\n\nThe ID is in the format of [:...]."
    echo "Copy the ID without []."
  ;;
esac

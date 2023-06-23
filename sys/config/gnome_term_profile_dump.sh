#!/bin/bash

if [[ "$1" == "tilux" ]]; then
  source $CATCH_SCRIPT_PATH
  python3 -c "from tools.logos import Logo; Logo('Gnome terminal profile dump');"
fi

if ! cat /etc/alternatives/x-terminal-emulator | grep exec | grep -q gnome; then
  echo "You don't have gnome-terminal."
  exit
fi

get_user_input() {
  local input_text="$1"
  local input_variable="$2"
  read -p "$input_text" "$input_variable"
  if [[ "$script_argument" == "tilux" ]]; then
    catch_empty "${!input_variable}"
  fi
}

script_argument=$1

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

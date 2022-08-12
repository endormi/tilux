#!/bin/bash

if [[ "$1" == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('Gnome terminal profile dump');"
fi

check=$(cat /etc/alternatives/x-terminal-emulator | grep exec | grep gnome)
[ $check == 0 ] && echo "You don't have gnome-terminal." && exit

read -p "Do you know the ID? (Y/n) " id
id="$(echo ${id} | tr 'A-Z' 'a-z')"
case "$id" in
  "y" | "yes")
    read -p "What is the ID (only include :00000...)? " id_prof
    [ "$1" == "tilux" ] && catch_empty $id_prof
    read -p "Filename? " f
    [ "$1" == "tilux" ] && catch_empty $f
    dconf dump /org/gnome/terminal/legacy/profiles:/$id_prof/ > $f
  ;;
  *)
    dconf dump /org/gnome/terminal/legacy/profiles:/
    echo -e "\n\nThe ID is in the format of [:...]."
    echo "Copy the ID without []."
  ;;
esac

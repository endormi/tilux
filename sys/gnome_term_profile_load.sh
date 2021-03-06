#!/bin/bash

if [[ $1 == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('Gnome terminal profile load');"
fi

check=$(cat /etc/alternatives/x-terminal-emulator | grep exec | grep gnome)
[ $check == 0 ] && echo "You don't have gnome-terminal." && exit

# You should know the ID when restoring profile
read -p "What is the ID (only include :00000...)? " id_prof
if [[ $1 == "tilux" ]]; then catch_empty $id_prof; fi
read -p "Filename? " f
if [[ $1 == "tilux" ]]; then catch_empty $f; fi
dconf load /org/gnome/terminal/legacy/profiles:/$id_prof/ < $f

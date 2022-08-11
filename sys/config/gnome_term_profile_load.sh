#!/bin/bash

[ "$1" == "tilux" ] && python3 -c "from tools.logos import Logo; Logo('Gnome terminal profile load');"

check=$(cat /etc/alternatives/x-terminal-emulator | grep exec | grep gnome)
[ $check == 0 ] && echo "You don't have gnome-terminal." && exit

# You should know the ID when restoring profile
read -p "What is the ID (only include :00000...)? " id_prof
[ "$1" == "tilux" ] && catch_empty $id_prof
read -p "Filename? " f
[ "$1" == "tilux" ] && catch_empty $f
dconf load /org/gnome/terminal/legacy/profiles:/$id_prof/ < $f

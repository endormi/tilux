#!/bin/bash

python3 -c "from tools.logos import Logo; Logo('Resize terminal');"

# Works only with gnome terminal and xterm for now
cmd_gnome=$(cat /etc/alternatives/x-terminal-emulator | grep exec | grep gnome)
cmd_xterm=$(cat /etc/alternatives/x-terminal-emulator | grep exec | grep xterm)

read -p "What size (follow the format 85x25)? " size

[ $cmd_gnome != 0 ] && echo -e "\nResizing terminal.. (this will open a new terminal)" && sleep .5 && gnome-terminal --geometry $size && echo -e "Done!\n" && exit
[ $cmd_xterm != 0 ] && echo -e "\nResizing terminal.. (this will open a new terminal)" && sleep .5 && xterm -geometry $size && echo -e "Done!\n" && exit

echo "Terminal not recognized."

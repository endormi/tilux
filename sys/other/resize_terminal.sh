#!/bin/bash

if [[ "$1" == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('Resize terminal');"
fi

resize_terminal() {
  terminal_cmd=$1
  geometry=$2
  echo -e "\nResizing terminal.. (this will open a new terminal)"
  sleep 0.5
  $terminal_cmd $geometry $size
  echo -e "Done!\n"
  exit
}

echo "NOTE: Works only with gnome terminal and xterm for now"

read -p "What size (follow the format 85x25)? " size
[ "$1" == "tilux" ] && catch_empty $size

if cat /etc/alternatives/x-terminal-emulator | grep exec | grep -q gnome; then
  resize_terminal gnome-terminal --geometry
elif cat /etc/alternatives/x-terminal-emulator | grep exec | grep -q xterm; then
  resize_terminal xterm -geometry
fi

echo "Terminal not recognized."

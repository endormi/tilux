#!/bin/bash

if [[ -z "$(which glxinfo)" ]]; then
  echo "Installing mesa-utils which is required to run this script."
  sudo apt update
  sudo apt install mesa-utils
  clear
fi

[ "$1" == "tilux" ] && python3 -c "from tools.logos import Logo; Logo('GPU name');"

sleep .5
glxinfo | grep 'Device'

#!/bin/bash

if [[ -z "$(which ccrypt)" ]]; then
  echo "Installing ccrypt which is required to run this script."
  sudo apt update
  sudo apt install ccrypt
  clear
fi

[ $1 == "tilux" ] && python3 -c "from tools.logos import Logo; Logo('CCRYPT Encryption');"

read -p "What file do you want to encrypt? " f
[ $1 == "tilux" ] && catch_empty $f
ccencrypt $f

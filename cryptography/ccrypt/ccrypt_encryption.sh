#!/bin/bash

if ! command -v ccrypt &>/dev/null; then
  echo "Installing ccrypt which is required to run this script."
  sudo apt update
  sudo apt install ccrypt
  clear
fi

if [[ "$1" == "tilux" ]]; then
  source $CATCH_SCRIPT_PATH
  python3 -c "from tools.logos import Logo; Logo('CCRYPT Encryption');"
fi

read -p "What file do you want to encrypt? " f
[ "$1" == "tilux" ] && catch_empty $f
ccencrypt $f

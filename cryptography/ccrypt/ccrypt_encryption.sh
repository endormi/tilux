#!/bin/bash

if [[ -z "$(which ccrypt)" ]]; then
  echo "Installing ccrypt which is required to run this script."
  sudo apt update
  sudo apt install ccrypt
  clear
fi

if [[ $1 == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('CCRYPT Encryption');"
fi


read -p "What file do you want to encrypt? " f
if [[ $1 == "tilux" ]]; then catch_empty $f; fi
ccencrypt $f

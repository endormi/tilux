#!/bin/bash

if [[ -z "$(which unzip)" ]]; then
  echo "Installing unzip which is required to run this script."
  sudo apt update
  sudo apt install unzip
  clear
fi

[ "$1" == "tilux" ] && python3 -c "from tools.logos import Logo; Logo('Zip Decryption');"

sleep 1

read -p "What is the name of the .zip file? " zf
[ "$1" == "tilux" ] && catch_empty $zf
unzip $zf

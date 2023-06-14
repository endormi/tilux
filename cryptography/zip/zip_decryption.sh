#!/bin/bash

if ! command -v unzip &>/dev/null; then
  echo "Installing unzip which is required to run this script."
  sudo apt update
  sudo apt install unzip
  clear
fi

if [[ "$1" == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('Zip Decryption');"
fi

sleep 1

read -p "What is the name of the .zip file? " zf
[ "$1" == "tilux" ] && catch_empty $zf
unzip $zf

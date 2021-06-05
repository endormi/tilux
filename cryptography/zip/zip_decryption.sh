#!/bin/bash

if [[ $1 == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('Zip Decryption');"
fi
sleep 1

if [[ "$(which unzip)" == "" ]]; then
  sudo apt upgrade
  sudo apt install unzip
fi

read -p "What is the name of the .zip file? " zf
if [[ $1 == "tilux" ]]; then catch_empty $zf; fi
unzip $zf

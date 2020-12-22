#!/bin/bash

python3 -c "from tools.logos import Logo; Logo('Zip Encryption');"
sleep 1

if [[ "$(which zip)" == "" ]]; then
  sudo apt-get upgrade
  sudo apt install zip
fi

echo -e "Warning! The standard ZIP encryption is very weak.\n"
read -p "What file(s) do you want to encrypt? " f
read -p "What is the name for the .zip file? " zf

zip --encrypt -r $zf $f

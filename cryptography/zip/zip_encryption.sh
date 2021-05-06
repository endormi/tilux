#!/bin/bash

if [[ $1 == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('Zip Encryption');"
fi
sleep 1

if [[ "$(which zip)" == "" ]]; then
  sudo apt-get upgrade
  sudo apt install zip
fi

echo -e "Warning! The standard ZIP encryption is very weak.\n"
read -p "What file(s) do you want to encrypt? " f
if [[ $1 == "tilux" ]]; then catch_empty $f; fi
read -p "What is the name for the .zip file? " zf
if [[ $1 == "tilux" ]]; then catch_empty $zf; fi

zip --encrypt -r $zf $f

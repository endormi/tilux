#!/bin/bash

if [[ -z "$(which zip)" ]]; then
  echo "Installing zip which is required to run this script."
  sudo apt update
  sudo apt install zip
  clear
fi

if [[ $1 == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('Zip Encryption');"
fi
sleep 1


echo -e "Warning! The standard ZIP encryption is very weak.\n"
read -p "What file(s) do you want to encrypt? " f
if [[ $1 == "tilux" ]]; then catch_empty $f; fi
read -p "What is the name for the .zip file? " zf
if [[ $1 == "tilux" ]]; then catch_empty $zf; fi

zip --encrypt -r $zf $f

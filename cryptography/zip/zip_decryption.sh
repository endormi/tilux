#!/bin/bash

python -c "from logos import Logo; Logo('Zip Decryption');"
sleep 1

if [[ "$(which unzip)" == "" ]]; then
  sudo apt-get upgrade
  sudo apt install unzip
fi

read -p "What is the name of the .zip file? " zf
unzip $zf

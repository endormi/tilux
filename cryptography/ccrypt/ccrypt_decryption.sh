#!/bin/bash

python3 -c "from tools.logos import Logo; Logo('CCRYPT Decryption');"
read -p "What file do you want to decrypt? " f

if [[ $f == "" ]]; then
  echo "Choice can't be empty!"
  exit;
fi

ccdecrypt $f

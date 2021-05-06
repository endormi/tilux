#!/bin/bash

if [[ $1 == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('CCRYPT Decryption');"
fi

read -p "What file do you want to decrypt? " f
if [[ $1 == "tilux" ]]; then catch_empty $f; fi
ccdecrypt $f

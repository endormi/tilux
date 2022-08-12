#!/bin/bash

#
# Still a WIP code
#

if [[ "$1" == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('GPG Decryption');"
fi

sleep 1

read -p "What is the filename you want to decrypt? " filename
[ "$1" == "tilux" ] && catch_empty $filename
read -p "Add the filename including the extension: " f
[ "$1" == "tilux" ] && catch_empty $f
gpg --decrypt $filename > $f
less $f

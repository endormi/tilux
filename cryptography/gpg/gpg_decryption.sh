#!/bin/bash

#
# Still a WIP code
#

if [[ $1 == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('GPG Decryption');"
fi
sleep 1

read -p "What is the filename you want to decrypt? " filename
if [[ $1 == "tilux" ]]; then catch_empty $filename; fi
read -p "Add the filename including the extension: " f
if [[ $1 == "tilux" ]]; then catch_empty $f; fi
gpg --decrypt $filename > $f
less $f

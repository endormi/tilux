#!/bin/bash

#
# Still a WIP code
#

[ $1 == "tilux" ] && python3 -c "from tools.logos import Logo; Logo('GPG Decryption');"

sleep 1

read -p "What is the filename you want to decrypt? " filename
[ $1 == "tilux" ] && catch_empty $filename
read -p "Add the filename including the extension: " f
[ $1 == "tilux" ] && catch_empty $f
gpg --decrypt $filename > $f
less $f

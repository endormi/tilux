#!/bin/bash

#
# Still a WIP code
#

python -c "from logos import Logo; Logo('GPG Decryption');"
sleep 1

read -p "What is the filename you want to decrypt? " filename
read -p "Add the filename including the extension: " f
gpg --decrypt $filename > $f
less $f

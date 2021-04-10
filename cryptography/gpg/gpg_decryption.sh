#!/bin/bash

#
# Still a WIP code
#

source ./tools/catch
python3 -c "from tools.logos import Logo; Logo('GPG Decryption');"
sleep 1

read -p "What is the filename you want to decrypt? " filename
catch_empty $filename
read -p "Add the filename including the extension: " f
catch_empty $f
gpg --decrypt $filename > $f
less $f

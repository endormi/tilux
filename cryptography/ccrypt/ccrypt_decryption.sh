#!/bin/bash

[ $1 == "tilux" ] && python3 -c "from tools.logos import Logo; Logo('CCRYPT Decryption');"

read -p "What file do you want to decrypt? " f
[ $1 == "tilux" ] && catch_empty $f
ccdecrypt $f

#!/bin/bash

source ./tools/catch
python3 -c "from tools.logos import Logo; Logo('CCRYPT Decryption');"

read -p "What file do you want to decrypt? " f
catch_empty $f
ccdecrypt $f

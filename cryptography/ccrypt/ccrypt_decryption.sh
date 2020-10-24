#!/bin/bash

#
# Still a WIP code
#

python3 -c "from logos import Logo; Logo('CCRYPT Decryption');"
read -p "What file do you want to decrypt? " f
ccdecrypt $f

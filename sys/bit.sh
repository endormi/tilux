#!/bin/bash

if [[ $1 == "tilux" ]]; then python3 -c "from tools.logos import Logo; Logo('Bit');"; fi

sleep .5
[ `uname -m | grep 'x86_64'` != 0 ] && echo 'System: 64-bit' || echo 'System: 32-bit'

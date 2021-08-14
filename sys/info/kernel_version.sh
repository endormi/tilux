#!/bin/bash

if [[ $1 == "tilux" ]]; then python3 -c "from tools.logos import Logo; Logo('Kernel version');"; fi

sleep .5
echo "Kernel version: `uname -srm`"

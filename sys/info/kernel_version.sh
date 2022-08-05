#!/bin/bash

[ $1 == "tilux" ] && python3 -c "from tools.logos import Logo; Logo('Kernel version');"

sleep .5
echo "Kernel version: `uname -srm`"

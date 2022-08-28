#!/bin/bash

[ "$1" == "tilux" ] && python3 -c "from tools.logos import Logo; Logo('Kernel and Distro');"

sleep .5
echo "Kernel version: `uname -srm`"
sleep .5
lsb_release -d
sleep .5
lsb_release -c

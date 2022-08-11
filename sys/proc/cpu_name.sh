#!/bin/bash

[ "$1" == "tilux" ] && python3 -c "from tools.logos import Logo; Logo('CPU name');"

sleep .5
cat /proc/cpuinfo | grep 'model name' | uniq

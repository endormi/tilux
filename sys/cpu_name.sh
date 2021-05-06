#!/bin/bash

if [[ $1 == "tilux" ]]; then python3 -c "from tools.logos import Logo; Logo('CPU name');"; fi

sleep .5
cat /proc/cpuinfo | grep 'model name' | uniq

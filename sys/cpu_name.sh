#!/bin/bash

python3 -c "from tools.logos import Logo; Logo('CPU Name');"

sleep .5
cat /proc/cpuinfo | grep 'model name' | uniq

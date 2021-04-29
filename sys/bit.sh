#!/bin/bash

python3 -c "from tools.logos import Logo; Logo('Bit');"

sleep .5
if [ `uname -m | grep 'x86_64'` != 0 ]; then
  echo 'System: 64-bit';
else
  echo 'System: 32-bit'; fi

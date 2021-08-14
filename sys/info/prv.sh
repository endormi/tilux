#!/bin/bash

if [[ $1 == "tilux" ]]; then python3 -c "from tools.logos import Logo; Logo('PRV');"; fi

sleep .5
echo "Python3 version: `python3 -V`"
sleep .5
echo "Ruby version: `ruby -v`"

#!/bin/bash

python3 -c "from tools.logos import Logo; Logo('PRV');"

sleep .5
echo "Python3 version: `python3 -V`"
sleep .5
echo "Ruby version: `ruby -v`"

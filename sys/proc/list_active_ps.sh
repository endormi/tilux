#!/bin/bash

[ "$1" == "tilux" ] && python3 -c "from tools.logos import Logo; Logo('Active processes');"

sleep .5
ps -A -ww | grep -v 0:00

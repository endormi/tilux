#!/bin/bash

[ $1 == "tilux" ] && python3 -c "from tools.logos import Logo; Logo('Force poweroff');"

sleep 1
sudo poweroff --force

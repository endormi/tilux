#!/bin/bash

if [[ $1 == "tilux" ]]; then python3 -c "from tools.logos import Logo; Logo('Force poweroff');"; fi

sleep 1
sudo poweroff --force

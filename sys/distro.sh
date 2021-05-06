#!/bin/bash

if [[ $1 == "tilux" ]]; then python3 -c "from tools.logos import Logo; Logo('Distro');"; fi

sleep .5
lsb_release -d
sleep .5
lsb_release -c

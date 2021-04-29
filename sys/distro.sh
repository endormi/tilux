#!/bin/bash

python3 -c "from tools.logos import Logo; Logo('Distro');"

sleep .5
lsb_release -d
sleep .5
lsb_release -c

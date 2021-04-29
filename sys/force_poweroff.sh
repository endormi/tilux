#!/bin/bash

python3 -c "from tools.logos import Logo; Logo('Force Poweroff');"

sleep 1
sudo poweroff --force

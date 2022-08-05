#!/bin/bash

[ $1 == "tilux" ] && python3 -c "from tools.logos import Logo; Logo('Force reboot');"

sleep 1
sudo reboot --force

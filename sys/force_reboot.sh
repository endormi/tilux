#!/bin/bash

python3 -c "from tools.logos import Logo; Logo('Force Reboot');"

sleep 1
sudo reboot --force

#!/bin/bash

python -c "from logos import Logo; Logo('Host');"
sleep 1

echo Hostname: $(hostname -s)
sleep .5
echo $(lsb_release -d)
sleep .5
echo Kernel version: $(uname -srm)
sleep .5
echo DNS domain: $(hostname -d)
sleep .5
echo Local IP address: $(hostname -i)
#!/bin/bash

python -c "from logos import Logo; Logo('Host');"
sleep 1

if [[ "$(which lsb_release)" == "" ]]; then
  sudo apt-get upgrade
  sudo apt-get install lsb_release
fi

echo Hostname: $(hostname -s)
sleep .5
echo $(lsb_release -d)
sleep .5
echo Kernel version: $(uname -srm)
sleep .5
echo DNS domain: $(hostname -d)
sleep .5
echo Local IP address: $(hostname -i)

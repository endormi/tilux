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
addr=$(dig +short myip.opendns.com @resolver1.opendns.com)
echo Your IP: ${addr}

<<comment
  If you wish to use third-party websites to get your IP

  curl ifconfig.me
  curl checkip.amazonaws.com
  etc.

  There are a ton of other websites

comment

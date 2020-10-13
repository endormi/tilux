#!/bin/bash

python -c "from logos import Logo; Logo('IP Address');"
sleep 1

addr=$(dig +short myip.opendns.com @resolver1.opendns.com)
echo Your IP: ${addr}

<<comment
  If you wish to use third-party websites to get your IP

  curl ifconfig.me
  curl checkip.amazonaws.com
  etc.

  There are a ton of other websites

comment

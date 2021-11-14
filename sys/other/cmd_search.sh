#!/bin/bash

if [[ $1 == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('CMD Search');"
fi


read -p "Search: " search
compgen -caX "!*$search*"

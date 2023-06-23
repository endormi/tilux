#!/bin/bash

if [[ "$1" == "tilux" ]]; then
  source $CATCH_SCRIPT_PATH
  python3 -c "from tools.logos import Logo; Logo('CMD Search');"
fi

read -p "Search: " search
[ "$1" == "tilux" ] && catch_empty $search

compgen -caX "!*$search*"

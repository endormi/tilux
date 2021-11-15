#!/bin/bash

if [[ $1 == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('CMD Search');"
fi

read -p "Search: " search
if [[ $1 == "tilux" ]]; then catch_empty $search; fi

compgen -caX "!*$search*"

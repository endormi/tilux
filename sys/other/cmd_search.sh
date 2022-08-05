#!/bin/bash

[ $1 == "tilux" ] && python3 -c "from tools.logos import Logo; Logo('CMD Search');"

read -p "Search: " search
[ $1 == "tilux" ] && catch_empty $search

compgen -caX "!*$search*"

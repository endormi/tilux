#!/bin/bash

[ "$1" == "tilux" ] && python3 -c "from tools.logos import Logo; Logo('Last updated');"

sleep .5
file=$(ls -tp | grep -v /$ | head -1)
echo "Last updated file: $file"
date=$(date -r $file "+%d/%m/%Y %H:%M")
echo "Updated at: $date"

#!/bin/bash

python3 -c "from tools.logos import Logo; Logo('Last updated');"

sleep .5
file=$(ls -tp | grep -v /$ | head -1)
echo "Last updated file: $file"

#!/bin/bash

python3 -c "from logos import Logo; Logo('Last updated');"
file=$(ls -tp | grep -v /$ | head -1)
echo "Last updated file: $file"

#!/bin/bash

if [[ $1 == "tilux" ]]; then python3 -c "from tools.logos import Logo; Logo('Remove line');"; fi

read -p "Remove line (matching the pattern): " pattern
read -p "Filename (to remove the line from): " filename

echo "$(grep -v "$pattern" $filename)" > $filename

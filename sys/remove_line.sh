#!/bin/bash

if [[ $1 == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('Remove line');"
fi

read -p "Remove line (matching the pattern): " pattern
if [[ $1 == "tilux" ]]; then catch_empty $pattern; fi

read -p "Filename (to remove the line from): " filename
if [[ $1 == "tilux" ]]; then catch_empty $filename; fi

echo "$(grep -v "$pattern" $filename)" > $filename

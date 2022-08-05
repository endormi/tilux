#!/bin/bash

[ $1 == "tilux" ] && python3 -c "from tools.logos import Logo; Logo('Remove line');"

read -p "Remove line (matching the pattern): " pattern
[ $1 == "tilux" ] && catch_empty $pattern

read -p "Filename (to remove the line from): " filename
[ $1 == "tilux" ] && catch_empty $filename

[ ! -f $filename ] && echo "$filename doesn't exist." && exit

echo "$(grep -v "$pattern" $filename)" > $filename

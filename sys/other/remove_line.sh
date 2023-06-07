#!/bin/bash

if [[ "$1" == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('Remove line');"
fi

get_user_input() {
  local input_text=$1
  local input_variable=$2
  read -p "$input_text" $input_variable
  [ "$1" == "tilux" ] && catch_empty $input_variable
}

get_user_input "Remove line (matching the pattern): " pattern
get_user_input "Filename (to remove the line from): " filename

[ ! -f $filename ] && echo "$filename doesn't exist." && exit

echo "$(grep -v "$pattern" $filename)" > $filename

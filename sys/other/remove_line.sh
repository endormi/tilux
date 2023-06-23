#!/bin/bash

if [[ "$1" == "tilux" ]]; then
  source $CATCH_SCRIPT_PATH
  python3 -c "from tools.logos import Logo; Logo('Remove line');"
fi

get_user_input() {
  local input_text="$1"
  local input_variable="$2"
  read -p "$input_text" "$input_variable"
  if [[ "$script_argument" == "tilux" ]]; then
    catch_empty "${!input_variable}"
  fi
}

script_argument=$1
get_user_input "Remove line (matching the pattern): " pattern
get_user_input "Filename (to remove the line from): " filename

[ ! -f $filename ] && echo "$filename doesn't exist." && exit

echo "$(grep -v "$pattern" $filename)" > $filename

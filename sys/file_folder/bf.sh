#!/bin/bash

if [[ "$1" == "tilux" ]]; then
  source $CATCH_SCRIPT_PATH
  python3 -c "from tools.logos import Logo; Logo('BF');"
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

bu=`date +%d-%m-%y`
get_user_input "Type in the folder you want to backup: " src
get_user_input "Type in the filename (you want to save it as): " f

tar -cpzf $f-$bu.tar.gz $src

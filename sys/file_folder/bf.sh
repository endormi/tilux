#!/bin/bash

if [[ "$1" == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('BF');"
fi

get_user_input() {
  local input_text=$1
  local input_variable=$2
  read -p "$input_text" $input_variable
  [ "$1" == "tilux" ] && catch_empty $input_variable
}

bu=`date +%d-%m-%y`
get_user_input "Type in the folder you want to backup: " src
get_user_input "Type in the filename (you want to save it as): " f

tar -cpzf $f-$bu.tar.gz $src

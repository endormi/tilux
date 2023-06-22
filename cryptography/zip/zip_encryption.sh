#!/bin/bash

if ! command -v zip &>/dev/null; then
  echo "Installing zip which is required to run this script."
  sudo apt update
  sudo apt install zip
  clear
fi

if [[ "$1" == "tilux" ]]; then
  source $CATCH_SCRIPT_PATH
  python3 -c "from tools.logos import Logo; Logo('Zip Encryption');"
fi

sleep 1

get_user_input() {
  local input_text=$1
  local input_variable=$2
  read -p "$input_text" $input_variable
  [ "$1" == "tilux" ] && catch_empty $input_variable
}

echo -e "Warning! The standard ZIP encryption is very weak.\n"
get_user_input "What file(s) do you want to encrypt? " f
get_user_input "What is the name for the .zip file? " zf

zip --encrypt -r $zf $f

#!/bin/bash

if [[ "$1" == "tilux" ]]; then
  source $CATCH_SCRIPT_PATH
  python3 -c "from tools.logos import Logo; Logo('Git Config');"
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

get_user_input "Name: " name
get_user_input "Email: " email
read -p "Do you want to set it globally? (Y/n) " c
c="$(echo ${c} | tr 'A-Z' 'a-z')"

case "$c" in
  "y" | "yes")
    echo "Setting git configs globally..."
    git config --global user.name $name
    git config --global user.email $email
    sleep 1
    echo "Done!"
  ;;
  *)
    echo "Setting git configs locally..."
    git config user.name $name
    git config user.email $email
    sleep 1
    echo "Done!"
  ;;
esac

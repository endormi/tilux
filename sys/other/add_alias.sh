#!/bin/bash

if [[ "$1" == "tilux" ]]; then
  source $CATCH_SCRIPT_PATH
  python3 -c "from tools.logos import Logo; Logo('Add alias');"
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

bash_aliases_file=~/.bash_aliases

[ ! -f $bash_aliases_file ] && touch $bash_aliases_file

. $bash_aliases_file

get_user_input "Alias: " alias

if alias $alias &>/dev/null; then
  echo "Alias $alias already exists!"
  exit
fi

get_user_input "Command: " cmd

echo -e "alias $alias='$cmd'" >> $bash_aliases_file
echo "Added ${alias} to .bash_aliases"

echo -e "\nChanges have been made to ${bash_aliases_file}."
echo -e "It's recommended to start a new shell session to get the changes immediately.\n"
read -p "Do you want to start a new shell session? (y/N) " response

response="$(echo "$response" | tr 'A-Z' 'a-z')"

if [[ "$response" == "y" || "$response" == "yes" ]]; then
  exec $BASH
else
  exit
fi

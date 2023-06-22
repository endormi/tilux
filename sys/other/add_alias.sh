#!/bin/bash

if [[ "$1" == "tilux" ]]; then
  source $CATCH_SCRIPT_PATH
  python3 -c "from tools.logos import Logo; Logo('Add alias');"
fi

get_user_input() {
  local input_text=$1
  local input_variable=$2
  read -p "$input_text" $input_variable
  [ "$1" == "tilux" ] && catch_empty $input_variable
}

[ ! -f ~/.bash_aliases ] && touch ~/.bash_aliases

. ~/.bash_aliases

get_user_input "Alias: " alias

if alias $alias &>/dev/null; then
  echo "Alias $alias already exists!"
  exit
fi

get_user_input "Command: " cmd

echo -e "alias $alias='$cmd'" >> ~/.bash_aliases
echo "Added ${alias} to .bash_aliases"
exec "$BASH"

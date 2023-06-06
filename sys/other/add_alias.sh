#!/bin/bash

if [[ "$1" == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('Add alias');"
fi

[ ! -f ~/.bash_aliases ] && touch ~/.bash_aliases

. ~/.bash_aliases

read -p "Alias: " alias
[ "$1" == "tilux" ] && catch_empty $alias

if alias $alias &>/dev/null; then
  echo "Alias $alias already exists!"
  exit
fi

read -p "Command: " cmd
[ "$1" == "tilux" ] && catch_empty $cmd

echo -e "alias $alias='$cmd'" >> ~/.bash_aliases
echo "Added ${alias} to .bash_aliases"
exec "$BASH"

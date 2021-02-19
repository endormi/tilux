#!/bin/bash

python3 -c "from tools.logos import Logo; Logo('Add alias');"

[ ! -f ~/.bash_aliases ] && touch ~/.bash_aliases

. ~/.bash_aliases

read -p "Alias: " alias

if [[ $alias == "" ]]; then
  echo "Alias can't be empty!"
  exit;
fi

if [ `alias | grep "$alias" | wc -l` != 0 ]; then echo "Alias $alias already exists"; exit; fi

read -p "Command: " cmd

if [[ $cmd == "" ]]; then
  echo "Command can't be empty!"
  exit;
fi

# >> to append
echo -e "alias $alias='$cmd'" >> ~/.bash_aliases
echo "Added ${alias} to .bash_aliases"
exec "$BASH"

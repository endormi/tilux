#!/bin/bash

python3 -c "from tools.logos import Logo; Logo('Add alias');"

[ ! -f ~/.bash_aliases ] && touch ~/.bash_aliases

. ~/.bash_aliases

read -p "Alias: " alias

if [ `alias | grep "$alias" | wc -l` != 0 ]; then echo "Alias $alias already exists"; exit; fi

read -p "Command: " cmd

# >> to append
echo -e "$alias='$cmd'" >> ~/.bash_aliases
echo "Added ${alias} to .bash_aliases"
exec "$BASH"

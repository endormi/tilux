#!/bin/bash

if [[ $1 == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('Add alias');"
fi

[ ! -f ~/.bash_aliases ] && touch ~/.bash_aliases

. ~/.bash_aliases

read -p "Alias: " alias
if [[ $1 == "tilux" ]]; then catch_empty $alias; fi

[ `alias | grep "$alias" | wc -l` != 0 ] && echo "Alias $alias already exists" && exit

read -p "Command: " cmd
if [[ $1 == "tilux" ]]; then catch_empty $cmd; fi

echo -e "alias $alias='$cmd'" >> ~/.bash_aliases
echo "Added ${alias} to .bash_aliases"
exec "$BASH"

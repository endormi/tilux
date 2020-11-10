#!/bin/bash

python3 -c "from logos import Logo; Logo('Clean');"


if [[ "$EUID" -eq 0 ]]; then
  # WIP
  #log=/var/log
  #cd $log
  #for i in $(find $log -type f); do cat /dev/null > $i; done
  echo "This part of the code is WIP\n"
else
  #echo "Unable to truncate logs."
  echo -e "You are not root.\n"
fi

trash=~/.local/share/Trash/*
choices="1 or all"
echo "choices: $choices (1 means going through files one by one and all means, well you know..) "
read -p "Type in your choice: " choice
choice="$(echo ${choice} | tr 'A-Z' 'a-z')"

case "$choice" in
  "1" | "-1")
    rm -rf -i $trash
    ;;
  "all" | "-a" | "a")
    rm -rf $trash
    echo Emptying the entire trash
    sleep 1
    echo Done!
    ;;
  *)
  echo "Invalid choice!"
  echo Use $choices
  exit
  ;;
esac

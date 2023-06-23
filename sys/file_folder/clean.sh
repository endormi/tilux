#!/bin/bash

if [[ "$1" == "tilux" ]]; then
  source $CATCH_SCRIPT_PATH
  python3 -c "from tools.logos import Logo; Logo('Clean');"
fi

echo "Truncate logs:"

if [[ "$EUID" -eq 0 ]]; then
  log=/var/log
  cd $log
  echo Truncating logs..
  sleep 1
  for i in $(find $log -type f); do cat /dev/null > $i; done
  echo Done!
else
  echo "Unable to truncate logs."
  echo -e "You are not root.\n\n"
fi

trash=~/.local/share/Trash/*
echo "Empty the trash:"
choices="1 or all"
echo "choices: $choices (1 means going through files one by one and all means, well you know..) "
read -p "Type in your choice: " choice
[ "$1" == "tilux" ] && catch_empty $choice
choice="$(echo ${choice} | tr 'A-Z' 'a-z')"

case "$choice" in
  "1")
    rm -rf -i $trash
    ;;
  "2" | "all" | "-a" | "--a" | "a")
    echo Emptying the trash..
    sleep 1
    rm -rf $trash
    echo Done!
    ;;
  *)
  echo "Invalid choice!"
  echo Use $choices
  exit
  ;;
esac

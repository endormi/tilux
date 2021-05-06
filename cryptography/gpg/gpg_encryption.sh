#!/bin/bash

#
# Still a WIP code
#

if [[ $1 == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('GPG Encryption');"
fi

read -p "What is your name? " your_name
if [[ $1 == "tilux" ]]; then catch_empty $your_name; fi
read -p "What is the filename? " file
if [[ $1 == "tilux" ]]; then catch_empty $file; fi

cmd="1 basic encryption, 2 send file"
echo -e "\nChoices: $cmd"
read -p "Type in the number of the script you want to use: " input_process
if [[ $1 == "tilux" ]]; then catch_empty $input_process; fi
echo

case "$input_process" in
  "1")
    gpg -e -r "$your_name" $file
    less $file.gpg
    ;;
  "2")
    cmd="1 GPG extension, 2 ASCII extension"
    echo -e "\nChoices: $cmd"
    read -p "Type in the number of the script you want to use: " process

    case "$process" in
      "1")
        read -p "What is your key? " your_key
        gpg --export -a "$your_name" > $your_key
        read -p "What is the recipients email? " rec
        gpg -e -u "$your_name" -r "$rec" $file
        less $file.gpg
        ;;
      "2")
        read -p "What is the recipients email? " email_addr
        gpg --encrypt --sign --armor -r $email_addr $file
        less $file.asc
        ;;
      *)
      echo Not a valid choice!
      echo Use $cmd
      exit
      ;;
    esac
    ;;
  *)
  echo Not a valid choice!
  echo Use $cmd
  exit
  ;;
esac

#!/bin/bash

#
# Still a WIP code
#

python -c "from logos import Logo; Logo('Openssl Decryption');"

read -p "What file do you want to decrypt? " f
read -p "What is the filename you wish to have after decryption? " fl

echo "
Encryption choices:
1: (aes-128-cbc)
2: (aes-256-cbc)
3: (aria-128-cfb1)
4: (aria-128-ofb)
5: (aria-192-cfb8)
"

read -p "Type in the number of the encryption you want to use: " input_process
echo

case "$input_process" in
  "1")
    openssl enc -aes-128-cbc -d -in $f > $fl
    ;;
  "2")
    openssl enc -aes-256-cbc -d -in $f > $fl
    ;;
  "3")
    openssl enc -aria-128-cfb1 -d -in $f > $fl
    ;;
  "4")
    openssl enc -aria-128-ofb -d -in $f > $fl
    ;;
  "5")
    openssl enc -aria-192-cfb8 -d -in $f > $fl
    ;;
  *)
  echo Not a valid choice!
  echo Use $cmd
  exit
  ;;
esac

#!/bin/bash

#
# Still a WIP code
# Just added 5 for now
# I will add the rest later
#

python -c "from logos import Logo; Logo('Openssl Encryption');"

if [[ "$(which openssl)" == "" ]]; then
  sudo apt-get upgrade
  sudo apt-get install openssl
else
  echo "You have $(openssl version)"
fi


read -p "What file do you want to encrypt? " f
<<comment
aes-128-cbc       aes-128-ecb       aes-192-cbc       aes-192-ecb
aes-256-cbc       aes-256-ecb       aria-128-cbc      aria-128-cfb
aria-128-cfb1     aria-128-cfb8     aria-128-ctr      aria-128-ecb
aria-128-ofb      aria-192-cbc      aria-192-cfb      aria-192-cfb1
aria-192-cfb8     aria-192-ctr      aria-192-ecb      aria-192-ofb
aria-256-cbc      aria-256-cfb      aria-256-cfb1     aria-256-cfb8
aria-256-ctr      aria-256-ecb      aria-256-ofb      base64
bf                bf-cbc            bf-cfb            bf-ecb
bf-ofb            camellia-128-cbc  camellia-128-ecb  camellia-192-cbc
camellia-192-ecb  camellia-256-cbc  camellia-256-ecb  cast
cast-cbc          cast5-cbc         cast5-cfb         cast5-ecb
cast5-ofb         des               des-cbc           des-cfb
des-ecb           des-ede           des-ede-cbc       des-ede-cfb
des-ede-ofb       des-ede3          des-ede3-cbc      des-ede3-cfb
des-ede3-ofb      des-ofb           des3              desx
rc2               rc2-40-cbc        rc2-64-cbc        rc2-cbc
rc2-cfb           rc2-ecb           rc2-ofb           rc4
rc4-40            seed              seed-cbc          seed-cfb
seed-ecb          seed-ofb          sm4-cbc           sm4-cfb
sm4-ctr           sm4-ecb           sm4-ofb
comment
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
    openssl enc -aes-128-cbc -in $f -out $f.dat
    ;;
  "2")
    openssl enc -aes-256-cbc -in $f -out $f.dat
    ;;
  "3")
    openssl enc -aria-128-cfb1 -in $f -out $f.dat
    ;;
  "4")
    openssl enc -aria-128-ofb -in $f -out $f.dat
    ;;
  "5")
    openssl enc -aria-192-cfb8 -in $f -out $f.dat
    ;;
  *)
  echo Not a valid choice!
  echo Use $cmd
  exit
  ;;
esac

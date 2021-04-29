#!/bin/bash

source ./tools/catch
python3 -c "from tools.logos import Logo; Logo('Openssl Decryption');"
sleep 1

read -p "What file do you want to decrypt? " f
catch_empty $f
read -p "What is the filename you wish to have after decryption? " fl
catch_empty $fl

# TODO:
# Display choices better visually
echo "
Decryption choices:
aes-128-cbc   aes-256-cbc  aria-128-cfb   aria-128-ofb   aria-192-cfb8
aria-256-cbc   aria-256-ctr   bf  bf-ofb  camellia-192-ecb   cast-cbc
cast5-ofb   des-ecb   des-ede-ofb   des-ede3-ofb   rc2   rc2-cfb  rc4-40
seed-ecb   sm4-ctr  aes-128-ecb   aes-256-ecb   aria-128-cfb8   aria-192-cbc
aria-192-ctr   aria-256-cfb   aria-256-ecb   bf-cbc   camellia-128-cbc
camellia-256-cbc   cast5-cbc   des   des-ede   des-ede3   des-ofb   rc2-40-cbc
rc2-ecb   seed   seed-ofb   sm4-ecb   aes-192-cbc   aria-128-cbc   aria-128-ctr
aria-192-cfb   aria-192-ecb   aria-256-cfb1   aria-256-ofb   bf-cfb
camellia-128-ecb   camellia-256-ecb   cast5-cfb   des-cbc   des-ede-cbc
des-ede3-cbc   des3   rc2-64-cbc   rc2-ofb   seed-cbc   59: (sm4-cbc   sm4-ofb
aes-192-ecb   aria-128-cfb   aria-128-ecb   aria-192-cfb1   aria-192-ofb)
aria-256-cfb8   base64   bf-ecb   camellia-192-cbc   cast   cast5-ecb   des-cfb
des-ede-cfb   des-ede3-cfb   desx  rc2-cbc   rc4   seed-cfb  sm4-cfb
"

read -p "What decryption method do you want to use? " decr_method
catch_empty $decr_method
echo

openssl enc $decr_method -d -in $f > $fl

#!/bin/bash

python -c "from logos import Logo; Logo('Openssl Encryption');"
sleep 1

if [[ "$(which openssl)" == "" ]]; then
  sudo apt-get upgrade
  sudo apt-get install openssl
else
  echo "You have $(openssl version)"
fi


read -p "What file do you want to encrypt? " f
read -p "What is the file extension you want to use? (e.g. .dat) " fe
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
1: (aes-128-cbc)   2: (aes-256-cbc)   3: (aria-128-cfb1)
4: (aria-128-ofb)   5: (aria-192-cfb8) 6: (aria-256-cbc)
7: (aria-256-ctr)   8: (bf)   9: (bf-ofb)
10: (camellia-192-ecb)   11: (cast-cbc)   12: (cast5-ofb)
13: (des-ecb)   14: (des-ede-ofb)   15: (des-ede3-ofb)
16: (rc2)   17: (rc2-cfb)   18: (rc4-40)   19: (seed-ecb)
20: (sm4-ctr)   21: (aes-128-ecb)   22: (aes-256-ecb)
23: (aria-128-cfb8)   24: (aria-192-cbc)   25: (aria-192-ctr)
26: (aria-256-cfb)   27: (aria-256-ecb)   28: (bf-cbc)
29: (camellia-128-cbc)   30: (camellia-256-cbc)   31: (cast5-cbc)
32: (des)   33: (des-ede)   34: (des-ede3)   35: (des-ofb)
36: (rc2-40-cbc)   37: (rc2-ecb)   38: (seed)   39: (seed-ofb)
40: (sm4-ecb)   41: (aes-192-cbc)   42: (aria-128-cbc)
43: (aria-128-ctr)   44: (aria-192-cfb)   45: (aria-192-ecb)
46: (aria-256-cfb1)   47: (aria-256-ofb)   48: (bf-cfb)
49: (camellia-128-ecb)   50: (camellia-256-ecb)   51: (cast5-cfb)
52: (des-cbc)   53: (des-ede-cbc)   54: (des-ede3-cbc)
55: (des3)   56: (rc2-64-cbc)   57: (rc2-ofb)
58: (seed-cbc)   59: (sm4-cbc)   60: (sm4-ofb)
61: (aes-192-ecb)   62: (aria-128-cfb)   63: (aria-128-ecb)
64: (aria-192-cfb1)   65: (aria-192-ofb)   66: (aria-256-cfb8)
67: (base64)   68: (bf-ecb)   69: (camellia-192-cbc)
70: (cast)   71: (cast5-ecb)   72: (des-cfb)
73: (des-ede-cfb)   74: (des-ede3-cfb)   75: (desx)
76: (rc2-cbc)   77: (rc4)   78: (seed-cfb)
79: (sm4-cfb)
"

read -p "Type in the number of the encryption you want to use: " input_process
echo

case "$input_process" in
  "1")
    openssl enc -aes-128-cbc -in $f -out $f$fe
    ;;
  "2")
    openssl enc -aes-256-cbc -in $f -out $f$fe
    ;;
  "3")
    openssl enc -aria-128-cfb1 -in $f -out $f$fe
    ;;
  "4")
    openssl enc -aria-128-ofb -in $f -out $f$fe
    ;;
  "5")
    openssl enc -aria-192-cfb8 -in $f -out $f$fe
    ;;
  "6")
    openssl enc -aria-256-cbc -in $f -out $f$fe
    ;;
  "7")
    openssl enc -aria-256-ctr -in $f -out $f$fe
    ;;
  "8")
    openssl enc -bf -in $f -out $f$fe
    ;;
  "9")
    openssl enc -bf-ofb -in $f -out $f$fe
    ;;
  "10")
    openssl enc -camellia-192-ecb -in $f -out $f$fe
    ;;
  "11")
    openssl enc -cast-cbc -in $f -out $f$fe
    ;;
  "12")
    openssl enc -cast5-ofb -in $f -out $f$fe
    ;;
  "13")
    openssl enc -des-ecb -in $f -out $f$fe
    ;;
  "14")
    openssl enc -des-ede-ofb -in $f -out $f$fe
    ;;
  "15")
    openssl enc -des-ede3-ofb -in $f -out $f$fe
    ;;
  "16")
    openssl enc -rc2 -in $f -out $f$fe
    ;;
  "17")
    openssl enc -rc2-cfb -in $f -out $f$fe
    ;;
  "18")
    openssl enc -rc4-40 -in $f -out $f$fe
    ;;
  "19")
    openssl enc -seed-ecb -in $f -out $f$fe
    ;;
  "20")
    openssl enc -sm4-ctr -in $f -out $f$fe
    ;;
  "21")
    openssl enc -aes-128-ecb -in $f -out $f$fe
    ;;
  "22")
    openssl enc -aes-256-ecb -in $f -out $f$fe
    ;;
  "23")
    openssl enc -aria-128-cfb8 -in $f -out $f$fe
    ;;
  "24")
    openssl enc -aria-192-cbc -in $f -out $f$fe
    ;;
  "25")
    openssl enc -aria-192-ctr -in $f -out $f$fe
    ;;
  "26")
    openssl enc -aria-256-cfb -in $f -out $f$fe
    ;;
  "27")
    openssl enc -aria-256-ecb -in $f -out $f$fe
    ;;
  "28")
    openssl enc -bf-cbc -in $f -out $f$fe
    ;;
  "29")
    openssl enc -camellia-128-cbc -in $f -out $f$fe
    ;;
  "30")
    openssl enc -camellia-256-cbc -in $f -out $f$fe
    ;;
  "31")
    openssl enc -cast5-cbc -in $f -out $f$fe
    ;;
  "32")
    openssl enc -des -in $f -out $f$fe
    ;;
  "33")
    openssl enc -des-ede -in $f -out $f$fe
    ;;
  "34")
    openssl enc -des-ede3 -in $f -out $f$fe
    ;;
  "35")
    openssl enc -des-ofb -in $f -out $f$fe
    ;;
  "36")
    openssl enc -rc2-40-cbc -in $f -out $f$fe
    ;;
  "37")
    openssl enc -rc2-ecb -in $f -out $f$fe
    ;;
  "38")
    openssl enc -seed -in $f -out $f$fe
    ;;
  "39")
    openssl enc -seed-ofb -in $f -out $f$fe
    ;;
  "40")
    openssl enc -sm4-ecb -in $f -out $f$fe
    ;;
  "41")
    openssl enc -aes-192-cbc -in $f -out $f$fe
    ;;
  "42")
    openssl enc -aria-128-cbc -in $f -out $f$fe
    ;;
  "43")
    openssl enc -aria-128-ctr -in $f -out $f$fe
    ;;
  "44")
    openssl enc -aria-192-cfb -in $f -out $f$fe
    ;;
  "45")
    openssl enc -aria-192-ecb -in $f -out $f$fe
    ;;
  "46")
    openssl enc -aria-256-cfb1 -in $f -out $f$fe
    ;;
  "47")
    openssl enc -aria-256-ofb -in $f -out $f$fe
    ;;
  "48")
    openssl enc -bf-cfb -in $f -out $f$fe
    ;;
  "49")
    openssl enc -camellia-128-ecb -in $f -out $f$fe
    ;;
  "50")
    openssl enc -camellia-256-ecb -in $f -out $f$fe
    ;;
  "51")
    openssl enc -cast5-cfb -in $f -out $f$fe
    ;;
  "52")
    openssl enc -des-cbc -in $f -out $f$fe
    ;;
  "53")
    openssl enc -des-ede-cbc -in $f -out $f$fe
    ;;
  "54")
    openssl enc -des-ede3-cbc -in $f -out $f$fe
    ;;
  "55")
    openssl enc -des3 -in $f -out $f$fe
    ;;
  "56")
    openssl enc -rc2-64-cbc -in $f -out $f$fe
    ;;
  "57")
    openssl enc -rc2-ofb -in $f -out $f$fe
    ;;
  "58")
    openssl enc -seed-cbc -in $f -out $f$fe
    ;;
  "59")
    openssl enc -sm4-cbc -in $f -out $f$fe
    ;;
  "60")
    openssl enc -sm4-ofb -in $f -out $f$fe
    ;;
  "61")
    openssl enc -aes-192-ecb -in $f -out $f$fe
    ;;
  "62")
    openssl enc -aria-128-cfb -in $f -out $f$fe
    ;;
  "63")
    openssl enc -aria-128-ecb -in $f -out $f$fe
    ;;
  "64")
    openssl enc -aria-192-cfb1 -in $f -out $f$fe
    ;;
  "65")
    openssl enc -aria-192-ofb -in $f -out $f$fe
    ;;
  "66")
    openssl enc -aria-256-cfb8 -in $f -out $f$fe
    ;;
  "67")
    openssl enc -base64 -in $f -out $f$fe
    ;;
  "68")
    openssl enc -bf-ecb -in $f -out $f$fe
    ;;
  "69")
    openssl enc -camellia-192-cbc -in $f -out $f$fe
    ;;
  "70")
    openssl enc -cast -in $f -out $f$fe
    ;;
  "71")
    openssl enc -cast5-ecb -in $f -out $f$fe
    ;;
  "72")
    openssl enc -des-cfb -in $f -out $f$fe
    ;;
  "73")
    openssl enc -des-ede-cfb -in $f -out $f$fe
    ;;
  "74")
    openssl enc -des-ede3-cfb -in $f -out $f$fe
    ;;
  "75")
    openssl enc -desx -in $f -out $f$fe
    ;;
  "76")
    openssl enc -rc2-cbc -in $f -out $f$fe
    ;;
  "77")
    openssl enc -rc4 -in $f -out $f$fe
    ;;
  "78")
    openssl enc -seed-cfb -in $f -out $f$fe
    ;;
  "79")
    openssl enc -sm4-cfb -in $f -out $f$fe
    ;;
  *)
  echo Not a valid choice!
  echo Use $cmd
  exit
  ;;
esac

#!/bin/bash

python3 -c "from logos import Logo; Logo('Openssl Decryption');"
sleep 1

read -p "What file do you want to decrypt? " f
read -p "What is the filename you wish to have after decryption? " fl

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
  "6")
    openssl enc -aria-256-cbc -d -in $f > $fl
    ;;
  "7")
    openssl enc -aria-256-ctr -d -in $f > $fl
    ;;
  "8")
    openssl enc -bf -d -in $f > $fl
    ;;
  "9")
    openssl enc -bf-ofb -d -in $f > $fl
    ;;
  "10")
    openssl enc -camellia-192-ecb -d -in $f > $fl
    ;;
  "11")
    openssl enc -cast-cbc -d -in $f > $fl
    ;;
  "12")
    openssl enc -cast5-ofb -d -in $f > $fl
    ;;
  "13")
    openssl enc -des-ecb -d -in $f > $fl
    ;;
  "14")
    openssl enc -des-ede-ofb -d -in $f > $fl
    ;;
  "15")
    openssl enc -des-ede3-ofb -d -in $f > $fl
    ;;
  "16")
    openssl enc -rc2 -d -in $f > $fl
    ;;
  "17")
    openssl enc -rc2-cfb -d -in $f > $fl
    ;;
  "18")
    openssl enc -rc4-40 -d -in $f > $fl
    ;;
  "19")
    openssl enc -seed-ecb -d -in $f > $fl
    ;;
  "20")
    openssl enc -sm4-ctr -d -in $f > $fl
    ;;
  "21")
    openssl enc -aes-128-ecb -d -in $f > $fl
    ;;
  "22")
    openssl enc -aes-256-ecb -d -in $f > $fl
    ;;
  "23")
    openssl enc -aria-128-cfb8 -d -in $f > $fl
    ;;
  "24")
    openssl enc -aria-192-cbc -d -in $f > $fl
    ;;
  "25")
    openssl enc -aria-192-ctr -d -in $f > $fl
    ;;
  "26")
    openssl enc -aria-256-cfb -d -in $f > $fl
    ;;
  "27")
    openssl enc -aria-256-ecb -d -in $f > $fl
    ;;
  "28")
    openssl enc -bf-cbc -d -in $f > $fl
    ;;
  "29")
    openssl enc -camellia-128-cbc -d -in $f > $fl
    ;;
  "30")
    openssl enc -camellia-256-cbc -d -in $f > $fl
    ;;
  "31")
    openssl enc -cast5-cbc -d -in $f > $fl
    ;;
  "32")
    openssl enc -des -d -in $f > $fl
    ;;
  "33")
    openssl enc -des-ede -d -in $f > $fl
    ;;
  "34")
    openssl enc -des-ede3 -d -in $f > $fl
    ;;
  "35")
    openssl enc -des-ofb -d -in $f > $fl
    ;;
  "36")
    openssl enc -rc2-40-cbc -d -in $f > $fl
    ;;
  "37")
    openssl enc -rc2-ecb -d -in $f > $fl
    ;;
  "38")
    openssl enc -seed -d -in $f > $fl
    ;;
  "39")
    openssl enc -seed-ofb -d -in $f > $fl
    ;;
  "40")
    openssl enc -sm4-ecb -d -in $f > $fl
    ;;
  "41")
    openssl enc -aes-192-cbc -d -in $f > $fl
    ;;
  "42")
    openssl enc -aria-128-cbc -d -in $f > $fl
    ;;
  "43")
    openssl enc -aria-128-ctr -d -in $f > $fl
    ;;
  "44")
    openssl enc -aria-192-cfb -d -in $f > $fl
    ;;
  "45")
    openssl enc -aria-192-ecb -d -in $f > $fl
    ;;
  "46")
    openssl enc -aria-256-cfb1 -d -in $f > $fl
    ;;
  "47")
    openssl enc -aria-256-ofb -d -in $f > $fl
    ;;
  "48")
    openssl enc -bf-cfb -d -in $f > $fl
    ;;
  "49")
    openssl enc -camellia-128-ecb -d -in $f > $fl
    ;;
  "50")
    openssl enc -camellia-256-ecb -d -in $f > $fl
    ;;
  "51")
    openssl enc -cast5-cfb -d -in $f > $fl
    ;;
  "52")
    openssl enc -des-cbc -d -in $f > $fl
    ;;
  "53")
    openssl enc -des-ede-cbc -d -in $f > $fl
    ;;
  "54")
    openssl enc -des-ede3-cbc -d -in $f > $fl
    ;;
  "55")
    openssl enc -des3 -d -in $f > $fl
    ;;
  "56")
    openssl enc -rc2-64-cbc -d -in $f > $fl
    ;;
  "57")
    openssl enc -rc2-ofb -d -in $f > $fl
    ;;
  "58")
    openssl enc -seed-cbc -d -in $f > $fl
    ;;
  "59")
    openssl enc -sm4-cbc -d -in $f > $fl
    ;;
  "60")
    openssl enc -sm4-ofb -d -in $f > $fl
    ;;
  "61")
    openssl enc -aes-192-ecb -d -in $f > $fl
    ;;
  "62")
    openssl enc -aria-128-cfb -d -in $f > $fl
    ;;
  "63")
    openssl enc -aria-128-ecb -d -in $f > $fl
    ;;
  "64")
    openssl enc -aria-192-cfb1 -d -in $f > $fl
    ;;
  "65")
    openssl enc -aria-192-ofb -d -in $f > $fl
    ;;
  "66")
    openssl enc -aria-256-cfb8 -d -in $f > $fl
    ;;
  "67")
    openssl enc -base64 -d -in $f > $fl
    ;;
  "68")
    openssl enc -bf-ecb -d -in $f > $fl
    ;;
  "69")
    openssl enc -camellia-192-cbc -d -in $f > $fl
    ;;
  "70")
    openssl enc -cast -d -in $f > $fl
    ;;
  "71")
    openssl enc -cast5-ecb -d -in $f > $fl
    ;;
  "72")
    openssl enc -des-cfb -d -in $f > $fl
    ;;
  "73")
    openssl enc -des-ede-cfb -d -in $f > $fl
    ;;
  "74")
    openssl enc -des-ede3-cfb -d -in $f > $fl
    ;;
  "75")
    openssl enc -desx -d -in $f > $fl
    ;;
  "76")
    openssl enc -rc2-cbc -d -in $f > $fl
    ;;
  "77")
    openssl enc -rc4 -d -in $f > $fl
    ;;
  "78")
    openssl enc -seed-cfb -d -in $f > $fl
    ;;
  "79")
    openssl enc -sm4-cfb -d -in $f > $fl
    ;;
  *)
  echo Not a valid choice!
  echo Use $cmd
  exit
  ;;
esac

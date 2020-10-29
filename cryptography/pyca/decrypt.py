#!/usr/bin/env python3

from cryptography.fernet import Fernet
import sys
sys.path.append(".")
from logos import Logo
import time

Logo('Pyca decryption')
time.sleep(1)

file = input('What is the key? ')
f = open(file, 'rb')
key = f.read()
f.close()

fl = input('What is the encrypted filename? ')
with open(fl, 'rb') as r:
    msg = r.read()

fernet = Fernet(key)
enc = fernet.decrypt(msg)

fll = input('What is the filename you want to save it as? ')
with open(fll, 'wb') as i:
    i.write(enc)

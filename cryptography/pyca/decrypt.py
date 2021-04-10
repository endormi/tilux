#!/usr/bin/env python3

from cryptography.fernet import Fernet
import sys
sys.path.append("./tools")
from logos import Logo
import catch_exception as ce
import time

Logo('Pyca decryption')
time.sleep(1)

file = input('What is the key? ')
ce.__input__(file)

f = open(file, 'rb')
key = f.read()
f.close()

fl = input('What is the encrypted filename? ')
ce.__input__(fl)

with open(fl, 'rb') as r:
    msg = r.read()

fernet = Fernet(key)
enc = fernet.decrypt(msg)

fll = input('What is the filename you want to save it as? ')
ce.__input__(fll)

with open(fll, 'wb') as i:
    i.write(enc)

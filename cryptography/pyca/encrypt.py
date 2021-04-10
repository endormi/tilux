#!/usr/bin/env python3

from cryptography.fernet import Fernet
import sys
sys.path.append("./tools")
from logos import Logo
import catch_exception as ce
import time

Logo('Pyca encryption')
time.sleep(1)

file = input('What is the key? ')
ce.__input__(file)

f = open(file, 'rb')
key = f.read()
f.close()

fl = input('What is the filename? ')
ce.__input__(fl)

with open(fl, 'rb') as r:
    msg = r.read()

fernet = Fernet(key)
enc = fernet.encrypt(msg)

print('\nRemember to add the file extenson you want e.g. .dat.')
fll = input('What is the filename you want to save it as? ')
ce.__input__(fll)

with open(fll, 'wb') as i:
    i.write(enc)

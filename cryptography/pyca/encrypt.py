#!/usr/bin/env python3

from cryptography.fernet import Fernet
import time
import sys

if len(sys.argv) == 2:
    sys.path.append("./tools")
    from logos import Logo
    import catch_exception as ce

    Logo('Pyca encryption')

time.sleep(1)

file = input('What is the key? ')
if len(sys.argv) == 2: ce.__input__(file)

f = open(file, 'rb')
key = f.read()
f.close()

fl = input('What is the filename? ')
if len(sys.argv) == 2: ce.__input__(fl)

with open(fl, 'rb') as r:
    msg = r.read()

fernet = Fernet(key)
enc = fernet.encrypt(msg)

print('\nRemember to add the file extenson you want e.g. .dat.')
fll = input('What is the filename you want to save it as? ')
if len(sys.argv) == 2: ce.__input__(fll)

with open(fll, 'wb') as i:
    i.write(enc)

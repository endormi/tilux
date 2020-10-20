#!/usr/bin/env python3

from cryptography.fernet import Fernet

file = input('What is the key? ')
f = open(file, 'rb')
key = f.read()
f.close()

fl = input('What is the filename? ')
with open(fl, 'rb') as r:
    msg = r.read()

fernet = Fernet(key)
enc = fernet.encrypt(msg)

print('\nRemember to add the file extenson you want e.g. .dat.')
fll = input('What is the filename you want to save it as? ')
with open(fll, 'wb') as i:
    i.write(enc)

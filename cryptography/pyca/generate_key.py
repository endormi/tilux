#!/usr/bin/env python3

from cryptography.fernet import Fernet

import base64
import os
from cryptography.hazmat.backends import default_backend
from cryptography.hazmat.primitives import hashes
from cryptography.hazmat.primitives.kdf.pbkdf2 import PBKDF2HMAC
import sys
sys.path.append("./tools")
from logos import Logo
import catch_exception
import time

Logo('Pyca Generate key')
time.sleep(1)


def pw():
    # Use a password to create a key
    p = input('What is the password you want to use? ')
    password = p.encode()
    salt = os.urandom(16)
    kdf = PBKDF2HMAC(
        algorithm=hashes.SHA256(),
        length=32,
        salt=salt,
        iterations=100000,
        backend=default_backend()
    )
    key = base64.urlsafe_b64encode(kdf.derive(password))
    print(key)
    print('\nRemember to add .key to the end of the file.\nAlso, if you wish to add the file to a different directory\nadd /directory/ before key name.')
    file = input('What is the filename? ')
    f = open(file, 'wb')
    f.write(key)
    f.close()


def main():
    choices = "pw (Uses a password to create a key) & no_pw"
    print("Choices " + choices)
    choose_cmd = input("Type in the command you want to use: ").lower()

    if choose_cmd == "pw":
        pw()
    elif choose_cmd == "no_pw":
        key = Fernet.generate_key()
        print(key)
        print('\nRemember to add .key to the end of the file.\nAlso, if you wish to add the file to a different directory\nadd /directory/ before key name.')
        file = input('What is the filename? ')
        f = open(file, 'wb')
        f.write(key)
        f.close()
    else:
        print("\nNot a valid command!")
        print("Use " + choices)


if __name__ == '__main__':
    main()

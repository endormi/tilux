#!/usr/bin/env python3

import base64
import os
import sys
import time
from cryptography.fernet import Fernet
from cryptography.hazmat.backends import default_backend
from cryptography.hazmat.primitives import hashes
from cryptography.hazmat.primitives.kdf.pbkdf2 import PBKDF2HMAC


def generate_key_with_password():
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
    with open(file, 'wb') as f:
        f.write(key)


def generate_key_without_password():
    key = Fernet.generate_key()
    print(key)
    print('\nRemember to add .key to the end of the file.\nAlso, if you wish to add the file to a different directory\nadd /directory/ before key name.')
    file = input('What is the filename? ')
    with open(file, 'wb') as f:
        f.write(key)


def main():
    choice = "pw (Uses a password to create a key) & no_pw"
    print("Choice: " + choice)
    choose_cmd = input("Type in the command you want to use: ").lower()

    if choose_cmd == "pw":
        generate_key_with_password()
    elif choose_cmd == "no_pw":
        generate_key_without_password()
    else:
        print("Invalid choice!")
        print("Use: " + choice)


if __name__ == '__main__':
    if os.path.isdir('tools'):
        sys.path.append('./tools')
        from logos import Logo

        Logo('Pyca Generate key')

    time.sleep(1)
    main()

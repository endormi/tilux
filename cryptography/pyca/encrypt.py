#!/usr/bin/env python3

import sys
import time
from cryptography.fernet import Fernet


def get_input(prompt):
    if len(sys.argv) == 2:
        import catch_exception as ce
        ce.__input__(prompt)
    return input(prompt)


def main():
    file = get_input('What is the key? ')
    with open(file, 'rb') as f:
        key = f.read()

    fl = get_input('What is the filename? ')
    with open(fl, 'rb') as r:
        msg = r.read()

    fernet = Fernet(key)
    enc = fernet.encrypt(msg)

    print('\nRemember to add the file extension you want, e.g., .dat.')
    fll = get_input('What is the filename you want to save it as? ')
    with open(fll, 'wb') as i:
        i.write(enc)


if __name__ == '__main__':
    if len(sys.argv) == 2:
        sys.path.append("./tools")
        from logos import Logo

        Logo('Pyca encryption')

    time.sleep(1)
    main()

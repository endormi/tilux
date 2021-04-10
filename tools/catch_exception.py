#!/usr/bin/env python3

import signal
from sys import exit


# Catches empty inputs
# optional and _optional are not required parameters
# few files have more than one input
def __input__(choice, optional=None, _optional=None):
    if not choice or not optional or not _optional:
        print("Choice can't be empty!")
        exit()


# Exception for python files
def handler(sig, frame):
    print()
    exit()


signal.signal(signal.SIGINT, handler)

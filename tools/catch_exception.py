#!/usr/bin/env python3

import signal
from sys import exit


# Checks if input is empty
def __input__(choice):
    if not choice:
        print("Choice can't be empty!")
        exit()


# Exception for python files
def handler(sig, frame):
    exit()


signal.signal(signal.SIGINT, handler)

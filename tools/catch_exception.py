#!/usr/bin/env python3

import signal
from sys import exit


# Exception for python files
def handler(sig, frame):
    print()
    exit()


signal.signal(signal.SIGINT, handler)

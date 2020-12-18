#!/usr/bin/env python3

import os
import sys
sys.path.append(".")
from logos import Logo
import time

Logo('FD')
time.sleep(1)


dir = input("Path to directory: ")

if not os.path.exists(dir):
    print("Folder doesn't exist!")
    sys.exit()


file = next(os.walk(dir))[2]
print("\nFound files:",len(file))
dirs = os.popen("find " +dir+ " -mindepth 1 -type d | wc -l").read()
print("Found directories:",int(dirs))

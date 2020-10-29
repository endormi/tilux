#!/usr/bin/env python3

import os
import time
import sys
sys.path.append(".")
from logos import Logo

Logo('Server Pinging')
time.sleep(1)

hostname = input("Domain: ")
response = os.system("ping -c 1 " + hostname)


if response == 0:
    print(hostname + " is up!")
else:
    print(hostname + " is down!")

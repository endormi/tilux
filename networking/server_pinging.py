#!/usr/bin/env python3

import os
import time
import sys
sys.path.append("./tools")
from logos import Logo
import catch_exception

Logo('Server Pinging')
time.sleep(1)

hostname = input("Domain: ")

if hostname == "":
    print("Choice can't be empty!")
    sys.exit()

response = os.system("ping -c 1 " + hostname)


if response == 0:
    print(hostname + " is up!")
else:
    print(hostname + " is down!")

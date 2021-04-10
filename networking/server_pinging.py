#!/usr/bin/env python3

import os
import time
import sys
sys.path.append("./tools")
from logos import Logo
import catch_exception as ce

Logo('Server Pinging')
time.sleep(1)

hostname = input("Domain: ")

ce.__input__(hostname)

response = os.system("ping -c 1 " + hostname)


if response == 0:
    print(hostname + " is up!")
else:
    print(hostname + " is down!")

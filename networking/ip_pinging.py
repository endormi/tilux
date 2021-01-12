#!/usr/bin/env python3

import subprocess
import os
import sys
sys.path.append("./tools")
from logos import Logo
import catch_exception
import time

Logo('IP Pinging')
time.sleep(1)

file = open('/tmp/ip_ping_results.txt', 'w')

print("NOTE:")
print("While this script is legal, this still can be used maliciously.")
print("Don't use this code maliciously!")
print("This is meant for good purposes, DO NOT use this maliciously. DO NOT be a criminal.\n")
print("Only PING IPs that belong to you and the people you have gained permission from!\n")

net = input('Enter network e.g. [192.168.1.1]: ')[0:-1]
start = input('Starting IP: ')
end = input('Ending IP: ')
print()


for i in range(int(start), int(end)):
    try:
        subprocess.check_call(['ping', '-c', '1', net + str(i)], stdout=file, stderr=file)
    except (subprocess.CalledProcessError, OSError):
        print(str(net) + str(i) + " Down!")
    else:
        print(str(net) + str(i) + " Up!")

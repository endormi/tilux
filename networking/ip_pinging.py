#!/usr/bin/env python3

import subprocess
import time
import sys

if len(sys.argv) == 2:
    sys.path.append("./tools")
    from logos import Logo
    import catch_exception as ce

    Logo('IP Pinging')

time.sleep(1)

file = open('/tmp/ip_ping_results.txt', 'w')

print("NOTE:")
print("While this script is legal, this still can be used with malicious intent.")
print("Don't use this code with malicious intent!")
print("This is meant for good purposes, DO NOT use this with malicious intent. DO NOT be a criminal.\n")
print("Only PING IPs that belong to you and the people you have gained permission from!\n")

net = input('Enter network e.g. [192.168.1.1]: ')[0:-1]
if len(sys.argv) == 2: ce.__input__(net)

start = input('Starting IP: ')
if len(sys.argv) == 2: ce.__input__(start)

end = input('Ending IP: ')
if len(sys.argv) == 2: ce.__input__(end)

print()

for i in range(int(start), int(end)):
    try:
        subprocess.check_call(['ping', '-c', '1', net + str(i)], stdout=file, stderr=file)
    except (subprocess.CalledProcessError, OSError):
        print(str(net) + str(i) + " Down!")
    else:
        print(str(net) + str(i) + " Up!")

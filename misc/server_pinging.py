import os
import time


os.system("python ./logos.py")
time.sleep(1)
hostname = raw_input("Domain: ")
response = os.system("ping -c 1 " + hostname)


if response == 0:
    print(hostname + " is up!")
else:
    print(hostname + " is down!")

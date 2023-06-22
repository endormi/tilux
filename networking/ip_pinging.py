#!/usr/bin/env python3

import subprocess
import sys
import time


def get_input(prompt):
    if len(sys.argv) == 2:
        return ce.__input__(input(prompt))
    else:
        return input(prompt)


def main():
    file = open('/tmp/ip_ping_results.txt', 'w')

    print("NOTE:")
    print("While this script is legal, this still can be used with malicious intent.")
    print("Don't use this code with malicious intent!")
    print("This is meant for good purposes, DO NOT use this with malicious intent. DO NOT be a criminal.\n")
    print("Only PING IPs that belong to you and the people you have gained permission from!\n")

    net = get_input('Enter network e.g. [192.168.1.1]: ')[0:-1]
    start = get_input('Starting IP: ')
    end = get_input('Ending IP: ')

    print()

    for i in range(int(start), int(end)):
        try:
            subprocess.check_call(['ping', '-c', '1', net + str(i)], stdout=file, stderr=file)
        except (subprocess.CalledProcessError, OSError):
            print(str(net) + str(i) + " Down!")
        else:
            print(str(net) + str(i) + " Up!")


if __name__ == '__main__':
    if len(sys.argv) == 2:
        import tools.catch_exception as ce
        from tools.logos import Logo

        Logo('IP Pinging')

    time.sleep(1)
    main()

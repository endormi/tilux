#!/usr/bin/env python3

import os
import sys
import time


def get_input(prompt):
    if len(sys.argv) == 2:
        return ce.__input__(input(prompt))
    else:
        return input(prompt)


def main():
    hostname = get_input("Domain: ")
    response = os.system("ping -c 1 " + hostname)

    if response == 0:
        print(hostname + " is up!")
    else:
        print(hostname + " is down!")


if __name__ == '__main__':
    if len(sys.argv) == 2:
        import tools.catch_exception as ce
        from tools.logos import Logo

        Logo('Server Pinging')

    time.sleep(1)
    main()

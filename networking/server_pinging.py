#!/usr/bin/env python3

import os
import sys
import time


def get_input(prompt):
    if len(sys.argv) == 2:
        import catch_exception as ce
        ce.__input__(prompt)
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
        sys.path.append("./tools")
        from logos import Logo

        Logo('Server Pinging')

    time.sleep(1)
    main()

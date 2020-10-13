#!/usr/bin/python3

from pyfiglet import figlet_format
from termcolor import cprint


font='slant'
c='green'


class Logo:
    def __init__(self, name):
        self.name = cprint(figlet_format(name, font=font), c)


if __name__ == "__main__":
    """
    This is just a quick fix.
    Once I have more python files, this will be updated.
    """
    Logo('Server Pinging')

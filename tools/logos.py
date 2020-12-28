#!/usr/bin/env python3

from pyfiglet import figlet_format
from termcolor import cprint


font='slant'
c='green'


class Logo:
    def __init__(self, name):
        self.name = cprint(figlet_format(name, font=font), c)

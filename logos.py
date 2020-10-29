#!/usr/bin/env python3

from pyfiglet import figlet_format
from termcolor import cprint


font='slant'
c='green'


class Logo:
    def __init__(self, name):
        self.name = cprint(figlet_format(name, font=font), c)


class ac:
    black = "\033[30m"
    white = "\033[37m"
    blue = "\033[94m"
    brown = "\033[0;33m"
    red = "\033[91m"
    green = "\033[92m"
    yellow = "\033[93m"
    magenta = "\033[95m"
    cyan = "\033[96m"

    light_white = "\033[1;37m"
    light_grey = "\033[0;37m"
    dark_grey = "\033[1;30m"
    light_cyan = "\033[1;36m"
    dark_cyan = "\033[36m"
    light_magenta = "\033[1;35m"
    dark_magenta = "\033[35m"
    light_blue = "\033[1;34m"
    light_red = "\033[1;31m"
    light_green = "\033[1;32m"
    light_yellow = "\033[33;1m"


    hightlight_black = "\033[40m"
    hightlight_white = "\033[47m"
    hightlight_blue = "\033[44m"
    hightlight_red = "\033[41m"
    hightlight_green = "\033[42m"
    hightlight_yellow = "\033[43m"
    hightlight_magenta = "\033[45m"
    hightlight_cyan = "\033[46m"


    blink = "\033[5m"
    fast_blink = "\033[6m"
    bold = "\033[1m"
    underline = "\033[4m"
    italic = '\033[3m'
    crossed = "\033[9m"
    faint = "\033[2m"
    reverse = "\033[7m"


    default = "\033[0m"

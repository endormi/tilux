#!/usr/bin/env python3

import os
import yaml
from pyfiglet import figlet_format
from termcolor import cprint


class Logo:
    def __init__(self, name):
        try:
            logos_tool_path = os.path.dirname(os.path.abspath(__file__))
            custom_settings_file_path = os.path.join(logos_tool_path, os.pardir, '.custom_settings.yaml')

            with open(custom_settings_file_path, 'r') as custom_settings_file:
                config = yaml.safe_load(custom_settings_file).get('custom', {})
                logo_color = config.get('logo_color', 'red')
                logo_font = config.get('logo_font', 'slant')

        except (FileNotFoundError, yaml.YAMLError):
            logo_color = 'red'
            logo_font = 'slant'

        self.name = cprint(figlet_format(name, font=logo_font), logo_color)

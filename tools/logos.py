#!/usr/bin/env python3

import os
import pyfiglet
from csmpy import ColorSchemeManager


class Logo:
    def __init__(self, name):
        default_values = {
            'logo_color': 'red',
            'logo_font': 'slant',
            'text': 'white',
        }

        # Get path to the custom settings YAML file
        logos_tool_path = os.path.dirname(os.path.abspath(__file__))
        custom_settings_file_path = os.path.join(logos_tool_path, os.pardir, '.custom_settings.yaml')

        # Load custom colors from the YAML file
        custom_colors = ColorSchemeManager.load_custom_yaml_file(custom_settings_file_path)
        all_colors = ColorSchemeManager.load_colors(default_values, custom_colors)

        # Get colors for logo_color, logo_font, and text
        logo_color = all_colors['logo_color']
        logo_font = all_colors['logo_font']
        text_color = all_colors['text']

        styled_text = pyfiglet.figlet_format(name, font=logo_font)
        print(f"{logo_color} {styled_text} {text_color}")

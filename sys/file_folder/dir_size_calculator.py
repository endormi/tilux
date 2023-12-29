#!/usr/bin/env python3

import os
import sys
import time


def calculate_directory_size(directory):
    total_size = 0
    for root, dirs, files in os.walk(directory):
        for file in files:
            file_path = os.path.join(root, file)
            if os.path.isfile(file_path):
                total_size += os.path.getsize(file_path)
    return total_size


def convert(total_size, unit='bytes'):
    unit_conversion = {'bytes': 1, 'kilobytes': 1024, 'megabytes': 1024 ** 2, 'gigabytes': 1024 ** 3}
    return total_size / unit_conversion[unit]


def format_size(size, unit):
    return "{:.2f} {}".format(convert(size, unit), unit)


def print_result(total_size):
    print("\nTotal directory size:")
    print("- Bytes: {} bytes".format(total_size))
    print("- Kilobytes: {}".format(format_size(total_size, 'kilobytes')))
    print("- Megabytes: {}".format(format_size(total_size, 'megabytes')))
    print("- Gigabytes: {}".format(format_size(total_size, 'gigabytes')))


def main():
    directory = input("Enter the directory to calculate its size (default is the current directory): ") or '.'

    if os.path.exists(directory):
        total_size = calculate_directory_size(directory)
        print_result(total_size)
    else:
        print(f"{directory} doesn't exist.")


if __name__ == '__main__':
    if len(sys.argv) == 2:
        import tools.catch_exception
        from tools.logos import Logo

        Logo('Dir size calculator')

    time.sleep(1)
    main()

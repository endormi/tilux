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


def main():
    directory = input("Enter the directory to calculate its size (default is current directory): ") or '.'

    if os.path.exists(directory):
        print(f"Total directory size: {calculate_directory_size(directory)} bytes")
    else:
        print(f"{directory} doesn't exist.")


if __name__ == '__main__':
    if len(sys.argv) == 2:
        import tools.catch_exception
        from tools.logos import Logo

        Logo('Dir size calculator')

    time.sleep(1)
    main()

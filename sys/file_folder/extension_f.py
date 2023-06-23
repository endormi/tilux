#!/usr/bin/env python3

import os
import sys
import time


def check_files_with_extension(directory, extension=''):
    exclude_dirs = [
        '.bundle', '.cache', '.config', '.eggs', '.env', '.git', '.github', '.idea', '.mypy_cache', '.tox', '.venv',
        '$RECYCLE.BIN', '__pycache__', '_Build', '_Pvt_Extensions', '_UpgradeReport_Files', 'AppData',
        'ClientBin', 'cover', 'coverage', 'develop-eggs', 'dist', 'doc', 'docs/_build', 'docs/build', 'eggs', 'ENV',
        'env', 'env.bak', 'GeneratedArtifacts', 'Generated_Code', 'htmlcov', 'lib64', 'lib/bundler/man', 'local',
        'logs', 'modulesbin', 'node_modules', 'pkg', 'profile_default', 'public', 'publish', 'sdist', 'share/python-wheels',
        'spec/reports', 'target', 'tempbin', 'test/tmp', 'test/version_tmp', 'tmp', 'var', 'vendor/bundle', 'venv',
        'venv.bak'
    ]

    found_extension = False

    for root, dirs, files in os.walk(directory):
        for exclude_dir in exclude_dirs:
            if exclude_dir in dirs:
                dirs.remove(exclude_dir)
        for file in files:
            if file.endswith(extension):
                file_path = os.path.join(root, file)
                with open(file_path, 'r'):
                    found_extension = True
                    print(f"Found file: {file_path}")
                    time.sleep(.2)

    if not found_extension:
        print(f"Extension '{extension}' files not found.")


def main():
    directory = input("Enter the directory to search (default is current directory, leave blank for default): ") or '.'

    if not os.path.isdir(directory):
        print(f"{directory} doesn't exist.")
        return

    extension = input("Enter the file extension to check: ")
    if len(sys.argv) == 2: ce.__input__(extension)
    print()

    check_files_with_extension(directory, extension)


if __name__ == '__main__':
    if len(sys.argv) == 2:
        import tools.catch_exception as ce
        from tools.logos import Logo

        Logo('File extension')

    time.sleep(1)
    main()

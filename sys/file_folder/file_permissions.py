#!/usr/bin/env python3

import os
import sys
import time


def check_file_permissions(directory):
    exclude_dirs = [
        '.bundle', '.cache', '.config', '.eggs', '.env', '.git', '.github', '.idea', '.mypy_cache', '.tox', '.venv',
        '$RECYCLE.BIN', '__pycache__', '_Build', '_Pvt_Extensions', '_UpgradeReport_Files', 'AppData',
        'ClientBin', 'cover', 'coverage', 'develop-eggs', 'dist', 'doc', 'docs/_build', 'docs/build', 'eggs', 'ENV',
        'env', 'env.bak', 'GeneratedArtifacts', 'Generated_Code', 'htmlcov', 'lib64', 'lib/bundler/man', 'local',
        'logs', 'modulesbin', 'node_modules', 'pkg', 'profile_default', 'public', 'publish', 'sdist', 'share/python-wheels',
        'spec/reports', 'target', 'tempbin', 'test/tmp', 'test/version_tmp', 'tmp', 'var', 'vendor/bundle', 'venv',
        'venv.bak'
    ]

    for root, dirs, files in os.walk(directory):
        for exclude_dir in exclude_dirs:
            if exclude_dir in dirs:
                dirs.remove(exclude_dir)
        for file in files:
            file_path = os.path.join(root, file)
            permissions = oct(os.stat(file_path).st_mode & 0o777)
            time.sleep(.2)
            print(f"File: {file_path}, Permissions: {permissions}")


def main():
    directory = input("Enter the directory to search (default is current directory, leave blank for default): ") or '.'

    if not os.path.isdir(directory):
        print(f"{directory} doesn't exist.")
        return

    print()
    check_file_permissions(directory)


if __name__ == '__main__':
    if len(sys.argv) == 2:
        import tools.catch_exception
        from tools.logos import Logo

        Logo('File permissions')

    time.sleep(1)
    main()

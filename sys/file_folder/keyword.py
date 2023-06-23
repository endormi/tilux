#!/usr/bin/env python3

import os
import sys
import time


def find_files_with_keyword(directory='.', keyword=''):
    exclude_dirs = [
        '.bundle', '.cache', '.config', '.eggs', '.env', '.git', '.idea', '.mypy_cache', '.tox', '.venv',
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
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                file_contents = f.read()
                if keyword in file_contents:
                    print(f"Found keyword '{keyword}' in file: {file_path}")
                    time.sleep(.2)


def main():
    directory = input("Enter the directory to search (default is current directory): ")
    keyword = input("Enter the keyword or phrase to search for: ")
    if len(sys.argv) == 2: ce.__input__(keyword)
    print()

    if not directory:
        directory = '.'

    find_files_with_keyword(directory, keyword)


if __name__ == '__main__':
    if len(sys.argv) == 2:
        import tools.catch_exception as ce
        from tools.logos import Logo

        Logo('Files by Keyword')

    time.sleep(1)
    main()

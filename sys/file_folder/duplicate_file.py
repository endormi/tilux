#!/usr/bin/env python3

import os
import sys
import time
import hashlib


def find_duplicate_files(directory):
    file_hashes = {}
    duplicates = []

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
            with open(file_path, 'rb') as f:
                file_hash = hashlib.md5(f.read()).hexdigest()
                if file_hash in file_hashes:
                    duplicates.append((file_path, file_hashes[file_hash]))
                else:
                    file_hashes[file_hash] = file_path

    return duplicates


def main():
    directory = input("Enter the directory to search (default is current directory, leave blank for default): ") or '.'

    if not os.path.isdir(directory):
        print(f"{directory} doesn't exist.")
        return

    duplicate_files = find_duplicate_files(directory)
    if duplicate_files:
        print("\nDuplicate files found:")
        for file1, file2 in duplicate_files:
            time.sleep(.2)
            print(f"{file1} - {file2}")
    else:
        print("No duplicate files found.")


if __name__ == '__main__':
    if len(sys.argv) == 2:
        import tools.catch_exception
        from tools.logos import Logo

        Logo('Duplicate files')

    time.sleep(1)
    main()

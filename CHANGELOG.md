# Changelog

## 1.3.0

- Add:
  - New contribution guidelines
  - PACKAGES.md file to docs/source
  - Sphinx and alias target to Makefile (runs scripts from the scripts folder)
  - Clang-format to pre-commit
  - Year workflow to change copyright year
  - version_update script
  - RTD badge
  - .readthedocs.yaml
  - Myst-parser to requirements
  - Specify which packages will be installed

- Update:
  - Project description
  - copy_content script
  - Use var value for grep check
  - Use ruby version 2.6 to fix rubocop-ast error in rubocop workflow

- Remove:
  - Positional arguments from build
  - Docs workflow
  - clang-format from Makefile

## 1.2.1

- Add:
  - xdg-utils to build and package list
  - Flake8 and ruby-validate to pre-commit
  - Mention about other packages not included in build
  - Schedule CodeQL to run every night at midnight

- Update:
  - Start refactoring
  - Rubocop configuration
  - chmodx

- Remove:
  - Flake8 workflow and badge

## 1.2.0

- Add:
  - list_of_files script
  - Formatter flags variable

- Update:
  - Build text
  - Flake8 exclude items
  - Reconfigure clang-format and reformat files also include header files
  - Don't specify bundler version

- Remove:
  - .editorconfig

## 1.1.75

- Add:
  - all_releases and latest_release script
  - Docs workflow

- Update:
  - Use new theme for docs and a custom.css
  - Convert installation documentation to markdown
  - Status badges
  - Separate compile workflow

## 1.1.5

- Add:
  - Clang-format check (use clang-format-10) to CI and scripts folder
  - Sphinx documentation
  - copy_content script to copy docs/source/commands.md to GUIDE.md
  - build_sphinx and run_sphinx_locally script
  - Pre-commit workflow

- Update:
  - Increase stale issue to 45 days
  - Issue templates to use yml syntax

## 1.1.0

- Add:
  - open website and default web browser script
  - cryptography/README.md
  - Single core process time and multi-core process time script
  - Disclaimer about GPG
  - Clear terminal after groff installation

- Update:
  - Separate run_check script and call all in run_all_checks
  - Change certain arguments
  - Makefile
  - workflows

- Fix:
  - start_dcompose script

## 1.0.75

- Add:
  - cmd_search script
  - Manpage and PACKAGES.md

- Update:
  - Move docs/README.md to GUIDE.md
  - Move clean script from sys/other to sys/file_folder
  - Issue templates
  - Run GitHub actions on push to master and PR

- Remove:
  - Extra space from prompt

## 1.0.5

- Add:
  - Pre_commit and run_check to scripts folder
  - How to run downloaded script

- Update:
  - Move system scripts into separate methods and folders
  - Docs

## 1.0.5-br

- Update:
  - Alias to check for alias [name] instead of just [name]
  - Comment out GPG scripts from build

- Remove:
  - Revert input? method that didn't work
  - Print from python handler

## 1.0.1

- Add:
  - Export for ruby gems when building

- Update:
  - Make continue if statement better
  - Output in a invalid choice

- Remove:
  - Unused variable that gives an error
  - Unused GPG key from docs

## 1.0.0

- Add:
  - input? method to reduce repeatability

- Update:
  - Check for glxinfo
  - Use update for everything instead of upgrade

- Fix:
  - add_alias script

## 0.5.0

- Add:
  - Install graphicsmagick pkg

- Update:
  - Move and clear pkg installation before logo
  - Docs

- Fix:
  - Build script to do necessary configs
  - Pre-commit check in rubocop

- Remove:
  - Pkg that is included

## 0.4.5

- Add:
  - Gnome terminal profile dump and load
  - The ability to install python pkgs with virtualenv

- Update:
  - Flake8 and rubocop

- Fix:
  - [-Wimplicit-function-declaration] warning

## 0.4.1

- Add:
  - img (convert_img, img_info, resize_img and rotate_img) and convert doc to pdf scripts
  - rubocop-code-scan workflow
  - Enable running scripts in any folder

- Update:
  - Display system scripts on the same line

- Fix:
  - Running Openssl by using arguments
  - Different title when running interactively and using arguments

## 0.4.1-br

- Add:
  - Keep consistency with run option choices

- Update:
  - Openssl choices

- Fix:
  - Typos

## 0.4.0

- Add:
  - Run option text directly to tilux
  - Handler for C files
  - Pre-commit and CodeQL
  - README.md for tools and scripts
  - Badges
  - Bring back Openssl

- Update:
  - Move info.rb into separate scripts
  - Move helpful scripts inside scripts folder
  - Rubygems
  - Contribution guidelines

- Remove:
  - Numbers from system scripts

## 0.3.5

- Add:
  - Empty input catching for python
  - Empty input catching for shell
  - Create new workflow

- Fix:
  - GPG command error

## 0.3.1

- Add:
  - Git config and force reboot
  - Empty input catching to the rest of the inputs
  - Header file

- Update:
  - Move all chmods to one specific file

- Remove:
  - CHECKLIST.md

## 0.3.0

- Add:
  - GitHub actions (compile, docker and stale)
  - Configuration files (Clang format, flake8, rubocop)
  - Scripts for running tilux better etc. (add_alias, resize_term)
  - More tools (ansi-colors for ruby, error handling and ruby functions)
  - sys/add_alias, sys/resize_terminal and sys/space

- Update:
  - Convert tilux to ruby
  - Rename usage script to build
  - Build script
  - Installation and guide
  - Convert scripts to ruby
  - Format code

- Remove:
  - Openssl (for now)

## 0.2.5

- Add:
  - Filesize and spec script
  - Proc script to check how long a script takes to run
  - Tools (logos.py etc.)
  - Prompt
  - Badges
  - Docs

- Update:
  - Convert more scripts from shell to ruby
  - Installation

- Fix:
  - Dockerfile and CI

## 0.2.1

- Add:
  - sys/del and sys/fd
  - system scripts (bf, clean, last_updated, parse_date and root)
  - Validation to check ruby is installed and Gemfile.lock exists

- Update:
  - Convert sys/exists script to ruby from shell
  - Convert info script to ruby from shells

## 0.2.0

- Add:
  - Cryptography
  - The ability to run the script if given 2 arguments in cryptography

- Update:
  - Use python3 to explicitly run the script
  - Dockerize the script

- Fix:
  - Logos for python scripts

## 0.1.5

- Add:
  - IP pinging, ansi-colors, logos.py & aclrs.py
  - The ability to run files using args even if second argument isn't given

- Fix:
  - Functionality

## 0.1.1

- Add:
  - Help, server pinging and exists
  - Misc.
  - GitHub templates

## 0.1.0

- Add:
  - Hostname and IP address
  - The option to use args

## 0.0.1
- Initial release

- Add:
  - CPU and memory monitoring

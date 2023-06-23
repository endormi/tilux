# Changelog

## 1.5.0

- Add:
  - Support for absolute PATH

  - New scripts:

    - Add project to PATH (located in the scripts folder)
    - Keyword search
    - File extension filtering
    - Directory size
    - Duplicate file
    - File permission check

  - Image validator class for image scripts
  - Scripts/utils folder for enhancing code reusability
  - get_user_input method for user inputs
  - resize_terminal method to reduce repetition
  - check_and_install_package method
  - execute_command method for executing commands
  - Tests
  - RSpec to GitHub Workflow

- Update:
  - Restructured codebase using modules and classes
  - Enhance code portability and reliability with silent I/O redirection
  - Organize download scripts by moving them to a dedicated folder
  - Color methods from String class into a Color module
  - Method names for better clarity and readability
  - Move tools scripts dedicated to tilux into a folder called tilux
  - Utility names for improved clarity and structure
  - Header utility name for improved clarity
  - Variable names for better readability
  - Pull the latest changes from submodule
  - Documentation
  - Use v2 for upload-sarif codeql action

- Remove:
  - Quotes from bash variables since it's not necessary and keeps consistency

## 1.4.5

- Add:
  - Bmrk submodule and target
  - Bashcii submodule

- Update:
  - Pull version from .version file
  - Install with virtual environment by default

- Remove:
  - WIP message
  - chmodx and mentions of chmodx
  - Outdated comment

## 1.4.15

- Add:
  - Pre-commit Makefile target
  - Groff Makefile target
  - tools/ path to make workflow
  - Display current version on scripts/version_update

- Update:
  - Refactor tilux and tools/options
  - Command list

## 1.4.0

- Add:
  - Light red color

- Update:
  - Change colors to match my system
  - GitHub action to only run if specific paths are modified

## 1.3.75

- Add:
  - List active processes script
  - Download specific release script
  - Option to run sphinx locally in target docs and instructions to run docs locally
  - Updated date and time to last updated file script
  - New lines to single core and multi-core script
  - BASH_VERSION to prv script
  - Bundler-audit, fasterer, forbid-binary, git-check, reek and markdownlint pre-commit hook

- Update:
  - Move distro commands to kernel_version
  - Requirements

- Fix:
  - Download latest script
  - Requirements

- Remove:
  - Open website and gpu script

## 1.3.5

- Add:
  - download_scripts to download scripts I find to be the most useful
  - Instruction for downloading multiple scripts
  - copy_content to docs target
  - make docs to make workflow

- Update:
  - Use clang-format instead of clang-format-10
  - Display choices better visually in openssl scripts

- Fix:
  - catch_empty command not found
  - Unary operator expected warning
  - pyca/generate_key to work without being in tilux

- Remove:
  - run_sphinx_locally from docs target

## 1.3.15

- Add:
  - Print build version with box
  - Docs command in contribution guidelines
  - clang-format check in Makefile

- Update:
  - Optimize bash scripts
  - sphinx target to docs
  - use var value for grep check

- Remove:
  - clang-format script

## 1.3.1

- Add:
  - download_latest_release script (another option to download this tool)
  - Sphinx to requirements
  - Mention some of the optional packages

- Update:
  - Format CHANGELOG

- Fix:
  - Link to issue (in contribution guidelines)

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

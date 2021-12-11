# Changelog

## 1.1.5
- Add clang-format check (use clang-format-10) to CI and scripts folder
- Add sphinx documentation
- Add copy_content script to copy docs/source/commands.md to GUIDE.md
- Add build_sphinx and run_sphinx_locally script
- Add pre-commit workflow
- Increase stale issue to 45 days
- Update issue templates to use yml syntax

## 1.1.0
- Add open website and default web browser script
- Add cryptography/README.md
- Add single core process time and multi-core process time script
- Separate run_check script and call all in run_all_checks
- Fix start_dcompose script
- Change certain arguments
- Update Makefile
- Update workflows
- Clear terminal after groff installation
- Disclaimer about GPG

## 1.0.75
- Add cmd_search script
- Add manpage and PACKAGES.md
- Move docs/README.md to GUIDE.md
- Move clean script from sys/other to sys/file_folder
- Update issue templates
- Update to run GitHub actions on push to master and PR
- Remove extra space from prompt

## 1.0.5
- Move system scripts into separate methods and folders
- Add pre_commit and run_check to scripts folder
- Add how to run downloaded script
- Update docs

## 1.0.5-br
- Revert input? method that didn't work
- Update alias to check for alias [name] instead of just [name]
- Remove print from python handler
- Comment out GPG scripts from build

## 1.0.1
- Export for ruby gems when building
- Make continue if statement better
- Update output in a invalid choice
- Remove unused variable that gives an error
- Remove unused GPG key from docs

## 1.0.0
- Fix add alias script
- Add input? method to reduce repeatability
- Check for glxinfo
- Use update for everything instead of upgrade

## 0.5.0
- Fix build script to do necessary configs
- Install graphicsmagick pkg
- Fix pre-commit check in rubocop
- Update docs
- Remove pkg that is included
- Move and clear pkg installation before logo

## 0.4.5
- Add gnome terminal profile dump and load
- Add the ability to install python pkgs with virtualenv
- Fix [-Wimplicit-function-declaration] warning
- Update flake8 and rubocop

## 0.4.1
- Enable running scripts in any folder
- Add img (convert_img, img_info, resize_img and rotate_img) and convert doc to pdf scripts
- Fix: Running Openssl by using arguments
- Fix: Different title when running interactively and using arguments
- Display system scripts on the same line
- Add rubocop-code-scan workflow

## 0.4.1-br
- Fix: Typos
- Update Openssl choices
- Keep consistency with run option choices

## 0.4.0
- Bring back Openssl
- Move info.rb into separate scripts
- Move helpful scripts inside scripts folder
- Add run option text directly to tilux
- Add handler for C files
- Add pre-commit and CodeQL
- Remove numbers from system scripts
- Update rubygems
- Update contribution guidelines
- Add README.md for tools and scripts
- Add badges

## 0.3.5
- Add empty input catching for python
- Add empty input catching for shell
- Fix: GPG command error
- Create new workflow

## 0.3.1
- Add git config and force reboot
- Add empty input catching to the rest of the inputs
- Add header file
- Move all chmods to one specific file
- Delete CHECKLIST.md

## 0.3.0
- Convert tilux to ruby
- Add GitHub actions (compile, docker and stale)
- Add configuration files (Clang format, flake8, rubocop)
- Rename usage script to build and update the script
- Update installation and guide
- Add scripts for running tilux better etc. (add_alias, resize_term)
- Add more tools (ansi-colors for ruby, error handling and ruby functions)
- Remove openssl (for now)
- Add sys/add_alias, sys/resize_terminal and sys/space
- Convert scripts to ruby
- Format code

## 0.2.5
- Add filesize and spec script
- Add proc script to check how long a script takes to run
- Add tools (logos.py etc.)
- Add prompt
- Convert more scripts from shell to ruby
- Fix: Dockerfile and CI
- Update installation
- Add badges
- Add docs

## 0.2.1
- Add sys/del and sys/fd
- Add system scripts (bf, clean, last_updated, parse_date and root)
- Convert sys/exists script to ruby from shell
- Convert info script to ruby from shells
- Validate ruby is installed and Gemfile.lock exists

## 0.2.0
- Fix: logos for python scripts
- Use python3 to explicitly run the script
- Dockerize the script
- Add cryptography
- Add the ability to run the script if given 2 arguments in cryptography

## 0.1.5
- Add IP pinging, ansi-colors, logos.py & aclrs.py
- Fix: Functionality and add the ability to run files using args even if second argument isn't given

## 0.1.1
- Add help, server pinging and exists
- Add misc.
- Add GitHub templates

## 0.1.0
- Add hostname and IP address
- Add the option to use args

## 0.0.1
- Initial release
- Added CPU and memory monitoring

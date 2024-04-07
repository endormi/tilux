# Scripts

Useful scripts, specifically to be ran for `tilux`.

## Includes

### Folder:

**NOTE**: These utility scripts are designed for the Tilux project and assume that
you are running them from the Tilux folder using the `bash scripts/...` command.
The idea behind these scripts is to reduce repeatability. They contain shared code
that is used across multiple scripts.

- `utils`:
  - `bash_aliases` - script shares common
  Bash `alias` and `PATH` settings, also suggests installing
  `bashpal` package if it's not already installed

  - `check_and_install_package` - utility script for checking the availability of
  a package and installing it if necessary

### Scripts:

- `add_alias` - Adds `tilux` alias to `bash_aliases`
- `add_alias_venv` - Adds `virtualenv` alias (`tvenv`) to `bash_aliases`
- `add_project_to_path` - Enables running `tilux` project code from any folder by
adding it to the system's `PATH`
- `all_releases` - Display all releases
- `build_sphinx` - Build documentation
- `copy_content` - Copies `GUIDE.md` and `PACKAGES.md` to `docs/source/`
- `groff` - Runs the manpage
- `install_req` - Installs required packages
- `latest_release` - Display latest release
- `open_repo` - Opens tilux repository
- `resize_term` - Resizes terminal
- `run_sphinx_locally` - Run sphinx documentation locally
- `start_dcompose` - Starts docker-compose
- `version_update` - Updates files with the current version,
adds a new version heading to `CHANGELOG.md`, and creates a new
branch if on the master branch.

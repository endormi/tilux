# Scripts

Useful scripts, specifically to be ran for `tilux`.

## Includes

### Folder:

**NOTE**: This utility is designed for the `Tilux` project and assumes that you are
running the script from the `Tilux` folder using the `bash scripts/...` command.
It is specifically created for the `add_alias`, `add_alias_venv`,
and `add_project_to_path` scripts. Additionally, it includes a check that automatically
navigates out of the scripts folder if executed from the folder.

- `utils/bash_aliases` - script shares common
Bash `alias` and `PATH` settings

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
- `list_of_files` - Display list of files in each language, because there are many
- `open_repo` - Opens tilux repository
- `resize_term` - Resizes terminal
- `run_sphinx_locally` - Run sphinx documentation locally
- `start_dcompose` - Starts docker-compose
- `version_update` - Updates all files that have the current version
and adds a new version heading for `CHANGELOG.md`

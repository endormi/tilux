# Introduction

```python
ooooooooooooo ooooo ooooo        ooooo     ooo ooooooo  ooooo
8    888    8  888   888          888       8    8888    d8
     888       888   888          888       8     Y888..8P
     888       888   888          888       8       8888
     888       888   888          888       8     .8PY888.
     888       888   888       o   88.    .8     d8    888b
    o888o     o888o o888ooooood8     YbodP     o888o  o88888o
```

![v](https://img.shields.io/badge/tilux-v.1.5.1-blue)
![docker-compose-action-CI](https://github.com/endormi/tilux/workflows/docker-compose-action-CI/badge.svg?branch=master)
![ruby](https://github.com/endormi/tilux/actions/workflows/ruby.yml/badge.svg)
![make](https://github.com/endormi/tilux/actions/workflows/make.yml/badge.svg)
![docs](https://readthedocs.org/projects/tilux/badge/?version=latest)
![CodeQL](https://github.com/endormi/tilux/actions/workflows/codeql-analysis.yml/badge.svg?branch=master)
[![License](https://img.shields.io/github/license/endormi/tilux)](LICENSE)

## What is Tilux?

Tilux is a command-line interface (CLI) tool that provides a
collection of useful and concise scripts.

If you want to see a certain script added, open up a new [issue](https://github.com/endormi/tilux/issues/new/choose)
or make a pull request.

If you prefer not to install the entire tool, you can download individual scripts.
For instructions on how to do this, please refer to the [guide](GUIDE.md#download-script-or-scripts).

> I created this project with the intention of learning, which is why
I have utilized multiple programming languages instead of just one.

## Usage

### Downloading the Project

There are three options available for downloading the project:

> These options allow you to obtain the Tilux project based on your preferred method.

Clone the project using `Git`:

```bash
git clone https://github.com/endormi/tilux.git
```

Download the latest release:

> This option will also install the `jq` package if it is not already installed.

```bash
wget -O - https://raw.githubusercontent.com/endormi/tilux/master/download/download_latest_release | bash
```

Download a specific release:

> This option will install both the `jq` and `fzf`
packages if they are not already installed.

```bash
wget -O - https://raw.githubusercontent.com/endormi/tilux/master/download/download_specific_release | bash
```

### Changing to the Project Directory

After downloading the project, `CD` to the corresponding folder:

```
# Either
cd tilux

# or
cd tilux-v.(release)

# Depending on how you downloaded tilux
```

### Installing Dependencies

To install the required dependencies, including Python packages using `virtualenv`
enabled by default) and other necessary dependencies, use the following command:

```bash
bash build
```

If you prefer not to use `virtualenv` and install Python packages globally,
you can run the `build` script without the virtual environment (not recommended):

```bash
bash build no_venv
```

Please note that these following steps are specific to setting up the
virtual environment and aliases for the Tilux project.

After the build process, activate the virtual environment:

```bash
source ./venv/bin/activate
```

It is recommended to add the `venv` script to your aliases for easier access.

Run the `add_alias_venv`  script located in the scripts folder:

```bash
bash scripts/add_alias_venv
```

You can now use the `tvenv` command to activate the virtual environment:

```bash
tvenv
```

To deactivate the virtual environment, use the following command:

```bash
deactivate
```

> The virtual environment setup ends with the `deactivate` command.

### Running Tilux

You can now use the `tilux` command:

```bash
./tilux
```

You can also pass arguments to the `tilux` command. For example:

```bash
./tilux 2 -c
```

To view the available command-line options and help information for `tilux`,
use the `--help` flag:

```bash
./tilux --help
```

### Using `tilux` without Specifying the Full Path

If you only want to use the `tilux` command without specifying the full path,
you have two options.

To run `tilux` and its scripts using the more convenient method,
you can use the following command:

```bash
bash scripts/add_project_to_path
```

Using `add_project_to_path` does not change the current directory,
allowing you to run `tilux` from any location without
needing to change directories.

Alternatively, you can use the following command:

```bash
bash scripts/add_alias
```

When running this way, the `tilux` command will change the
current directory to the `tilux` folder.

Then, simply run:

```bash
tilux
```

> **NOTE**: `tilux` is not required to run scripts individually.
For more information, refer to [this section](GUIDE.md#run-from-any-folder)
in the guide.

### Platform Compatibility

The project has been manually [tested](TESTED_ON.md) and verified only on
Debian-based distributions.

Feel free to try Tilux on other Linux distributions.
Pull requests for adding support for different distros are highly appreciated.

### Additional Information

To explore additional commands, learn how to run scripts from any folder, use Docker,
or download scripts, please refer to the [guide](GUIDE.md).

For running the documentation locally, use the following command:

```bash
make docs run=1
```

The `make docs` command builds the documentation, and `run=1` runs it locally.

To generate `man` pages, run:

```bash
make groff
```

To use `Pyca`, you need to generate a key first:

```bash
python3 cryptography/pyca/generate_key.py
```

You can find other useful scripts [here](scripts) that are meant
specifically for Tilux.

## License

The source code is released under the [MIT License](LICENSE).

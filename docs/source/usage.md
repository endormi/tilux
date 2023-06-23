# Usage

## Downloading the Project

There are three options available for downloading the project:

These options allow you to obtain the Tilux project
based on your preferred method.

Clone the project using `Git`:

```
git clone https://github.com/endormi/tilux.git
```

Download the latest release:

> This option will also install the `jq` package
if it is not already installed.

```
wget -O - https://raw.githubusercontent.com/endormi/tilux/master/download/download_latest_release | bash
```

Download a specific release:

> This option will install both the `jq` and `fzf` packages
if they are not already installed.

```
wget -O - https://raw.githubusercontent.com/endormi/tilux/master/download/download_specific_release | bash
```

## Changing to the Project Directory

After downloading the project, `CD` to the corresponding folder:

```
# Either
cd tilux

# or
cd tilux-v.(release)

# Depending on how you downloaded tilux
```

## Installing Dependencies

To install the required dependencies, including Python packages using `virtualenv`
(enabled by default) and other necessary dependencies, use the following command:

```
bash build
```

If you prefer not to use `virtualenv` and install Python packages globally,
you can run the `build` script without the virtual environment (not recommended):

```
bash build no_venv
```

Please note that these following steps are specific to setting up
the virtual environment and aliases for the Tilux project.

After the build process, activate the virtual environment:

```
source ./venv/bin/activate
```

It is recommended to add the `venv` script to your aliases for easier access.

Run the `add_alias_venv`  script located in the scripts folder:

```
bash scripts/add_alias_venv
```

You can now use the `tvenv` command to activate the virtual environment:

```
tvenv
```

To deactivate the virtual environment, use the following command:

```
deactivate
```

> The virtual environment setup ends with the `deactivate` command.

## Running Tilux

You can now use the `tilux` command:

```
./tilux
```

You can also pass arguments to the `tilux` command. For example:

```
./tilux 2 -c
```

To view the available command-line options and help information for `tilux`,
use the `--help` flag:

```
./tilux --help
```

## Using `tilux` without Specifying the Full Path

If you only want to use the `tilux` command without specifying the full path,
you have two options.

To run `tilux` and its scripts using the more convenient method,
you can use the following command:

```
bash scripts/add_project_to_path
```

Using `add_project_to_path` does not change the current directory,
allowing you to run `tilux` from any location without needing to
change directories.

Alternatively, you can use the following command:

```
bash scripts/add_alias
```

When running this way, the `tilux` command will change the
current directory to the `tilux` folder.

Then, simply run:

```
tilux
```

**NOTE**: `tilux` is not required to run scripts individually.
For more information, refer to #run-from-any-folder from
the commands section.

## Additional Information

For running the documentation locally, use the following command:

```
make docs run=1
```

The `make docs` command builds the documentation, and `run=1` runs it locally.

To generate `man` pages, run:

```
make groff
```

To use `Pyca`, you need to generate a key first:

```
python3 cryptography/pyca/generate_key.py
```
